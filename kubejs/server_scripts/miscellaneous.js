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
BlockEvents.rightClicked('hardcore_torches:lit_torch', event => {
  const { player, item, hand, block } = event

  if (hand !== 'MAIN_HAND') return
  if (!item || item.id !== 'minecraft:glowstone_dust') return

  block.set('minecraft:torch')

  if (!player.isCreative()) item.shrink(1)

  player.level.playSound(
    null,
    block.pos.x, block.pos.y, block.pos.z,
    'chalk:item.glow_applied',
    'blocks',
    1.0,
    1.0
  )

  event.cancel()
})

BlockEvents.rightClicked('hardcore_torches:lit_wall_torch', event => {
  const { player, item, hand, block } = event

  if (hand !== 'MAIN_HAND') return
  if (!item || item.id !== 'minecraft:glowstone_dust') return

  var facing = block.properties.facing
  block.set('minecraft:wall_torch', { facing: facing })

  if (!player.isCreative()) item.shrink(1)

  player.level.playSound(
    null,
    block.pos.x, block.pos.y, block.pos.z,
    'chalk:item.glow_applied',
    'blocks',
    1.0,
    1.0
  )

  event.cancel()
})

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

//Safely Harvest Honey:
BlockEvents.rightClicked(['minecraft:beehive', 'minecraft:bee_nest'], event => {
  const player = event.player
  if (!player) return

  if (!player.server) return

  const stack = event.item ?? player.mainHandItem ?? player.offHandItem
  if (!stack) return
  const id = String(stack.id || '')

  if (id !== 'minecraft:glass_bottle') return

  if (!player.hasEffect('alexsmobs:poison_resistance')) return

  const props = event.block?.properties || {}
  if (props.honey_level !== '5') return

  try {
    grantAdvancement(player, 'minecraft:husbandry/safely_harvest_honey')
  } catch (e) {}
})
