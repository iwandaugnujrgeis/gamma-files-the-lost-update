//priority: 1
StartupEvents.registry('item', event => {
      //4.2:
      event.create('cobalt')
            .texture('gamma:item/cobalt')
            .maxStackSize(64)
            .displayName('Cobalt')
            .name(itemstack => 'Cobalt')

      //event.create('cobalt_nugget')
            //.texture('gamma:item/cobalt_nugget')
            //.maxStackSize(64)
            //.displayName('Cobalt Nugget')
            //.name(itemstack => 'Cobalt Nugget')

      //3.17:
      event.create('glow_paste')
            .texture('gamma:item/glow_paste')
            .maxStackSize(64)
            .displayName('Glow Paste')
            .name(itemstack => 'Glow Paste')

      //3.7:
      event.create('glazed_steak')
            .texture('gamma:item/glazed_steak')
            .maxStackSize(8)
            .displayName('Glazed Steak')
            .name(itemstack => 'Glazed Steak')
            .food(food => {
                  food.hunger(8).saturation(0.5)
            })

      event.create('mango')
            .texture('gamma:item/mango')
            .maxStackSize(8)
            .displayName('Mango')
            .name(itemstack => 'Mango')
            .food(food => {
                  food.hunger(3).saturation(0.5)
            })

      //Other:
      //Food:
      event.create('omelette')
            .texture('gamma:item/omelette')
            .maxStackSize(8).displayName('Omelette')
            .name(itemstack => 'Omelette')
            .food(food => {
                  food.hunger(6).saturation(0.5)
            })

      event.create('waffle')
            .texture('gamma:item/waffle')
            .maxStackSize(8)
            .displayName('Waffle')
            .name(itemstack => 'Waffle')
            .food(food => {
                  food.hunger(5).saturation(0.5)
            })

      event.create('banana_bread')
            .texture('gamma:item/banana_bread')
            .maxStackSize(8)
            .displayName('Banana Bread')
            .name(itemstack => 'Banana Bread')
            .food(food => {
                  food.hunger(6).saturation(0.5)
            })

      event.create('butter')
            .texture('gamma:item/butter')
            .maxStackSize(8)
            .displayName('Butter')
            .name(itemstack => 'Butter')
            .food(food => {
                  food.hunger(2).saturation(0.5)
            })

      event.create('marshmallow')
            .texture('gamma:item/marshmallow')
            .maxStackSize(8)
            .displayName('Marshmallow')
            .name(itemstack => 'Marshmallow')
            .food(food => {
                  food.hunger(3).saturation(0.5)
            })

      event.create('golden_potato')
            .texture('gamma:item/golden_potato')
            .maxStackSize(8)
            .displayName('Golden Potato')
            .name(itemstack => 'Golden Potato')
            .food(food => {
                  food.hunger(2).saturation(0.5)
            })

      event.create('salt')
            .texture('gamma:item/salt')
            .maxStackSize(16)
            .displayName('Salt')
            .name(itemstack => 'Salt')

      event.create('wheat_flour')
            .texture('gamma:item/wheat_flour')
            .maxStackSize(16)
            .displayName('Wheat Flour')
            .name(itemstack => 'Wheat Flour')

      event.create('dough')
            .texture('gamma:item/dough')
            .maxStackSize(16)
            .displayName('Dough')
            .name(itemstack => 'Dough')

      event.create('honeyed_apple')
            .texture('gamma:item/honeyed_apple')
            .maxStackSize(8)
            .displayName('Honeyed Apple')
            .name(itemstack => 'Honeyed Apple')
            .food(food => {
                  food.hunger(3).saturation(0.5)
            })

      //event.create('chocolate_glazed_berries')
            //.texture('gamma:item/chocolate_glazed_berries')
            //.maxStackSize(16).displayName('Chocolate Glazed Berries')
            //.name(itemstack => 'Chocolate Glazed Berries')
            //.food(food => {
                  //food.hunger(3).saturation(0.5)
            //})

      event.create('bar_of_chocolate')
            .texture('gamma:item/bar_of_chocolate')
            .maxStackSize(8)
            .displayName('Bar of Chocolate')
            .name(itemstack => 'Bar of Chocolate')
            .food(food => {
                  food.hunger(2).saturation(0.5)
            })

      event.create('halite_crystal')
            .texture('gamma:item/halite_crystal')
            .maxStackSize(16)
            .displayName('Halite Crystal')
            .name(itemstack => 'Halite Crystal')

//Miscellaneous:
      event.create('soul_dust')
            .texture('gamma:item/timepowder')
            .maxStackSize(64)
            .displayName('Timepowder')
            .name(itemstack => 'Timepowder')
      
      event.create('ancient_rod')
            .texture('gamma:item/ancient_rod')
            .maxStackSize(64)
            .displayName('Netherite Rod')
            .name(itemstack => 'Netherite Rod')

      event.create('sharp_tooth')
            .texture('gamma:item/sharp_tooth')
            .maxStackSize(64)
            .displayName('Sharp Tooth')
            .name(itemstack => 'Sharp Tooth')

//Records:
      event.create('music_disc_dog', 'music_disc')
            .song('gamma:music_disc.dog', 146)
            .texture('gamma:item/record/dog')
            .maxStackSize(1)
            .displayName('Music Disc')
            .name(itemstack => 'Music Disc')
            .tag('music_discs')
            .tag('creeper_drop_music_discs')

      event.create('music_disc_eleven', 'music_disc')
            .song('gamma:music_disc.eleven', 72)
            .texture('gamma:item/record/eleven')
            .maxStackSize(1)
            .displayName('Music Disc')
            .name(itemstack => 'Music Disc')
            .tag('music_discs')

      event.create('music_disc_droopy2', 'music_disc')
            .song('gamma:music_disc.droopy2', 97)
            .texture('gamma:item/record/droopy2')
            .maxStackSize(1)
            .displayName('Music Disc')
            .name(itemstack => 'Music Disc')
            .tag('music_discs')

      event.create('music_disc_death', 'music_disc')
            .song('gamma:music_disc.death', 41)
            .texture('gamma:item/record/death')
            .maxStackSize(1)
            .displayName('Music Disc')
            .name(itemstack => 'Music Disc')
            .tag('music_discs')

      event.create('music_disc_goodbye', 'music_disc')
            .song('gamma:music_disc.goodbye', 134)
            .texture('gamma:item/record/goodbye')
            .maxStackSize(1)
            .displayName('Music Disc')
            .name(itemstack => 'Music Disc')
            .tag('music_discs')
      }
)

ItemEvents.modification(event => {
      event.modify('minecraft:stone_pickaxe', item => {
            item.speed = 0
            item.maxDamage = 6
      })
})

//Tiers:
ItemEvents.toolTierRegistry(event => {
      event.add('copper', tier => {
            tier.uses = 98
            tier.speed = 3.5
            tier.attackDamageBonus = 1.0
            tier.level = 1
            tier.enchantmentValue = 5
            tier.repairIngredient = '#forge:ingots/copper'
      })
})

ItemEvents.toolTierRegistry(event => {
      event.add('bismuth', tier => {
            tier.uses = 202
            tier.speed = 4
            tier.attackDamageBonus = 1.0
            tier.level = 2
            tier.enchantmentValue = 5
            tier.repairIngredient = '#forge:ingots/bismuth' //Register
      })
})

//Copper Tools:
StartupEvents.registry('item', event => {
      event.create('copper_sword', 'sword')
            .tier('copper')
            .tag('tools')
            .tag('swords')
            .tag('breaks_decorated_pots')
            .tag('forge:tools')
            .tag('forge:tools/swords')
            .texture('gamma:item/copper_sword')
            .maxStackSize(1)
            .displayName('Copper Sword')
            .name(itemstack => 'Copper Sword')

      event.create('copper_pickaxe', 'pickaxe')
            .tier('copper')
            .tag('tools')
            .tag('pickaxes')
            .tag('breaks_decorated_pots')
            .tag('forge:tools')
            .tag('forge:tools/pickaxes')
            .texture('gamma:item/copper_pickaxe')
            .maxStackSize(1)
            .displayName('Copper Pickaxe')
            .name(itemstack => 'Copper Pickaxe')

      event.create('copper_axe', 'axe')
            .tier('copper')
            .tag('tools')
            .tag('axes')
            .tag('breaks_decorated_pots')
            .tag('forge:tools')
            .tag('forge:tools/axes')
            .texture('gamma:item/copper_axe')
            .maxStackSize(1)
            .displayName('Copper Axe')
            .name(itemstack => 'Copper Axe')

      event.create('copper_shovel', 'shovel')
            .tier('copper')
            .tag('tools')
            .tag('shovels')
            .tag('breaks_decorated_pots')
            .tag('forge:tools')
            .tag('forge:tools/shovels')
            .texture('gamma:item/copper_shovel')
            .maxStackSize(1)
            .displayName('Copper Shovel')
            .name(itemstack => 'Copper Shovel')

      event.create('copper_hoe', 'hoe')
            .tier('copper')
            .tag('tools')
            .tag('hoes')
            .tag('breaks_decorated_pots')
            .tag('forge:tools')
            .tag('forge:tools/hoes')
            .texture('gamma:item/copper_hoe')
            .maxStackSize(1)
            .displayName('Copper Hoe')
            .name(itemstack => 'Copper Hoe')
            .attackDamageBonus(1.0)
      }
)

//Bismuth Tools:
StartupEvents.registry('item', event => {
      event.create('bismuth_pickaxe', 'pickaxe')
            .tier('bismuth')
            .tag('tools')
            .tag('pickaxes')
            .tag('breaks_decorated_pots')
            .tag('forge:tools')
            .tag('forge:tools/pickaxes')
            .texture('gamma:item/bismuth_pickaxe')
            .maxStackSize(1)
            .displayName('Bismuth Pickaxe')
            .name(itemstack => 'Bismuth Pickaxe')
      }
)