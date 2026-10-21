// priority: 0

ItemEvents.modification(event => {

	const FOODS = {
		// Fruits, Veggies & Nuts
		'minecraft:sweet_berries': { hearts: 0.5, stack: 8, fast: true },
		'minecraft:melon_slice': { hearts: 0.5, stack: 8 },
		'minecraft:beetroot': { hearts: 1, stack: 8 },
		'minecraft:carrot': { hearts: 1, stack: 8 },
		'minecraft:potato': { hearts: 1, stack: 8 },
		'minecraft:baked_potato': { hearts: 2, stack: 8 },
		'coraline_systems:apple': { hearts: 1, stack: 8 },
		'coraline_systems:banana': { hearts: 1.5, stack: 8 },
		'coraline_systems:mango': { hearts: 1.5, stack: 8 },
		'coraline_systems:walnut': { hearts: 1, stack: 8 },
		'upgrade_aquatic:mulberry': { hearts: 0.5, stack: 8, fast: true },
		'kubejs:pumpkin_slice': { hearts: 1, stack: 8 },

		// Raw Meat & Fish
		'minecraft:beef': { hearts: 1, stack: 8 },
		'minecraft:chicken': { hearts: 1, stack: 8 },
		'minecraft:porkchop': { hearts: 1, stack: 8 },
		'minecraft:mutton': { hearts: 1, stack: 8 },
		'minecraft:cod': { hearts: 1, stack: 8 },
		'minecraft:salmon': { hearts: 1, stack: 8 },
		'minecraft:tropical_fish': { hearts: 0.5, stack: 8 },
		'alexsmobs:raw_catfish': { hearts: 1, stack: 8 },
		'alexsmobs:flying_fish': { hearts: 1, stack: 8 },
		'rediscovered:raw_fish': { hearts: 1, stack: 8 },
		'minecraft:rotten_flesh': { hearts: 1, stack: 8 },
    'coraline_systems:raw_venison': { hearts: 1.5, stack: 8 },

		// Cooked Meat & Fish
		'minecraft:cooked_beef': { hearts: 3, stack: 8 },
		'minecraft:cooked_porkchop': { hearts: 3, stack: 8 },
		'minecraft:cooked_chicken': { hearts: 3, stack: 8 },
		'minecraft:cooked_mutton': { hearts: 3, stack: 8 },
		'minecraft:cooked_salmon': { hearts: 3, stack: 8 },
		'minecraft:cooked_cod': { hearts: 2.5, stack: 8 },
		'alexsmobs:cooked_catfish': { hearts: 3, stack: 8 },
		'rediscovered:cooked_fish': { hearts: 2, stack: 8 },
    'coraline_systems:cooked_venison': { hearts: 3.5, stack: 8 },

		// Bakery & Sweets
		'minecraft:bread': { hearts: 2, stack: 8 },
		'minecraft:cookie': { hearts: 1, stack: 16 }, // 4 per craft. Sum 4.5 (2 dough + cocoa)
		'kubejs:sweet_berry_cookie': { hearts: 1.5, stack: 16 }, // 3 per craft. Sum 5 (2 dough + berries + sugar)
		'kubejs:honey_cookie': { hearts: 2, stack: 16 }, // 3 per craft. Sum 6.5 (2 dough + honey bottle + sugar)
		'kubejs:bar_of_chocolate': { hearts: 1.5, stack: 8 }, // 2 per craft. Sum 3 (milk bottle + butter + cocoa + sugar)
    'supplementaries:candy': { hearts: 0.5, stack: 16, fast: true }, // 6 per craft. Sum 2 (sugar + chocolate bar), +1 premium for the luxury snack
		// 'kubejs:marshmallow': { hearts: 0.5, stack: 16, fast: true }, // 2 per craft
		'supplementaries:pancake': { hearts: 1, stack: 16 }, // 8 per craft. Sum 8 (sugar + milk bucket + dough + egg)
		'kubejs:cake_slice': { hearts: 1, stack: 8 }, // 7 per cake. Sum 7 (2 butter + berries + 2 dough + sugar)
		'kubejs:fried_egg': { hearts: 1.5, stack: 8 },
		'kubejs:omelette': { hearts: 2.5, stack: 8 }, // Sum 2.5 (fried egg + milk bottle)
		'kubejs:waffle': { hearts: 3, stack: 8 }, // 2 per craft. Sum 6 (2 dough + 2 butter)
		'kubejs:banana_bread': { hearts: 2.5, stack: 8 }, // 2 per craft. Sum 5 (butter + banana + sugar + dough)
		'kubejs:glazed_steak': { hearts: 4, stack: 8 }, // 2 per craft. Sum 8 (2 cooked beef + honey bottle)
		'minecraft:dried_kelp': { hearts: 0.5, stack: 16, fast: true },

		// Big Foods & Bottles
		'minecraft:pumpkin_pie': { hearts: 7, stack: 1 }, // Sum 7 (3 slices + 2 dough)
		'upgrade_aquatic:mulberry_pie': { hearts: 6.5, stack: 1 }, // Sum 6.5 (2 mulberries + butter + 2 dough + sugar)
		'minecraft:mushroom_stew': { hearts: 2.5, stack: 1 },
		'minecraft:honey_bottle': { hearts: 2, stack: 1 },
		'upgrade_aquatic:mulberry_jam_bottle': { hearts: 1, stack: 1, fast: true }
	}

	Object.keys(FOODS).forEach(id => {
		const entry = FOODS[id]
		event.modify(id, item => {
			item.maxStackSize = entry.stack
			item.foodProperties = food => {
				food.hunger(entry.hearts * 2).saturation(0.5)
				if (entry.fast) food.fastToEat()
			}
		})
	})

	event.modify('kubejs:butter', item => {
		item.maxStackSize = 16
		item.foodProperties = null
	})

	// Golden Foods
	event.modify('minecraft:golden_apple', item => {
		item.maxStackSize = 1
		item.foodProperties = food => { food.hunger(2).saturation(0.5) }
	})

	event.modify('minecraft:enchanted_golden_apple', item => {
		item.maxStackSize = 1
		item.foodProperties = food => { food.hunger(2).saturation(0.5) }
	})

	event.modify('minecraft:golden_carrot', item => {
		item.maxStackSize = 1
		item.foodProperties = food => {
			food
				.hunger(2).saturation(0.5)
				.effect('regeneration', 100, 1, 100)
				.effect('night_vision', 600, 0, 100)
				.alwaysEdible(true)
		}
	})

	event.modify('kubejs:golden_potato', item => {
		item.maxStackSize = 1
		item.foodProperties = food => {
			food
				.effect('regeneration', 100, 1, 100)
				.effect('strength', 600, 0, 100)
				.alwaysEdible(true)
		}
	})

	// Special 
	event.modify('kubejs:halite_crystal', item => {
		item.foodProperties = food => {
			food
				.hunger(1).saturation(0.5)
				.effect('levitation', 200, 0, 100)
				.alwaysEdible(true)
		}
	})

	event.modify('supplementaries:soap', item => {
		item.foodProperties = food => {
			food
				.hunger(1).saturation(0.5)
				// .effect('alexsmobs:earthquake', 80, 0, 100)
				// .effect('alexsmobs:power_down', 100, 0, 100)
				.alwaysEdible(true)
		}
	})
})