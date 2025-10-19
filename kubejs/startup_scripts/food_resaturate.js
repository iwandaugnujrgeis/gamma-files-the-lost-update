//priority: 0
ItemEvents.modification(event => {
    function restore0_5(x) {
        event.modify(x, item => {item.foodProperties = food => {food.hunger(1).saturation(0.5)}})
    }
    function restore1(x) {
        event.modify(x, item => {item.foodProperties = food => {food.hunger(2).saturation(0.5)}})
    }
    function restore1_5(x) {
        event.modify(x, item => {item.foodProperties = food => {food.hunger(3).saturation(0.5)}})
    }
    function restore2(x) {
        event.modify(x, item => {item.foodProperties = food => {food.hunger(4).saturation(0.5)}})
    }
    function restore2_5(x) {
        event.modify(x, item => {item.foodProperties = food => {food.hunger(5).saturation(0.5)}})
    }
    function restore3(x) {
        event.modify(x, item => {item.foodProperties = food => {food.hunger(6).saturation(0.5)}})
    }
    function restore3_5(x) {
        event.modify(x, item => {item.foodProperties = food => {food.hunger(7).saturation(0.5)}})
    }
    function restore4(x) {
        event.modify(x, item => {item.foodProperties = food => {food.hunger(8).saturation(0.5)}})
    }
    function restore4_5(x) {
        event.modify(x, item => {item.foodProperties = food => {food.hunger(9).saturation(0.5)}})
    }
    function restore5(x) {
        event.modify(x, item => {item.foodProperties = food => {food.hunger(10).saturation(0.5)}})
    }
    function restore6(x) {
        event.modify(x, item => {item.foodProperties = food => {food.hunger(12).saturation(0.5)}})
    }
    function restore7(x) {
        event.modify(x, item => {item.foodProperties = food => {food.hunger(14).saturation(0.5)}})
    }
    function restore8(x) {
        event.modify(x, item => {item.foodProperties = food => {food.hunger(16).saturation(0.5)}})
    }
    function restore9(x) {
        event.modify(x, item => {item.foodProperties = food => {food.hunger(18).saturation(0.5)}})
    }
    function restore10(x) {
        event.modify(x, item => {item.foodProperties = food => {food.hunger(20).saturation(0.5)}})
    }

//Food Effects:
    function fastToEat(x) {
        event.modify(x, item => {item.foodProperties = food => {food.fastToEat()}})
    }
    function candyRush0_5(x) {
        event.modify(x, item => {item.foodProperties = food => {food.effect('speed', 100, 0, 100)}})
    }
    function candyRush1(x) {
        event.modify(x, item => {item.foodProperties = food => {food.effect('speed', 200, 0, 100)}})
    }
    function candyRush2(x) {
        event.modify(x, item => {item.foodProperties = food => {food.effect('speed', 400, 0, 100)}})
    }
    function saltyRush1(x) {
        event.modify(x, item => {item.foodProperties = food => {food.effect('resistance', 200, 0, 100)}})
    }
    function saltyRush2(x) {
        event.modify(x, item => {item.foodProperties = food => {food.effect('resistance', 400, 0, 100)}})
    }
    function foodPoisoning(x) {
        event.modify(x, item => {item.foodProperties = food => {food.effect('poison', 200, 0, 100).effect('nausea', 200, 0, 100)}})
    }
    function weirdVanishing1(x) {
        event.modify(x, item => {item.foodProperties = food => {food.effect('invisibility', 200, 0, 100)}})
    }
    function weirdVanishing2(x) {
        event.modify(x, item => {item.foodProperties = food => {food.effect('invisibility', 400, 0, 100)}})
    }

//Fruits & Veggies:
    fastToEat('minecraft:chorus_fruit')
    fastToEat('minecraft:glow_berries')
    fastToEat('minecraft:sweet_berries')

    event.modify('upgrade_aquatic:mulberry', item => {
        item.foodProperties = food => {food
            .fastToEat()
            .hunger(1).saturation(0.5)
            .effect('water_breathing', 100, 0, 100)
        }
    })

    restore0_5('ecologics:walnut')
    restore0_5('minecraft:glow_berries')
    restore0_5('minecraft:melon_slice')
    restore0_5('minecraft:sweet_berries')

    restore1('farmersdelight:pumpkin_slice')
    restore1('farmersdelight:rice')
    restore1('minecraft:apple')
    restore1('minecraft:beetroot')
    restore1('minecraft:carrot')
    restore1('minecraft:chorus_fruit')
    restore1('minecraft:enchanted_golden_apple')
    restore1('minecraft:golden_apple')
    restore1('minecraft:potato')
    restore1('phantasm:pome_slice')
    restore1('quark:ancient_fruit')
    restore1('spelunkery:grilled_portabella')

    restore1_5('minecraft:suspicious_stew')

    event.modify('alexsmobs:banana', item => {
        item.foodProperties = food => {food
            .hunger(3).saturation(0.5)
            .effect('alexsmobs:poison_resistance', 200, 0, 100)
        }
    })

    restore2('ecologics:cooked_prickly_pear')
    restore2('minecraft:baked_potato')
    restore2('minecraft:mushroom_stew')
    restore2('minecraft:popped_chorus_fruit')

    saltyRush1('minecraft:mushroom_stew')
    weirdVanishing2('ecologics:cooked_prickly_pear')

//Mushrooms:
    function mushroomPoisoning(x) {
        event.modify(x, item => {
            item.foodProperties = food => {food
                .hunger(1).saturation(0.5)
                .effect('poison', 200, 0, 100)
                .effect('alexsmobs:earthquake', 80, 0, 100)
            }})
    }

    const mushrooms = [
        'galosphere:bowl_lichen',
        'goodending:birch_mushroom',
        'minecraft:brown_mushroom',
        'minecraft:crimson_fungus',
        'minecraft:red_mushroom',
        'minecraft:warped_fungus',
        'quark:glow_shroom',
        'spelunkery:button_mushroom',
        'spelunkery:crimini',
        'spelunkery:inkcap_mushroom',
        'spelunkery:milly_bubcap',
        'spelunkery:mushgloom',
        'spelunkery:phosphor_fungus',
        'spelunkery:portabella',
        'spelunkery:white_inkcap_mushroom'
    ]

    mushroomPoisoning(mushrooms)

//Sweets:
    event.modify('kubejs:marshmallow', item => {
        item.foodProperties = food => {food
            .effect('jump_boost', 200, 0, 100)
            .fastToEat()
        }
    })

    restore1('kubejs:bar_of_chocolate')
    candyRush1('kubejs:bar_of_chocolate')

    fastToEat('supplementaries:candy')
    restore0_5('supplementaries:candy')
    candyRush0_5('supplementaries:candy')

    restore1_5('kubejs:chocolate_glazed_berries')
    candyRush1('kubejs:chocolate_glazed_berries')

    event.modify('upgrade_aquatic:mulberry_jam_bottle', item => {
        item.foodProperties = food => {food
            .fastToEat()
            .hunger(2).saturation(0.5)
            .effect('water_breathing', 100, 0, 100) //100 or 200?
            .effect('speed', 200, 0, 100)
        }
    })

    //Bakery
        event.modify('kubejs:waffle', item => {
            item.foodProperties = food => {food
                .effect('regeneration', 100, 0, 100)
            }
        })

        candyRush1('farmersdelight:sweet_berry_cookie')
        restore0_5('hauntedharvest:popcorn') //Bring It Back!
        restore1('farmersdelight:sweet_berry_cookie')
        restore1('minecraft:cookie') 
        restore2('minecraft:bread')

        event.modify('kubejs:butter', item => {
            item.foodProperties = food => {food
                .effect('slowness', 200, 0, 100)
                .effect('mining_fatigue', 100, 0, 100)
            }
        })

        candyRush2('kubejs:carrot_cake')

    //Cakes
        function seashoreBounty2(x) {
            event.modify(x, item => {item.foodProperties = food => {food.effect('water_breathing', 200, 0, 100)}})
        }

        restore7('minecraft:pumpkin_pie')
        saltyRush2('minecraft:pumpkin_pie')

        event.modify('kubejs:banana_bread', item => {
            item.foodProperties = food => {food
                .effect('regeneration', 200, 0, 100)
                .effect('alexsmobs:poison_resistance', 300, 0, 100)
            }
        })

        event.modify('upgrade_aquatic:mulberry_pie', item => {
            item.foodProperties = food => {food
                .fastToEat()
                .hunger(12).saturation(0.5)
                .effect('water_breathing', 200, 0, 100)
                .effect('speed', 400, 0, 100)
            }
        })

    //Honey:
        event.modify('kubejs:honeyed_apple', item => {
            item.foodProperties = food => {food
                .hunger(4).saturation(0.5)
                //.effect('instant_health', 1, 0, 100) //Moved to Miscellaneous Script!
            }
        })

        event.modify('minecraft:honey_bottle', item => {
            item.foodProperties = food => {food
                .hunger(4).saturation(0.5)
                //.effect('instant_health', 1, 0, 100)
            }
        })

        restore1_5('farmersdelight:honey_cookie')
        candyRush1('farmersdelight:honey_cookie')

//Meat
    //Raw Meat:
        function rawMeatPoisoning(x) {
            event.modify(x, item => {
                item.foodProperties = food => {food
                    .hunger(2).saturation(0.5)
                    .effect('poison', 100, 0, 100)
                    .effect('nausea', 200, 0, 100)
                }
            })
        }

        const rawMeats = [
            'alexsmobs:cosmic_cod',
            'alexsmobs:flying_fish',
            'alexsmobs:raw_catfish',
            'minecraft:beef',
            'minecraft:chicken',
            'minecraft:cod',
            'minecraft:mutton',
            'minecraft:porkchop',
            'minecraft:rotten_flesh',
            'rediscovered:raw_fish',
            'upgrade_aquatic:pike'
        ]

        rawMeatPoisoning(rawMeats)

    //Cooked Meat:
        restore2('farmersdelight:fried_egg')
        restore2('rediscovered:cooked_fish')
        restore3('alexsmobs:cooked_catfish')
        restore3('minecraft:cooked_beef')
        restore3('minecraft:cooked_porkchop')
        weirdVanishing1('rediscovered:cooked_fish')

//Golden Things:
    event.modify('minecraft:golden_carrot', item => {
        item.foodProperties = food => {food
            .hunger(2).saturation(0.5)
            .effect('regeneration', 100, 1, 100)
            .effect('night_vision', 600, 0, 100)
        }
    })

    event.modify('kubejs:golden_potato', item => {
        item.foodProperties = food => {food
            .effect('regeneration', 100, 1, 100)
            .effect('strength', 600, 0, 100)
        }
    })

    restore1('galosphere:golden_lichen_cordyceps')

//Other:
    event.modify('kubejs:halite_crystal', item => {
        item.foodProperties = food => {food
            .hunger(1).saturation(0.5)
            .effect('levitation', 200, 0, 100)
            .effect('hunger', 200, 0, 100)
            .alwaysEdible(true)
        }
    })

    event.modify('supplementaries:soap', item => {
        item.foodProperties = food => {food
            .hunger(1).saturation(0.5)
            .effect('alexsmobs:earthquake', 80, 0, 100)
            .effect('alexsmobs:power_down', 100, 0, 100)
            .alwaysEdible(true)
        }
    })
})
