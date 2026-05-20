//priority: 0
ItemEvents.modification(event => {
	function stackTo64(x) {
		event.modify(x, item => {item.maxStackSize = 64})
	}
	function stackTo16(x) {
		event.modify(x, item => {item.maxStackSize = 16})
	}
	function stackTo8(x) {
		event.modify(x, item => {item.maxStackSize = 8})
	}
	function stackTo1(x) {
		event.modify(x, item => {item.maxStackSize = 1})
	}

//Bottles:
	stackTo1('autumnity:syrup_bottle')
	stackTo1('autumnity:sap_bottle')
	stackTo1('alexsmobs:fish_oil')
	stackTo1('farmersdelight:milk_bottle')
	stackTo1('minecraft:dragon_breath')
	stackTo1('minecraft:honey_bottle')
	stackTo1('quark:bottled_cloud')
	stackTo1('snowyspirit:eggnog')
	stackTo1('upgrade_aquatic:mulberry_jam_bottle')
	stackTo1('spelunkery:portal_fluid_bottle')

//Other Ones:
	stackTo1('minecraft:cake')
	stackTo1('minecraft:mushroom_stew')
	stackTo1('minecraft:pumpkin_pie')
	stackTo1('minecraft:suspicious_stew')
	stackTo1('quark:tiny_potato')
	stackTo1('upgrade_aquatic:mulberry_pie')
	stackTo1('minecraft:compass')
	stackTo1('minecraft:recovery_compass')
	stackTo1('supplementaries:altimeter')
	stackTo1('galosphere:barometer')
	stackTo1('minecraft:clock')

//Golden Food:
	stackTo1('etcetera:golden_eggple')
	stackTo1('galosphere:golden_lichen_cordyceps')
	stackTo1('kubejs:golden_potato')
	stackTo1('minecraft:enchanted_golden_apple')
	stackTo1('minecraft:glistering_melon_slice')
	stackTo1('minecraft:golden_apple')
	stackTo1('minecraft:golden_carrot')

//Boss Stuff:
	stackTo1('minecraft:dragon_egg')
	stackTo1('minecraft:heart_of_the_sea')
	stackTo1('minecraft:nether_star')
	stackTo1('rediscovered:red_dragon_egg')
	stackTo1('upgrade_aquatic:elder_eye')

//Other:
	stackTo8('alexsmobs:banana')
	stackTo8('alexsmobs:cooked_catfish')
	stackTo8('alexsmobs:flying_fish')
	stackTo8('alexsmobs:raw_catfish')
	stackTo8('ecologics:coconut_slice')
	stackTo8('ecologics:cooked_prickly_pear')
	stackTo8('ecologics:prickly_pear')
	stackTo8('ecologics:walnut')
	stackTo8('etcetera:eggple')
	stackTo8('farmersdelight:fried_egg')
	stackTo8('farmersdelight:honey_cookie')
	stackTo8('farmersdelight:pumpkin_slice')
	stackTo8('galosphere:lichen_cordyceps')
	stackTo8('autumnity:pumpkin_bread')

	stackTo8('kubejs:omelette')
	stackTo8('kubejs:waffle')
	stackTo8('minecraft:apple')
	stackTo8('minecraft:baked_potato')
	stackTo8('minecraft:beef')
	stackTo8('minecraft:beetroot')
	stackTo8('minecraft:bread')
	stackTo8('minecraft:carrot')
	stackTo8('minecraft:chicken')
	stackTo8('minecraft:chorus_fruit')
	stackTo8('minecraft:cod')
	stackTo8('minecraft:cooked_beef')
	stackTo8('minecraft:cooked_chicken')
	stackTo8('minecraft:cooked_cod')
	stackTo8('minecraft:cooked_mutton')
	stackTo8('minecraft:cooked_porkchop')
	stackTo8('minecraft:cooked_salmon')
	stackTo8('minecraft:glow_berries')
	stackTo8('minecraft:melon')
	stackTo8('minecraft:melon_slice')
	stackTo8('minecraft:mutton')
	stackTo8('minecraft:poisonous_potato')
	stackTo8('minecraft:popped_chorus_fruit')
	stackTo8('minecraft:porkchop')
	stackTo8('minecraft:potato')
	stackTo8('minecraft:rotten_flesh')
	stackTo8('minecraft:salmon')
	stackTo8('minecraft:sweet_berries')
	stackTo8('minecraft:tropical_fish')
	stackTo8('quark:ancient_fruit')
	stackTo8('rediscovered:cooked_fish')
	stackTo8('rediscovered:raw_fish')
	stackTo8('upgrade_aquatic:mulberry')

	stackTo16('farmersdelight:honey_cookie')
	stackTo16('farmersdelight:sweet_berry_cookie')
	stackTo16('kubejs:butter')
	stackTo16('kubejs:marshmallow')
	stackTo16('minecraft:cocoa_beans')
	stackTo16('minecraft:cookie')
	stackTo16('minecraft:dried_kelp')
	stackTo16('minecraft:honeycomb')
	stackTo16('minecraft:kelp')
	stackTo16('minecraft:nether_wart')
	stackTo16('minecraft:sugar')
	stackTo16('minecraft:sugar_cane')
	stackTo16('minecraft:wheat')
	stackTo16('spelunkery:salt')
	stackTo16('supplementaries:candy')
	stackTo16('supplementaries:pancake')
	stackTo16('supplementaries:soap')

//Eggs:
	stackTo16('alexsmobs:caiman_egg')
	stackTo16('alexsmobs:crocodile_egg')
	stackTo16('alexsmobs:platypus_egg')
	stackTo16('alexsmobs:terrapin_egg')
	stackTo16('friendsandfoes:crab_egg')
	stackTo16('minecraft:sniffer_egg')
	stackTo16('minecraft:turtle_egg')

//Seeds:
	stackTo16('minecraft:beetroot_seeds')
	stackTo16('minecraft:melon_seeds')
	stackTo16('minecraft:pumpkin_seeds')
	stackTo16('minecraft:torchflower_seeds')
	stackTo16('minecraft:wheat_seeds')
	stackTo16('minecraft:pitcher_pod')

//Mushrooms:
	stackTo16('minecraft:brown_mushroom')
	stackTo16('minecraft:red_mushroom')
	stackTo16('spelunkery:button_mushroom')
	stackTo16('spelunkery:grilled_portabella')
	stackTo16('spelunkery:mushgloom')
	stackTo16('spelunkery:portabella')

//Other:
	stackTo64('minecraft:ender_pearl')
	stackTo64('minecraft:snowball')
	stackTo64('spelunkery:dust_bun')
})
