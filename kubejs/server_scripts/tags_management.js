//priority: 1

const allColors = ['white', 'orange', 'magenta', 'light_blue', 'yellow', 'lime', 'pink', 'gray', 'light_gray', 'cyan', 'purple', 'blue', 'brown', 'green', 'red', 'black']
const coralineColors = ['bright_green', 'spring_green', 'sky_blue', 'slate_blue', 'lavender', 'rose', 'wine', 'coral', 'phtalo', 'plum', 'toxic_yellow', 'navy_blue']
const nonWhiteColors = ['orange', 'magenta', 'light_blue', 'yellow', 'lime', 'pink', 'gray', 'light_gray', 'cyan', 'purple', 'blue', 'brown', 'green', 'red', 'black']

function addColoredTags(event, tag, namespace, suffix, colors) {
  if (!colors) colors = allColors
  colors.forEach(color => event.add(tag, `${namespace}:${color}${suffix}`))
}

ServerEvents.tags('item', event => {
  // Wool
  addColoredTags(event, 'gamma:colored_wool', 'minecraft', '_wool', nonWhiteColors)
  addColoredTags(event, 'gamma:colored_wool', 'coraline_systems', '_wool', coralineColors)

  // Carpets
  addColoredTags(event, 'gamma:colored_wool_carpets', 'minecraft', '_carpet', nonWhiteColors)
  addColoredTags(event, 'gamma:colored_wool_carpets', 'coraline_systems', '_carpet', coralineColors)

  // Terracotta
  addColoredTags(event, 'gamma:colored_terracotta', 'minecraft', '_terracotta', nonWhiteColors)
  addColoredTags(event, 'gamma:colored_terracotta', 'coraline_systems', '_terracotta', coralineColors)

  // Terracotta Slabs
  addColoredTags(event, 'gamma:colored_terracotta_slabs', 'clayworks', '_terracotta_slab', nonWhiteColors)
  addColoredTags(event, 'gamma:colored_terracotta_slabs', 'coraline_systems', '_terracotta_slab', coralineColors)

  // Terracotta Stairs
  addColoredTags(event, 'gamma:colored_terracotta_stairs', 'clayworks', '_terracotta_stairs', nonWhiteColors)
  addColoredTags(event, 'gamma:colored_terracotta_stairs', 'coraline_systems', '_terracotta_stairs', coralineColors)

  // Terracotta Walls
  addColoredTags(event, 'gamma:colored_terracotta_walls', 'clayworks', '_terracotta_wall', nonWhiteColors)
  addColoredTags(event, 'gamma:colored_terracotta_walls', 'coraline_systems', '_terracotta_wall', coralineColors)

  // Glass
  addColoredTags(event, 'gamma:colored_glass', 'minecraft', '_stained_glass', allColors)
  addColoredTags(event, 'gamma:colored_glass', 'coraline_systems', '_stained_glass', coralineColors)

  // Glass Panes
  addColoredTags(event, 'gamma:colored_glass_panes', 'minecraft', '_stained_glass_pane', allColors)
  addColoredTags(event, 'gamma:colored_glass_panes', 'coraline_systems', '_stained_glass_pane', coralineColors)
})

// Other:
ServerEvents.tags('item', event => {
  event.add('gamma:ambient_discs', 'quark:music_disc_chatter')
  event.add('gamma:ambient_discs', 'quark:music_disc_crickets')
  event.add('gamma:ambient_discs', 'quark:music_disc_clock')
  event.add('gamma:ambient_discs', 'quark:music_disc_fire')
  event.add('gamma:ambient_discs', 'quark:music_disc_wind')
  event.add('gamma:ambient_discs', 'quark:music_disc_rain')
  event.add('gamma:ambient_discs', 'quark:music_disc_ocean')
  event.add('gamma:ambient_discs', 'quark:music_disc_drips')
})

ServerEvents.tags('item', event => {
  event.add('gamma:music_discs', 'minecraft:music_disc_13')
  event.add('gamma:music_discs', 'minecraft:music_disc_cat')
  event.add('gamma:music_discs', 'minecraft:music_disc_blocks')
  event.add('gamma:music_discs', 'minecraft:music_disc_chirp')
  event.add('gamma:music_discs', 'minecraft:music_disc_far')
  event.add('gamma:music_discs', 'minecraft:music_disc_mall')
  event.add('gamma:music_discs', 'minecraft:music_disc_mellohi')
  event.add('gamma:music_discs', 'minecraft:music_disc_stal')
  event.add('gamma:music_discs', 'minecraft:music_disc_strad')
  event.add('gamma:music_discs', 'minecraft:music_disc_ward')
  event.add('gamma:music_discs', 'minecraft:music_disc_11')
  event.add('gamma:music_discs', 'minecraft:music_disc_wait')
  event.add('gamma:music_discs', 'rediscovered:music_disc_calm4')
  event.add('gamma:music_discs', 'minecraft:music_disc_otherside')
  event.add('gamma:music_discs', 'kubejs:music_disc_droopy1')
  event.add('gamma:music_discs', 'minecraft:music_disc_relic')
  event.add('gamma:music_discs', 'alexsmobs:music_disc_thime')
  event.add('gamma:music_discs', 'kubejs:music_disc_dog')
  event.add('gamma:music_discs', 'kubejs:music_disc_eleven')
  event.add('gamma:music_discs', 'kubejs:music_disc_droopy2')
  event.add('gamma:music_discs', 'kubejs:music_disc_death')
  event.add('gamma:music_discs', 'kubejs:music_disc_acid')
  event.add('gamma:music_discs', 'kubejs:music_disc_reveal')
})

ServerEvents.tags('item', event => {
  event.add('alexsmobs:stradpole_growables', 'minecraft:gunpowder')
})

ServerEvents.tags('item', event => {
  event.add('quark:backpack_blocked', 'supplementaries:sack')
})

ServerEvents.tags('item', event => {
  event.add('gamma:coral_blocks', 'upgrade_aquatic:acan_coral_block')
  event.add('gamma:coral_blocks', 'minecraft:brain_coral_block')
  event.add('gamma:coral_blocks', 'upgrade_aquatic:branch_coral_block')
  event.add('gamma:coral_blocks', 'minecraft:bubble_coral_block')
  event.add('gamma:coral_blocks', 'upgrade_aquatic:chrome_coral_block')
  event.add('gamma:coral_blocks', 'upgrade_aquatic:finger_coral_block')
  event.add('gamma:coral_blocks', 'minecraft:fire_coral_block')
  event.add('gamma:coral_blocks', 'minecraft:horn_coral_block')
  event.add('gamma:coral_blocks', 'upgrade_aquatic:moss_coral_block')
  event.add('gamma:coral_blocks', 'upgrade_aquatic:petal_coral_block')
  event.add('gamma:coral_blocks', 'upgrade_aquatic:pillow_coral_block')
  event.add('gamma:coral_blocks', 'upgrade_aquatic:rock_coral_block')
  event.add('gamma:coral_blocks', 'upgrade_aquatic:silk_coral_block')
  event.add('gamma:coral_blocks', 'upgrade_aquatic:star_coral_block')
  event.add('gamma:coral_blocks', 'minecraft:tube_coral_block')
})

ServerEvents.tags('item', event => {
  event.add('gamma:weird_food', 'minecraft:poisonous_potato')
  event.add('gamma:weird_food', 'quark:ancient_fruit')
})

ServerEvents.tags('item', event => {
  event.add('gamma:compost_ingredients', 'coraline_systems:apple')
  event.add('gamma:compost_ingredients', 'minecraft:carrot')
  event.add('gamma:compost_ingredients', 'minecraft:potato')
  event.add('gamma:compost_ingredients', 'minecraft:beetroot')
  event.add('gamma:compost_ingredients', 'upgrade_aquatic:mulberry')
  event.add('gamma:compost_ingredients', 'minecraft:melon_slice')
  event.add('gamma:compost_ingredients', 'minecraft:kelp')
  event.add('gamma:compost_ingredients', 'minecraft:sweet_berries')
  event.add('gamma:compost_ingredients', 'coraline_systems:prickly_pear')
  event.add('gamma:compost_ingredients', 'kubejs:pumpkin_slice')
  event.add('gamma:compost_ingredients', 'minecraft:fermented_spider_eye')
  event.add('gamma:compost_ingredients', 'minecraft:chorus_fruit')
})

ServerEvents.tags('item', event => {
  event.add('minecraft:creeper_drop_music_discs', 'kubejs:music_disc_droopy1')
})