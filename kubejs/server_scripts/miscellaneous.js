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

  if (event.item.id === 'kubejs:honey_cookie') {
    let player = event.player
    player.heal(1.0)
  }

  if (event.item.id === 'kubejs:glazed_steak') {
    let player = event.player
    player.heal(2.0)
  }
})

/*
//Giant Chickens:
ItemEvents.entityInteracted(event => {
  const player = event.player
  const target = event.target
  const item = event.item

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
  } catch (e) { }

  event.cancel()
})

ItemEvents.entityInteracted(event => {
  const player = event.player
  const target = event.target
  const item = event.item

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
*/

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

/*
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
    } catch (e) { }
  }

  else {
    block.popItem('kubejs:moonstone')
  }
})
*/

/* You can set an entity on fire, for example!
ItemEvents.pickedUp("kubejs:silver_nugget", event => {
    event.entity.setSecondsOnFire(20)
})
*/

//Cool Stuff:
ItemEvents.pickedUp("kubejs:silver_nugget", event => {
  event.level.playSound(null, event.entity.x, event.entity.y, event.entity.z, 'minecraft:block.note_block.banjo', 'players', 0.7, 1.4 + Math.random() * 0.2)
})

ItemEvents.pickedUp("kubejs:green_apple", event => {
  event.level.playSound(null, event.entity.x, event.entity.y, event.entity.z, 'minecraft:block.note_block.xylophone', 'players', 0.7, 1.4 + Math.random() * 0.2)
})

//Colored Stuff Recipes:
ServerEvents.recipes(event => {

  const allcolors = ['white', 'orange', 'magenta', 'light_blue', 'yellow', 'lime', 'pink', 'gray', 'light_gray', 'cyan', 'purple', 'blue', 'brown', 'green', 'red', 'black']

  allcolors.forEach(color => {
    const brick = 'kubejs:' + color + '_bricks'
    const glowstick = 'spelunkery:' + color + '_glowstick'

    event.shaped(
      '8x ' + glowstick,
      ['AAA', 'ABA', 'AAA'],
      { A: 'spelunkery:glowstick', B: color + '_dye' }
    ).id('gamma:' + color + '_glowstick')
  })
})

/*
minecraft:block.note_block.basedrum
minecraft:block.note_block.bit
minecraft:block.note_block.xylophone
*/