// priority: 0

StartupEvents.registry('block', event => {

  const allcolors = ['white', 'orange', 'magenta', 'light_blue', 'yellow', 'lime', 'pink', 'gray', 'light_gray', 'cyan', 'purple', 'blue', 'brown', 'green', 'red', 'black']

  allcolors.forEach(color => {
    const prettyName = color.split('_').map(w => w.charAt(0).toUpperCase() + w.slice(1)).join(' ')

    //Colored Bricks:
    event.create(color + '_bricks')
      .displayName(prettyName + ' Bricks')
      .textureAll('gamma:block/bricks/' + color + '_bricks')
      .soundType('stone')
      .hardness(2)
      .resistance(6)
      .tagBlock('minecraft:mineable/pickaxe')
      .requiresTool(true)

    //Colored Brick Slabs:
    event.create(color + '_bricks_slab', 'slab')
      .displayName(prettyName + ' Brick Slab')
      .textureAll('gamma:block/bricks/' + color + '_bricks')
      .soundType('stone')
      .hardness(2)
      .resistance(6)
      .tagBlock('minecraft:mineable/pickaxe')
      .requiresTool(true)

    //Colored Brick Stairs:
    event.create(color + '_bricks_stairs', 'stairs')
      .displayName(prettyName + ' Brick Stairs')
      .textureAll('gamma:block/bricks/' + color + '_bricks')
      .soundType('stone')
      .hardness(2)
      .resistance(6)
      .tagBlock('minecraft:mineable/pickaxe')
      .requiresTool(true)

    //Colored Brick Walls:
    event.create(color + '_bricks_wall', 'wall')
      .displayName(prettyName + ' Brick Wall')
      .textureAll('gamma:block/bricks/' + color + '_bricks')
      .soundType('stone')
      .hardness(2)
      .resistance(6)
      .tagBlock('minecraft:mineable/pickaxe')
      .requiresTool(true)
    /*
    //Colored Mud Bricks:
    event.create(color + '_mud_bricks')
      .displayName(prettyName + ' Mud Bricks')
      .textureAll('gamma:block/mud_bricks/' + color + '_mud_bricks')
      .soundType('mud_bricks')
      .hardness(1.5)
      .resistance(3)
      .tagBlock('minecraft:mineable/pickaxe')
      .requiresTool(true)

    //Colored Mud Brick Slab:
    event.create(color + '_mud_bricks_slab', 'slab')
      .displayName(prettyName + ' Mud Brick Slab')
      .textureAll('gamma:block/mud_bricks/' + color + '_mud_bricks')
      .soundType('mud_bricks')
      .hardness(1.5)
      .resistance(3)
      .tagBlock('minecraft:mineable/pickaxe')
      .requiresTool(true)

    //Colored Mud Brick Stairs:
    event.create(color + '_mud_bricks_stairs', 'stairs')
      .displayName(prettyName + ' Mud Brick Stairs')
      .textureAll('gamma:block/mud_bricks/' + color + '_mud_bricks')
      .soundType('mud_bricks')
      .hardness(1.5)
      .resistance(3)
      .tagBlock('minecraft:mineable/pickaxe')
      .requiresTool(true)

    //Colored Mud Brick Wall:
    event.create(color + '_mud_bricks_wall', 'wall')
      .displayName(prettyName + ' Mud Brick Wall')
      .textureAll('gamma:block/mud_bricks/' + color + '_mud_bricks')
      .soundType('mud_bricks')
      .hardness(1.5)
      .resistance(3)
      .tagBlock('minecraft:mineable/pickaxe')
      .requiresTool(true)

    //Colored Large Bricks:
    event.create(color + '_large_bricks')
      .displayName(prettyName + ' Large Bricks')
      .textureAll('gamma:block/large_bricks/' + color + '_large_bricks')
      .soundType('stone')
      .hardness(2)
      .resistance(6)
      .tagBlock('minecraft:mineable/pickaxe')
      .requiresTool(true)

    event.create(color + '_large_bricks_slab', 'slab')
      .displayName(prettyName + ' Large Brick Slab')
      .textureAll('gamma:block/large_bricks/' + color + '_large_bricks')
      .soundType('stone')
      .hardness(2)
      .resistance(6)
      .tagBlock('minecraft:mineable/pickaxe')
      .requiresTool(true)

    event.create(color + '_large_bricks_stairs', 'stairs')
      .displayName(prettyName + ' Large Brick Stairs')
      .textureAll('gamma:block/large_bricks/' + color + '_large_bricks')
      .soundType('stone')
      .hardness(2)
      .resistance(6)
      .tagBlock('minecraft:mineable/pickaxe')
      .requiresTool(true)

    event.create(color + '_large_bricks_wall', 'wall')
      .displayName(prettyName + ' Large Brick Wall')
      .textureAll('gamma:block/large_bricks/' + color + '_large_bricks')
      .soundType('stone')
      .hardness(2)
      .resistance(6)
      .tagBlock('minecraft:mineable/pickaxe')
      .requiresTool(true)
    */
  })

  event.create('cement', 'falling').displayName('Cement').textureAll('gamma:block/cement').soundType('sand').hardness(4).resistance(3).tagBlock('minecraft:mineable/shovel').tagBlock('minecraft:sand').requiresTool(true)
  event.create('moonstone').displayName('§bMoonstone').textureAll('gamma:block/moonstone').soundType('lodestone').hardness(4).resistance(3).tagBlock('minecraft:mineable/pickaxe').tagBlock('minecraft:needs_diamond_tool').requiresTool(true)
  event.create('bismuth_block').displayName('Block of Bismuth').textureAll('gamma:block/bismuth_block').soundType('metal').hardness(3).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  event.create('suspicious_block').displayName('§bSuspicious Block').textureAll('gamma:block/debug2').soundType('amethyst').hardness(3).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  event.create('lava_lamp').displayName('Lava Lamp').textureAll('gamma:block/lava_lamp').soundType('lantern').hardness(2).resistance(2).lightLevel(1.0)
  event.create('mysterious_cobblestone').displayName('§dMysterious Mossy Cobblestone').textureAll('gamma:block/mysterious_cobblestone').soundType('stone').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  //event.create('chiseled_gloomy_tiles').displayName('Chiseled Gloomy Tiles').textureAll('gamma:block/chiseled_gloomy_tiles').soundType('nether_bricks').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  event.create('gloomy_tiles').displayName('§eGloomy Tiles').textureAll('gamma:block/gloomy_tiles').soundType('nether_bricks').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  event.create('gloomy_tiles_slab', 'slab').displayName('§eGloomy Tiles Slab').textureAll('gamma:block/gloomy_tiles').soundType('nether_bricks').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  event.create('gloomy_tiles_stairs', 'stairs').displayName('§eGloomy Tiles Stairs').textureAll('gamma:block/gloomy_tiles').soundType('nether_bricks').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  event.create('gloomy_tiles_wall', 'wall').displayName('§eGloomy Tiles Wall').textureAll('gamma:block/gloomy_tiles').soundType('nether_bricks').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  event.create('rock_salt').displayName('Rock Salt').textureAll('gamma:block/rock_salt').soundType('basalt').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  event.create('mysterious_stone').displayName('§dPlaceholderite').model('gamma:block/mysterious_stone').soundType('amethyst').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
})