// priority: 0

StartupEvents.registry('block', event => {
//4.14:
  //event.create('rock_salt_bricks').displayName('Salt Bricks').textureAll('gamma:block/rock_salt_bricks').soundType('nether_bricks').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  event.create('moonstone').displayName('Moonstone').textureAll('gamma:block/moonstone').soundType('lodestone').hardness(4).resistance(3).tagBlock('minecraft:mineable/pickaxe').tagBlock('minecraft:needs_diamond_tool').requiresTool(true)

//3.9:
  event.create('bismuth_block').displayName('Block of Bismuth').textureAll('gamma:block/bismuth_block').soundType('metal').hardness(3).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)

//3.8:
  event.create('suspicious_block').displayName('Suspicious Block').textureAll('gamma:block/debug2').soundType('amethyst').hardness(3).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)

//3.7:
  event.create('lava_lamp').displayName('Lava Lamp').textureAll('gamma:block/lava_lamp').soundType('lantern').hardness(2).resistance(2).lightLevel(1.0)

//3.6:
  event.create('mysterious_cobblestone').displayName('Mysterious Mossy Cobblestone').textureAll('gamma:block/mysterious_cobblestone').soundType('stone').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)

//Other:
  event.create('chiseled_gloomy_tiles').displayName('Chiseled Gloomy Tiles').textureAll('gamma:block/chiseled_gloomy_tiles').soundType('nether_bricks').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  event.create('gloomy_tiles').displayName('Gloomy Tiles').textureAll('gamma:block/gloomy_tiles').soundType('nether_bricks').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  event.create('gloomy_tiles_slab', 'slab').displayName('Gloomy Tiles Slab').textureAll('gamma:block/gloomy_tiles').soundType('nether_bricks').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  event.create('gloomy_tiles_stairs', 'stairs').displayName('Gloomy Tiles Stairs').textureAll('gamma:block/gloomy_tiles').soundType('nether_bricks').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  event.create('gloomy_tiles_wall', 'wall').displayName('Gloomy Tiles Wall').textureAll('gamma:block/gloomy_tiles').soundType('nether_bricks').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  event.create('rock_salt').displayName('Rock Salt').textureAll('gamma:block/rock_salt').soundType('basalt').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
  event.create('mysterious_stone').displayName('Placeholderite').model('gamma:block/mysterious_stone').soundType('amethyst').hardness(2).resistance(2).tagBlock('minecraft:mineable/pickaxe').requiresTool(true)
})