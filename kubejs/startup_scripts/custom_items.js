// priority: 1

StartupEvents.registry('item', event => {

  // Food items

  event.create('walnut')
    .texture('gamma:item/walnut')
    .maxStackSize(8)
    .displayName('Walnut')
    .food(food => food.hunger(2).saturation(0.5))

  event.create('pumpkin_slice')
    .texture('gamma:item/pumpkin_slice')
    .maxStackSize(8)
    .displayName('Pumpkin Slice')
    .food(food => food.hunger(2).saturation(0.5))

  event.create('milk_bottle_placeholder')
    .texture('gamma:item/milk_bottle_placeholder')
    .maxStackSize(8)
    .displayName('PLACEHOLDER')
    .food(food => food.hunger(2).saturation(0.5))

  event.create('fried_egg')
    .texture('gamma:item/fried_egg')
    .maxStackSize(8)
    .displayName('Fried Egg')
    .food(food => food.hunger(3).saturation(0.5))

  event.create('cake_slice')
    .texture('gamma:item/cake_slice')
    .maxStackSize(8)
    .displayName('Cake Slice')
    .food(food => food.hunger(2).saturation(0.5))

  event.create('sweet_berry_cookie')
    .texture('gamma:item/sweet_berry_cookie')
    .maxStackSize(16)
    .displayName('Sweet Berry Cookie')
    .food(food => food.hunger(2).saturation(0.5))

  event.create('honey_cookie')
    .texture('gamma:item/honey_cookie')
    .maxStackSize(16)
    .displayName('Honey Cookie')
    .food(food => food.hunger(2).saturation(0.5))

  event.create('green_apple')
    .texture('gamma:item/green_apple')
    .maxStackSize(8)
    .displayName('Green Apple')
    .food(food => food
      .hunger(3).saturation(0.5)
      .effect('alexsmobs:fear', 100, 0, 100)
      .alwaysEdible(true)
    )

  event.create('muffin')
    .texture('gamma:item/muffin')
    .maxStackSize(8)
    .displayName('Muffin')
    .food(food => food
      .hunger(4).saturation(0.5)
      .effect('levitation', 100, 0, 100)
      .alwaysEdible(true)
    )

  event.create('glazed_steak')
    .texture('gamma:item/glazed_steak')
    .maxStackSize(8)
    .displayName('Glazed Steak')
    .food(food => food.hunger(8).saturation(0.5))

  event.create('mango')
    .texture('gamma:item/mango')
    .maxStackSize(8)
    .displayName('Mango')
    .food(food => food.hunger(3).saturation(0.5))

  event.create('omelette')
    .texture('gamma:item/omelette')
    .maxStackSize(8)
    .displayName('Omelette')
    .food(food => food.hunger(6).saturation(0.5))

  event.create('waffle')
    .texture('gamma:item/waffle')
    .maxStackSize(8)
    .displayName('Waffle')
    .food(food => food.hunger(5).saturation(0.5))

  event.create('banana_bread')
    .texture('gamma:item/banana_bread')
    .maxStackSize(8)
    .displayName('Banana Bread')
    .food(food => food.hunger(6).saturation(0.5))

  event.create('butter')
    .texture('gamma:item/butter')
    .maxStackSize(8)
    .displayName('Butter')
    .food(food => food.hunger(2).saturation(0.5))

  event.create('marshmallow')
    .texture('gamma:item/marshmallow')
    .maxStackSize(8)
    .displayName('Marshmallow')
    .food(food => food.hunger(3).saturation(0.5))

  event.create('golden_potato')
    .texture('gamma:item/golden_potato')
    .maxStackSize(8)
    .displayName('Golden Potato')
    .food(food => food.hunger(2).saturation(0.5))

  event.create('honeyed_apple')
    .texture('gamma:item/honeyed_apple')
    .maxStackSize(8)
    .displayName('Honeyed Apple')
    .food(food => food.hunger(3).saturation(0.5))

  event.create('bar_of_chocolate')
    .texture('gamma:item/bar_of_chocolate')
    .maxStackSize(8)
    .displayName('Bar of Chocolate')
    .food(food => food.hunger(2).saturation(0.5))

  // Ingredient/material items

  event.create('raw_silver')
    .texture('gamma:item/raw_silver')
    .maxStackSize(64)
    .displayName('Raw Silver')
    .tag('forge:raw_materials/silver')
    .tag('forge:raw_materials')

  event.create('silver_ingot')
    .texture('gamma:item/silver_ingot')
    .maxStackSize(64)
    .displayName('Silver Ingot')
    .tag('forge:ingots/silver')
    .tag('forge:ingots')

  event.create('silver_nugget')
    .texture('gamma:item/silver_nugget')
    .maxStackSize(64)
    .displayName('Silver Nugget')
    .tag('forge:nuggets/silver')
    .tag('forge:nuggets')

  event.create('cured_membrane')
    .texture('gamma:item/cured_membrane')
    .maxStackSize(16)
    .displayName('Cured Membrane')

  event.create('cobalt')
    .texture('gamma:item/cobalt')
    .maxStackSize(64)
    .displayName('Cobalt')

  event.create('glow_paste')
    .texture('gamma:item/glow_paste')
    .maxStackSize(64)
    .displayName('Glow Paste')

  event.create('salt')
    .texture('gamma:item/salt')
    .maxStackSize(16)
    .displayName('Salt')

  event.create('wheat_flour')
    .texture('gamma:item/wheat_flour')
    .maxStackSize(16)
    .displayName('Wheat Flour')

  event.create('dough')
    .texture('gamma:item/dough')
    .maxStackSize(16)
    .displayName('Dough')

  event.create('halite_crystal')
    .texture('gamma:item/halite_crystal')
    .maxStackSize(16)
    .displayName('Halite Crystal')

  event.create('gear')
    .texture('gamma:item/gear')
    .maxStackSize(64)
    .displayName('Gear')

  event.create('sharp_tooth')
    .texture('gamma:item/sharp_tooth')
    .maxStackSize(64)
    .displayName('Sharp Tooth')

  // Music Discs

  event.create('music_disc_dog', 'music_disc')
    .song('gamma:music_disc.dog', 146)
    .texture('gamma:item/record/dog')
    .maxStackSize(1)
    .displayName('Music Disc')
    .tag('music_discs')
    .tag('creeper_drop_music_discs')

  event.create('music_disc_eleven', 'music_disc')
    .song('gamma:music_disc.eleven', 72)
    .texture('gamma:item/record/eleven')
    .maxStackSize(1)
    .displayName('Music Disc')
    .tag('music_discs')

  event.create('music_disc_droopy2', 'music_disc')
    .song('gamma:music_disc.droopy2', 97)
    .texture('gamma:item/record/droopy2')
    .maxStackSize(1)
    .displayName('Music Disc')
    .tag('music_discs')
    .tag('creeper_drop_music_discs')

  event.create('music_disc_death', 'music_disc')
    .song('gamma:music_disc.death', 41)
    .texture('gamma:item/record/death')
    .maxStackSize(1)
    .displayName('Music Disc')
    .tag('music_discs')

  event.create('music_disc_acid', 'music_disc')
    .song('gamma:music_disc.acid', 159)
    .texture('gamma:item/record/acid')
    .maxStackSize(1)
    .displayName('Music Disc')
    .tag('music_discs')
    .tag('creeper_drop_music_discs')

  event.create('music_disc_reveal', 'music_disc')
    .song('gamma:music_disc.reveal', 108)
    .texture('gamma:item/record/reveal')
    .maxStackSize(1)
    .displayName('Music Disc')
    .tag('music_discs')
    .tag('creeper_drop_music_discs')

  // Tools

  event.create('cobalt_sword', 'sword')
    .tier('cobalt')
    .tag('tools').tag('swords').tag('breaks_decorated_pots')
    .tag('forge:tools').tag('forge:tools/swords')
    .texture('gamma:item/cobalt_sword')
    .maxStackSize(1)
    .displayName('Cobalt Sword')

  event.create('copper_sword', 'sword')
    .tier('copper')
    .tag('tools').tag('swords').tag('breaks_decorated_pots')
    .tag('forge:tools').tag('forge:tools/swords')
    .texture('gamma:item/copper_sword')
    .maxStackSize(1)
    .displayName('Copper Sword')

  event.create('copper_pickaxe', 'pickaxe')
    .tier('copper')
    .tag('tools').tag('pickaxes').tag('breaks_decorated_pots')
    .tag('forge:tools').tag('forge:tools/pickaxes')
    .texture('gamma:item/copper_pickaxe')
    .maxStackSize(1)
    .displayName('Copper Pickaxe')

  event.create('copper_axe', 'axe')
    .tier('copper')
    .tag('tools').tag('axes').tag('breaks_decorated_pots')
    .tag('forge:tools').tag('forge:tools/axes')
    .texture('gamma:item/copper_axe')
    .maxStackSize(1)
    .displayName('Copper Axe')

  event.create('copper_shovel', 'shovel')
    .tier('copper')
    .tag('tools').tag('shovels').tag('breaks_decorated_pots')
    .tag('forge:tools').tag('forge:tools/shovels')
    .texture('gamma:item/copper_shovel')
    .maxStackSize(1)
    .displayName('Copper Shovel')

  event.create('copper_hoe', 'hoe')
    .tier('copper')
    .tag('tools').tag('hoes').tag('breaks_decorated_pots')
    .tag('forge:tools').tag('forge:tools/hoes')
    .texture('gamma:item/copper_hoe')
    .maxStackSize(1)
    .displayName('Copper Hoe')
    .attackDamageBonus(1.0)

  event.create('bismuth_pickaxe', 'pickaxe')
    .tier('bismuth')
    .tag('tools').tag('pickaxes').tag('breaks_decorated_pots')
    .tag('forge:tools').tag('forge:tools/pickaxes')
    .texture('gamma:item/bismuth_pickaxe')
    .maxStackSize(1)
    .displayName('Bismuth Pickaxe')

})

// Tool tiers

ItemEvents.toolTierRegistry(event => {
  event.add('copper', tier => {
    tier.uses = 98
    tier.speed = 3.5
    tier.attackDamageBonus = 1.0
    tier.level = 1
    tier.enchantmentValue = 5
    tier.repairIngredient = '#forge:ingots/copper'
  })

  event.add('bismuth', tier => {
    tier.uses = 202
    tier.speed = 4
    tier.attackDamageBonus = 1.0
    tier.level = 2
    tier.enchantmentValue = 5
    tier.repairIngredient = '#forge:ingots/bismuth'
  })

  event.add('cobalt', tier => {
    tier.uses = 202
    tier.speed = 4
    tier.attackDamageBonus = 2.0
    tier.level = 2
    tier.enchantmentValue = 5
    tier.repairIngredient = '#forge:ingots/cobalt'
  })
})

// Item Modifications

ItemEvents.modification(event => {
  event.modify('minecraft:stone_pickaxe', item => {
    item.speed = 1
    item.maxDamage = 26
  })
})

/*
// Heart-Steal Effect (Cobalt Sword)
// Script Author: @KonSola5
// Modified by zharok_01 for 50% Chance & Sound

const $LivingAttackEvent = Java.loadClass('net.minecraftforge.event.entity.living.LivingAttackEvent')

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

ForgeEvents.onEvent($LivingAttackEvent, event => {
  if (event.entity.level.isClientSide()) return

  const player = event.source.player
  if (player == null) return
  if (!event.entity.isLiving()) return

  const entity = event.entity
  if (entity.isUndead()) return
  if (entity.type == 'minecraft:armor_stand') return
  if (player.mainHandItem.id != 'kubejs:cobalt_sword') return

  if (Math.random() < 0.5) {
    player.heal(event.amount * 0.25)
    player.level.playSound(
      null,
      entity.x,
      entity.y,
      entity.z,
      'minecraft:particle.soul_escape',
      'neutral',
      1.1 + Math.random() * 0.2,
      0.8 + Math.random() * 0.4
    )
    player.level.spawnParticles('subtle_effects:heart_pop', true, entity.x, entity.y + 1, entity.z, 0.5, 0.5, 0.5, 2, 0.2)

    try {
      grantAdvancement(player, 'gamma:detour/steal_soul')
    } catch (e) { }
  }
})
*/