const removedTypes = [
  'minecraft:blasting',
  'minecraft:smoking',
  'minecraft:smithing',
  'minecraft:campfire_cooking'
]

const removedIds = [
  'spelunkery:gold_nugget_from_smelting',
  'spelunkery:zinc_ore_smelting',
  'spelunkery:zinc_nugget_from_smelting',
  'spelunkery:silver_ore_smelting',
  'spelunkery:silver_nugget_from_smelting',
  'spelunkery:redstone_ore_smelting',
  'spelunkery:lead_ore_smelting',
  'spelunkery:lead_nugget_from_smelting',
  'spelunkery:lapis_ore_smelting',
  'spelunkery:jade_ore_smelting',
  'spelunkery:iron_ore_smelting',
  'spelunkery:iron_nugget_from_smelting',
  'spelunkery:gold_ore_smelting',
  'spelunkery:emerald_ore_smelting',
  'spelunkery:diamond_ore_smelting',
  'spelunkery:copper_ore_smelting',
  'spelunkery:copper_nugget_from_smelting',
  'spelunkery:copper_nugget_from_smelting_create',
  'spelunkery:coal_ore_smelting',
  'spelunkery:charcoal_lump_from_smelting_food',
  'spelunkery:bismuth_nugget_from_smelting',
  'spelunkery:yellow_glowstick',
  'spelunkery:white_glowstick',
  'spelunkery:red_glowstick',
  'spelunkery:purple_glowstick',
  'spelunkery:pink_glowstick',
  'spelunkery:orange_glowstick',
  'spelunkery:magenta_glowstick',
  'spelunkery:lime_glowstick',
  'spelunkery:light_gray_glowstick',
  'spelunkery:light_blue_glowstick',
  'spelunkery:green_glowstick',
  'spelunkery:gray_glowstick',
  'spelunkery:cyan_glowstick',
  'spelunkery:brown_glowstick',
  'spelunkery:blue_glowstick',
  'spelunkery:black_glowstick'
]

ServerEvents.recipes(event => {
  removedTypes.forEach(function(type) {
    event.remove({ type: type })
  })
  removedIds.forEach(function(id) {
    event.remove({ id: id })
  })
})