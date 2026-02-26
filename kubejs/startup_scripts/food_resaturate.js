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
    function saltyRush1(x) {
        event.modify(x, item => {item.foodProperties = food => {food.effect('resistance', 200, 0, 100)}})
    }
    function saltyRush2(x) {
        event.modify(x, item => {item.foodProperties = food => {food.effect('resistance', 400, 0, 100)}})
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

    restore0_5('minecraft:glow_berries')
    restore0_5('minecraft:melon_slice')
    restore0_5('minecraft:sweet_berries')

    restore1('ecologics:walnut')
    restore1('farmersdelight:pumpkin_slice')
    restore1('minecraft:apple')
    restore1('minecraft:beetroot')
    restore1('minecraft:carrot')
    restore1('minecraft:chorus_fruit')
    restore1('minecraft:enchanted_golden_apple')
    restore1('minecraft:golden_apple')
    restore1('minecraft:potato')
    restore1('quark:ancient_fruit')

    restore1_5('spelunkery:grilled_portabella')
    restore1_5('minecraft:suspicious_stew')

    event.modify('alexsmobs:banana', item => {
        item.foodProperties = food => {food
            .hunger(3).saturation(0.5)
            .effect('alexsmobs:poison_resistance', 200, 0, 100)
        }
    })

    restore2('ecologics:cooked_prickly_pear')
    restore2('minecraft:baked_potato')
    restore2('minecraft:popped_chorus_fruit')

    weirdVanishing2('ecologics:cooked_prickly_pear')

    restore2_5('minecraft:mushroom_stew')
    saltyRush1('minecraft:mushroom_stew')

//Mushrooms:
    const regularMushrooms = [
        'minecraft:brown_mushroom',
        'spelunkery:portabella'
    ]

    function mushroomRestore(x) {
        event.modify('spelunkery:portabella', item => {
            item.foodProperties = food => {food
                .hunger(1).saturation(0.5)
                .effect('hunger', 100, 0, 0.2)
            }
        }
    )}

    mushroomRestore(regularMushrooms)

    event.modify('minecraft:red_mushroom', item => {
        item.foodProperties = food => {food
            .hunger(1).saturation(0.5)
            .effect('poison', 100, 0, 0.2)
        }
    })

    event.modify('spelunkery:button_mushroom', item => {
        item.foodProperties = food => {food
            .hunger(1).saturation(0.5)
            .effect('night_vision', 200, 0, 100)
            .effect('hunger', 100, 0, 0.2)
        }
    })

    event.modify('spelunkery:mushgloom', item => {
        item.foodProperties = food => {food
            .hunger(1).saturation(0.5)
            .effect('glowing', 200, 0, 100)
            .effect('hunger', 100, 0, 0.2)
        }
    })

//Sweets:
    event.modify('kubejs:marshmallow', item => {
        item.foodProperties = food => {food
            .effect('jump_boost', 200, 0, 100)
            .fastToEat()
        }
    })

    restore1('kubejs:bar_of_chocolate')
        candyRush1('kubejs:bar_of_chocolate')

    restore0_5('supplementaries:candy')
        fastToEat('supplementaries:candy')
        candyRush0_5('supplementaries:candy')

    event.modify('upgrade_aquatic:mulberry_jam_bottle', item => {
        item.foodProperties = food => {food
            .fastToEat()
            .hunger(2).saturation(0.5)
            .effect('water_breathing', 100, 0, 100) //100 or 200?
            .effect('speed', 200, 0, 100)
        }
    })

    //Bakery
        candyRush1('farmersdelight:sweet_berry_cookie')
        restore1('farmersdelight:sweet_berry_cookie')
        restore1('minecraft:cookie') 
        restore2('minecraft:bread')

        event.modify('kubejs:butter', item => {
            item.foodProperties = food => {food
                .effect('slowness', 200, 0, 100)
                .effect('mining_fatigue', 100, 0, 100)
            }
        })

    //Cakes
        restore7('minecraft:pumpkin_pie')
        saltyRush2('minecraft:pumpkin_pie')

        event.modify('kubejs:banana_bread', item => {
            item.foodProperties = food => {food
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

        restore3('autumnity:pumpkin_bread')

    //Honey:
        event.modify('kubejs:honeyed_apple', item => {
            item.foodProperties = food => {food
                .hunger(4).saturation(0.5)
            }
        })

        event.modify('minecraft:honey_bottle', item => {
            item.foodProperties = food => {food
                .hunger(4).saturation(0.5)
            }
        })

        restore1_5('farmersdelight:honey_cookie')
        candyRush1('farmersdelight:honey_cookie')

//Meat
    //Raw Meat:
        function rawMeatEffect(x) {
            event.modify(x, item => {
                item.foodProperties = food => {food
                    .hunger(2).saturation(0.5)
                    .effect('hunger', 100, 0, 0.4)
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
            'rediscovered:raw_fish'
        ]

        restore1(rawMeats)
        rawMeatEffect(rawMeats)
        
        restore1('minecraft:rotten_flesh')

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
            .alwaysEdible(true)
        }
    })

    event.modify('kubejs:golden_potato', item => {
        item.foodProperties = food => {food
            .effect('regeneration', 100, 1, 100)
            .effect('strength', 600, 0, 100)
            .alwaysEdible(true)
        }
    })

    event.modify('galosphere:golden_lichen_cordyceps', item => {
        item.foodProperties = food => {food
            .hunger(2).saturation(0.5)
            .alwaysEdible(true)
        }
    })

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
