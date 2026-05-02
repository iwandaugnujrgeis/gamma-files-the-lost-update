//Honey Healing Effects:
ItemEvents.foodEaten(event => {
  if (event.item.id === 'kubejs:honeyed_apple') {
    let player = event.player
    player.heal(2.0)
  }

  if (event.item.id === 'minecraft:honey_bottle') {
    let player = event.player
    player.heal(4.0)
  }

  if (event.item.id === 'farmersdelight:honey_cookie') {
    let player = event.player
    player.heal(1.0)
  }

  if (event.item.id === 'kubejs:glazed_steak') {
    let player = event.player
    player.heal(2.0)
  }
})

//Shear Bears:
function grantAdvancement(player, advancementId) {
  if (typeof server !== 'undefined') {
    server.runCommandSilent(`advancement grant ${player.name} only ${advancementId}`)
  } else if (player.getServer) {
    const srv = player.getServer()
    if (srv) {
      const ign = player.getName().getString()
      srv.runCommandSilent(`advancement grant ${ign} only ${advancementId}`)
    }
  }
}

function entitySnipSnip(event, entityType, toolId, outputId, dropMin, dropMax, maxSnips, advancementId) {
  const player = event.player
  const bear   = event.target
  const item   = event.item

  if (bear.type !== entityType || item.id !== toolId) return

  if (bear.persistentData?.sheared == null) bear.persistentData.sheared = 1
  else bear.persistentData.sheared++

  if (bear.persistentData.sheared >= maxSnips) return

  // Drop Fur:
  const count = Math.floor(Math.random() * (dropMax - dropMin + 1)) + dropMin
  const { x, y, z } = bear
  const ent = event.level.createEntity('item')
  ent.x = x; ent.y = y + 0.5; ent.z = z
  ent.item = outputId; ent.item.count = count
  ent.motionY = 0.32; ent.spawn()

  // Play Snip Sound:
  event.player.level.playSound(null, x, y, z,
    'entity.sheep.shear', 'neutral', 1.0, 1.0)

  // Grant the Advancement:
  grantAdvancement(player, advancementId)

  // Damage the Shears:
  player.damageHeldItem()
}

ItemEvents.entityInteracted(event => {
  entitySnipSnip(
    event,
    'alexsmobs:grizzly_bear',      // Entity
    'minecraft:shears',            // Tool
    'alexsmobs:bear_fur',          // Drop
    1, 3,                          // Min/max
    2,                             // Only First Snip Works
    'gamma:husbandry/bear_hair_snip' // Advancement ID!
  )
})

/* Replaced by Coraline Systems!
//Score:
BlockEvents.broken(event => {
    const player = event.player;
    if (!player || player.isCreative()) return
    player.giveExperiencePoints(1)
})

BlockEvents.placed(event => {
    const player = event.player;
    if (!player || player.isCreative()) return
    player.giveExperiencePoints(1)
})
*/

//Bismuth Advancement:
BlockEvents.broken(event => {
  if (!event.player) return
  const player = event.player

  const tool = event.item ?? player.mainHandItem ?? player.offHandItem
  if (!tool) return

  if (event.block.id !== 'minecraft:grass_block') return
  if (tool.id !== 'kubejs:bismuth_pickaxe') return

  try {
    grantAdvancement(player, 'gamma:nether/lawn_care_specialist')
  } catch (e) {}
})

//Gold Tools Advancement:
BlockEvents.broken(event => {
  if (!event.player) return
  const player = event.player

  const tool = event.item ?? player.mainHandItem ?? player.offHandItem
  if (!tool) return

  if (event.block.id !== 'minecraft:coal_ore') return
  if (tool.id !== 'minecraft:golden_pickaxe') return

  try {
    grantAdvancement(player, 'gamma:story/duping_mechanism')
  } catch (e) {}
})

//Giant Chickens:
ItemEvents.entityInteracted(event => {
  const player = event.player
  const target = event.target
  const item   = event.item

  if (target.type !== 'minecraft:chicken') return
  if (item.id !== 'alexsmobs:bear_dust') return

  // Consume Dust
  item.shrink(1)

  const x = target.x
  const y = target.y
  const z = target.z

  // Remove Chicken
  target.kill()

  // Spawn Giant
  const giant = event.level.createEntity('minecraft:giant')
  giant.x = x
  giant.y = y
  giant.z = z
  giant.spawn()

  player.level.playSound(
    null,
    x, y, z,
    'entity.generic.explode',
    'neutral',
    0.9,
    1.1
  )

  try {
    grantAdvancement(player, 'gamma:detour/dont_feed_birds')
  } catch (e) {}

  event.cancel()
})

ItemEvents.entityInteracted(event => {
  const player = event.player
  const target = event.target
  const item   = event.item

  if (target.type !== 'minecraft:salmon') return
  if (item.id !== 'alexsmobs:bear_dust') return

  item.shrink(1)

  const x = target.x
  const y = target.y
  const z = target.z

  target.kill()

  const giant = event.level.createEntity('alexsmobs:sea_bear')
  giant.x = x
  giant.y = y
  giant.z = z
  giant.spawn()

  player.level.playSound(
    null,
    x, y, z,
    'entity.generic.explode',
    'neutral',
    0.9,
    1.1
  )

  event.cancel()
})

//Bed Advancement Skylands:
BlockEvents.rightClicked(event => {
  const { player, block, level } = event

  if (level.isClientSide()) return
  if (level.dimension != 'rediscovered:skylands') return

  if (
    !block.hasTag('minecraft:beds') &&
    !block.hasTag('upgrade_aquatic:bedrolls')
  ) return

  try {
    grantAdvancement(player, 'gamma:skylands/dont_touch_beds')
  } catch (e) {}
})

//Spawner Sounds:
BlockEvents.broken(event => {
  if (event.block.id !== 'minecraft:spawner') return

  const x = event.block.x
  const y = event.block.y
  const z = event.block.z

  event.player.level.playSound(
    null,
    x, y, z,
    'gamma:suspicious.soul_steal',
    'neutral',
    0.9 + Math.random() * 0.1,
    0.7 + Math.random() * 0.4
  )
})

//Thank you for @fearthera1n for suggesting this script! 
//Inspired by DB3K!
EntityEvents.checkSpawn(event => {
  if (event.type == 'SPAWNER') {
    event.level.playSound(
      null, 
      event.entity.x, 
      event.entity.y, 
      event.entity.z, 
      'gamma:suspicious.soul_steal', 
      'players', 
      0.9 + Math.random() * 0.1,
      0.7 + Math.random() * 0.4
    )
  }
})

//Moonstone:
BlockEvents.broken('kubejs:moonstone', event => {
  const { level, block, server, player } = event

  if (player.isCreative()) return
  if (player.mainHandItem.id !== 'minecraft:diamond_pickaxe') return

  let timeInDay = level.dayTime() % 24000
  let moonPhase = level.moonPhase
  let isNight = timeInDay >= 12500 && timeInDay <= 23500 && !server.getOverworld().isDay()

  if (moonPhase === 0 && isNight) {
    block.popItem('coraline_systems:dimensional_shard')
    level.spawnParticles('supplementaries:sparkle', true, block.x + 0.5, block.y + 0.5, block.z + 0.5, 0.5, 0.5, 0.5, 3, 0.2)
    
    level.playSound(
      null,
      block.x, 
      block.y, 
      block.z,
      'chalk:ambient.glowing',
      'neutral',
      1.0,
      0.7 + Math.random() * 0.2
    )

    try {
      grantAdvancement(player, 'gamma:story/mine_moonstone')
    } catch (e) {}
  }

  else {
      block.popItem('kubejs:moonstone')
    }
})

//Silver Nugget Shenanigans:

/* You can set an entity on fire, for example!
ItemEvents.pickedUp("galosphere:silver_nugget", event => {
    event.entity.setSecondsOnFire(20)
})
*/

ItemEvents.pickedUp("galosphere:silver_nugget", event => {
    // We know this part works for you
    // event.entity.setSecondsOnFire(20)

    // Use the level to play the sound. 
    // This tells the server to broadcast the sound to everyone at the player's location.
    event.level.playSound(null, event.entity.x, event.entity.y, event.entity.z, 'minecraft:block.note_block.banjo', 'players', 0.7, 1.4 + Math.random() * 0.2)
})

/*
minecraft:block.note_block.basedrum
minecraft:block.note_block.bit
minecraft:block.note_block.xylophone
*/

//This makes the game lag a lot!
//EntityEvents.spawned(event => {
  //const { entity, level } = event
//
  //if (entity.living) {
//
    //let nearestPlayer = level.getNearestPlayer(entity.x, entity.y, entity.z, 48, false)
//
    //if (nearestPlayer) {
      //level.spawnParticles(
        //'minecraft:cloud', 
        //true, 
        //entity.x, 
        //entity.y + (entity.bbHeight / 2), 
        //entity.z, 
        //0.2, 0.2, 0.2, 
        //10, 
        //0.05
      //)
//
      //event.level.playSound(
        //null, 
        //event.entity.x, 
        //event.entity.y, 
        //event.entity.z, 
        //'gamma:suspicious.soul_steal', 
        //'block', 
        //0.6, 
        //1.1
      //)
    //}
  //}
//})
