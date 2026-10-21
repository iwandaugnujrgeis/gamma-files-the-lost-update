// priority: 0

ItemEvents.modification(event => {
	function stackTo64(x) {
		event.modify(x, item => { item.maxStackSize = 64 })
	}
	function stackTo16(x) {
		event.modify(x, item => { item.maxStackSize = 16 })
	}
	function stackTo8(x) {
		event.modify(x, item => { item.maxStackSize = 8 })
	}
	function stackTo1(x) {
		event.modify(x, item => { item.maxStackSize = 1 })
	}

	// Bottles:
	stackTo1('quark:bottled_cloud')

	// Other Ones:
	stackTo1('minecraft:cake')
	stackTo1('minecraft:compass')
	stackTo1('supplementaries:altimeter')
	stackTo1('minecraft:clock')

	// Boss Stuff:
	stackTo1('rediscovered:red_dragon_egg')

	// Other:
	stackTo8('minecraft:melon')

	// Ingredients
	stackTo16('minecraft:cocoa_beans')
	stackTo16('minecraft:honeycomb')
	stackTo16('minecraft:kelp')
	stackTo16('minecraft:sugar')
	stackTo16('minecraft:sugar_cane')
	stackTo16('minecraft:wheat')
	stackTo16('spelunkery:salt')
	stackTo16('supplementaries:soap')

	// Seeds:
	stackTo16('minecraft:beetroot_seeds')
	stackTo16('minecraft:melon_seeds')
	stackTo16('minecraft:pumpkin_seeds')
	stackTo16('minecraft:torchflower_seeds') // ?
	stackTo16('minecraft:wheat_seeds')
	stackTo16('minecraft:pitcher_pod') // ?

	// Mushrooms:
	stackTo16('minecraft:brown_mushroom')
	stackTo16('minecraft:red_mushroom')
	stackTo16('coraline_systems:white_mushroom')

	// Other:
	stackTo16('supplementaries:bomb')
	// stackTo64('minecraft:ender_pearl')
	// stackTo64('minecraft:snowball')
})