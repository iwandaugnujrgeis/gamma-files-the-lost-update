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
// Uses the Player Object to Silently Run the /advancement Command:
function grantAdvancement(player, advancementId) {
  // Try via event.server if Available:
  if (typeof server !== 'undefined') {
    server.runCommandSilent(`advancement grant ${player.name} only ${advancementId}`)
  } else if (player.getServer) {
    // Fallback: use player.getServer()
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

  // Only Our Target:
  if (bear.type !== entityType || item.id !== toolId) return

  // Track Uses:
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
    1, 1,                          // Min/max
    2,                             // Only First Snip Works
    'gamma:husbandry/bear_hair_snip' // Advancement ID!
  )
})

//Glowstone Torch Transformation:
//BlockEvents.rightClicked('hardcore_torches:lit_torch', event => {
  //const { player, item, hand, block } = event
//
  //if (hand !== 'MAIN_HAND') return
  //if (!item || item.id !== 'minecraft:glowstone_dust') return
//
  //block.set('minecraft:torch')
//
  //if (!player.isCreative()) item.shrink(1)
//
  //player.level.playSound(
    //null,
    //block.pos.x, block.pos.y, block.pos.z,
    //'chalk:item.glow_applied',
    //'blocks',
    //1.0,
    //1.0
  //)
//
  //event.cancel()
//})
//
//BlockEvents.rightClicked('hardcore_torches:lit_wall_torch', event => {
  //const { player, item, hand, block } = event
//
  //if (hand !== 'MAIN_HAND') return
  //if (!item || item.id !== 'minecraft:glowstone_dust') return
//
  //var facing = block.properties.facing
  //block.set('minecraft:wall_torch', { facing: facing })
//
  //if (!player.isCreative()) item.shrink(1)
//
  //player.level.playSound(
    //null,
    //block.pos.x, block.pos.y, block.pos.z,
    //'chalk:item.glow_applied',
    //'blocks',
    //1.0,
    //1.0
  //)
//
  //event.cancel()
//})

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

BlockEvents.rightClicked(event => {
  const { player, block, level } = event

  // Server-side only
  if (level.isClientSide()) return

  // Dimension check
  if (level.dimension != 'rediscovered:skylands') return

  // Bed check via tag
  if (!block.hasTag('minecraft:beds')) return

  try {
    grantAdvancement(player, 'gamma:skylands/dont_touch_beds')
  } catch (e) {}
})

