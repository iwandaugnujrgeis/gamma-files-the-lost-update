//Remove Tooltips:
ItemEvents.tooltip(tooltip => {
  //tooltip.addAdvanced('minecraft:painting', (item, advanced, text) => {
    //text.remove(1)
    //text.remove(1)
    //text.remove(1)
  //})

  tooltip.addAdvanced('farmersdelight:milk_bottle', (item, advanced, text) => {
    text.remove(1)
  })
  
  tooltip.addAdvanced('supplementaries:bubble_blower', (item, advanced, text) => {
    text.remove(1)
  })

  tooltip.addAdvanced('alexsmobs:ghostly_pickaxe', (item, advanced, text) => {
    text.remove(1)
    text.remove(1)
    text.remove(1)
    text.remove(1)
    text.remove(1)
    text.remove(1)
  })

  tooltip.addAdvanced('minecraft:firework_rocket', (item, advanced, text) => {
    text.remove(1)
  })

  tooltip.addAdvanced('species:limpet_spawn_egg', (item, advanced, text) => {
    text.remove(1)
    text.remove(1)
    text.remove(1)
  })

  tooltip.addAdvanced('species:deepfish_spawn_egg', (item, advanced, text) => {
    text.remove(1)
    text.remove(1)
    text.remove(1)
  })

  tooltip.addAdvanced('species:cruncher_spawn_egg', (item, advanced, text) => {
    text.remove(1)
    text.remove(1)
    text.remove(1)
  })

  tooltip.addAdvanced('species:goober_spawn_egg', (item, advanced, text) => {
    text.remove(1)
    text.remove(1)
    text.remove(1)
  })

  tooltip.addAdvanced('species:springling_spawn_egg', (item, advanced, text) => {
    text.remove(1)
    text.remove(1)
    text.remove(1)
  })

  tooltip.addAdvanced('species:stackatick_spawn_egg', (item, advanced, text) => {
    text.remove(1)
    text.remove(1)
    text.remove(1)
  })

  tooltip.addAdvanced('species:ghoul_spawn_egg', (item, advanced, text) => {
    text.remove(1)
    text.remove(1)
    text.remove(1)
  })

  tooltip.addAdvanced('species:bewereager_spawn_egg', (item, advanced, text) => {
    text.remove(1)
    text.remove(1)
    text.remove(1)
  })

  tooltip.addAdvanced('species:wicked_spawn_egg', (item, advanced, text) => {
    text.remove(1)
    text.remove(1)
    text.remove(1)
  })

  tooltip.addAdvanced('species:crankbow', (item, advanced, text) => {
    text.remove(1)
    text.remove(1)
  })

  tooltip.addAdvanced('species:wicked_mask', (item, advanced, text) => {
    text.remove(1)
    text.remove(1)
    text.remove(1)
    text.remove(1)
    text.remove(1)
  })

  tooltip.addAdvanced('minecraft:spawner', (item, advanced, text) => {
    text.remove(1)
    text.remove(1)
    text.remove(1)
  })

  tooltip.addAdvanced('alexsmobs:animal_dictionary', (item, advanced, text) => {
    text.remove(1)
  })

  tooltip.addAdvanced('minecraft:goat_horn', (item, advanced, text) => {
    text.remove(1)
  })

//Alex's Mobs' Items:
  tooltip.addAdvanced('alexsmobs:froststalker_helmet', (item, advanced, text) => {
    text.remove(1)
  })

  tooltip.addAdvanced('alexsmobs:novelty_hat', (item, advanced, text) => {
    text.remove(1)
  })

  tooltip.addAdvanced('alexsmobs:unsettling_kimono', (item, advanced, text) => {
    text.remove(1)
  })

  tooltip.addAdvanced('alexsmobs:rocky_chestplate', (item, advanced, text) => {
    text.remove(1)
  })

  tooltip.addAdvanced('alexsmobs:emu_leggings', (item, advanced, text) => {
    text.remove(1)
  })

  tooltip.addAdvanced('alexsmobs:flying_fish_boots', (item, advanced, text) => {
    text.remove(1)
  })

})

//Add Tooltips:
ItemEvents.tooltip(tooltip => {

//Jumpy Snacks:
  const jumpySnacks = [
    'kubejs:marshmallow'
  ]
  tooltip.addAdvanced(jumpySnacks, (item, advanced, text) => {
      text.add(1, [Text.of('§9Jump Boost (0:10)')])
  })

//Сandy Rush I:
  const candyRushI = [
    'farmersdelight:honey_cookie',
    'farmersdelight:sweet_berry_cookie',
    'kubejs:bar_of_chocolate',
    'kubejs:chocolate_glazed_berries',
    'upgrade_aquatic:mulberry_jam_bottle'
  ]
  tooltip.addAdvanced(candyRushI, (item, advanced, text) => {
      text.add(1, [Text.of('§9Speed (0:10)')])
  })

//Candy Rush II:
  const candyRushII = [
    'upgrade_aquatic:mulberry_pie'
  ]
  tooltip.addAdvanced(candyRushII, (item, advanced, text) => {
      text.add(1, [Text.of('§9Speed (0:20)')])
  })

//Banana Power I:
    tooltip.addAdvanced('alexsmobs:banana', (item, advanced, text) => {
        text.add(1, [Text.of('§9Poison Resistance (0:10)')])
    })

//Banana Power II:
    tooltip.addAdvanced('kubejs:banana_bread', (item, advanced, text) => {
        text.add(1, [Text.of('§9Poison Resistance (0:15)')])
    })

//Honey:
    const honeyFoods = [
      'kubejs:honeyed_apple',
      'minecraft:honey_bottle',
      'farmersdelight:honey_cookie',
      'kubejs:glazed_steak'
    ]
    tooltip.addAdvanced(honeyFoods, (item, advanced, text) => {
        text.add(1, [Text.of('§9Instant Health')])
    })

//Salty Rush I:
  const saltyRushI = [
    'minecraft:mushroom_stew'
  ]
  tooltip.addAdvanced(saltyRushI, (item, advanced, text) => {
      text.add(1, [Text.of('§9Resistance (0:10)')])
  })

//Salty Rush II:
  const saltyRushII = [
    'minecraft:pumpkin_pie'
  ]
  tooltip.addAdvanced(saltyRushII, (item, advanced, text) => {
      text.add(1, [Text.of('§9Resistance (0:20)')])
  })

//Seashore Bounty I:  
  const seashoreBountyI = [
    'upgrade_aquatic:mulberry',
    'upgrade_aquatic:mulberry_jam_bottle'
  ]
  tooltip.addAdvanced(seashoreBountyI, (item, advanced, text) => {
      text.add(1, [Text.of('§9Water Breathing (0:05)')])
  })

//Seashore Bounty II:
  const seashoreBountyII = [
    'upgrade_aquatic:mulberry_pie'
  ]
  tooltip.addAdvanced(seashoreBountyII, (item, advanced, text) => {
      text.add(1, [Text.of('§9Water Breathing (0:10)')])
  })

//Weird Vanishing I:
  const weirdVanishingI = [
    'rediscovered:cooked_fish'
  ]
  tooltip.addAdvanced(weirdVanishingI, (item, advanced, text) => {
      text.add(1, [Text.of('§9Invisibility (0:10)')])
  })

//Weird Vanishing II:
  const weirdVanishingII = [
    'ecologics:cooked_prickly_pear'
  ]
  tooltip.addAdvanced(weirdVanishingII, (item, advanced, text) => {
      text.add(1, [Text.of('§9Invisibility (0:20)')])
  })

//Candy Rush Small:
  const candyRush0_5 = [
    'supplementaries:candy'
  ]
  tooltip.addAdvanced(candyRush0_5, (item, advanced, text) => {
      text.add(1, [Text.of('§9Speed (0:05)')])
  })

//Golden Foods:
  const goldenCarrot = [
    'minecraft:golden_carrot'
  ]
  tooltip.addAdvanced(goldenCarrot, (item, advanced, text) => {
      text.add(1, [Text.of('§9Night Vision (0:30)')])
  })

  const goldenApple = [
    'minecraft:golden_apple'
  ]
  tooltip.addAdvanced(goldenApple, (item, advanced, text) => {
      text.add(1, [Text.of('§9Absorption (0:60)')])
  })

  const goldenPotato = [
    'kubejs:golden_potato'
  ]
  tooltip.addAdvanced(goldenPotato, (item, advanced, text) => {
      text.add(1, [Text.of('§9Strength (0:30)')])
  })

//Levitation:
  const levitation = [
    'kubejs:halite_crystal'
  ]
  tooltip.addAdvanced(levitation, (item, advanced, text) => {
      text.add(1, [Text.of('§9Levitation (0:10)')])
  })

//Gold Tools:
  //const goldFortune = [
    //'minecraft:golden_shovel',
    //'minecraft:golden_pickaxe',
    //'minecraft:golden_axe',
    //'minecraft:golden_hoe'
  //]
  //tooltip.addAdvanced(goldFortune, (item, advanced, text) => {
      //text.add(1, [Text.of('§9Fortune')])
  //})

  //const goldLooting = [
    //'minecraft:golden_sword'
  //]
  //tooltip.addAdvanced(goldLooting, (item, advanced, text) => {
      //text.add(1, [Text.of('§9Looting')])
  //})
//
  //tooltip.addAdvanced('alexsmobs:emu_leggings', (item, advanced, text) => {
    //text.add(1, [Text.of('§9Dodge Projectiles!')])
    //text.add(2, [Text.of('§9Sometimes...')])
  //})
})
