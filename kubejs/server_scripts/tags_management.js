//priority: 1

//Colored Tag Helper:
const allColors = ['white', 'orange', 'magenta', 'light_blue', 'yellow', 'lime', 'pink', 'gray', 'light_gray', 'cyan', 'purple', 'blue', 'brown', 'green', 'red', 'black']

function addColoredTags(event, tag, namespace, suffix, colors) {
  if (!colors) colors = allColors
  colors.forEach(color => event.add(tag, `${namespace}:${color}${suffix}`))
}

ServerEvents.tags('item', event => {
  addColoredTags(event, 'gamma:colored_brick_walls', 'kubejs', '_bricks_wall')
  addColoredTags(event, 'gamma:colored_brick_slabs', 'kubejs', '_bricks_slab')
  addColoredTags(event, 'gamma:colored_brick_stairs', 'kubejs', '_bricks_stairs')
  addColoredTags(event, 'gamma:colored_bricks', 'kubejs', '_bricks')
  addColoredTags(event, 'gamma:colored_framed_glass', 'quark', '_framed_glass')
  addColoredTags(event, 'gamma:colored_framed_glass_panes', 'quark', '_framed_glass_pane')
  addColoredTags(event, 'gamma:colored_terracotta', 'minecraft', '_terracotta')
  addColoredTags(event, 'gamma:colored_terracotta_walls', 'clayworks', '_terracotta_wall')
  addColoredTags(event, 'gamma:colored_terracotta_slabs', 'clayworks', '_terracotta_slab')
  addColoredTags(event, 'gamma:colored_terracotta_stairs', 'clayworks', '_terracotta_stairs')
  addColoredTags(event, 'gamma:colored_glass', 'minecraft', '_stained_glass')
  addColoredTags(event, 'gamma:colored_glass_panes', 'minecraft', '_stained_glass_pane')
  addColoredTags(event, 'gamma:colored_bedrolls', 'upgrade_aquatic', '_bedroll')
  addColoredTags(event, 'gamma:colored_glowsticks', 'spelunkery', '_glowstick')
  addColoredTags(event, 'gamma:colored_candles', 'minecraft', '_candle')

  //Items which default state is "white":
  addColoredTags(event, 'gamma:colored_beds', 'minecraft', '_bed', ['orange', 'magenta', 'light_blue', 'yellow', 'lime', 'pink', 'gray', 'light_gray', 'cyan', 'purple', 'blue', 'brown', 'green', 'red', 'black'])
  addColoredTags(event, 'gamma:colored_wool', 'minecraft', '_wool', ['orange', 'magenta', 'light_blue', 'yellow', 'lime', 'pink', 'gray', 'light_gray', 'cyan', 'purple', 'blue', 'brown', 'green', 'red', 'black'])
  addColoredTags(event, 'gamma:colored_wool_carpets', 'minecraft', '_carpet', ['orange', 'magenta', 'light_blue', 'yellow', 'lime', 'pink', 'gray', 'light_gray', 'cyan', 'purple', 'blue', 'brown', 'green', 'red', 'black'])
  addColoredTags(event, 'gamma:colored_hats', 'etcetera', '_hat', ['orange', 'magenta', 'light_blue', 'yellow', 'lime', 'pink', 'gray', 'light_gray', 'cyan', 'purple', 'blue', 'brown', 'green', 'red', 'black'])
  addColoredTags(event, 'gamma:colored_sweaters', 'etcetera', '_sweater', ['orange', 'magenta', 'light_blue', 'yellow', 'lime', 'pink', 'gray', 'light_gray', 'cyan', 'purple', 'blue', 'brown', 'green', 'red', 'black'])

  //Flags, because their ID has a prefix, not a suffix...
  event.add('gamma:colored_flags', 'supplementaries:flag_orange')
  event.add('gamma:colored_flags', 'supplementaries:flag_yellow')
  event.add('gamma:colored_flags', 'supplementaries:flag_red')
  event.add('gamma:colored_flags', 'supplementaries:flag_blue')
  event.add('gamma:colored_flags', 'supplementaries:flag_cyan')
  event.add('gamma:colored_flags', 'supplementaries:flag_light_blue')
  event.add('gamma:colored_flags', 'supplementaries:flag_lime')
  event.add('gamma:colored_flags', 'supplementaries:flag_green')
  event.add('gamma:colored_flags', 'supplementaries:flag_magenta')
  event.add('gamma:colored_flags', 'supplementaries:flag_pink')
  event.add('gamma:colored_flags', 'supplementaries:flag_purple')
  event.add('gamma:colored_flags', 'supplementaries:flag_black')
  event.add('gamma:colored_flags', 'supplementaries:flag_gray')
  event.add('gamma:colored_flags', 'supplementaries:flag_light_gray')
  event.add('gamma:colored_flags', 'supplementaries:flag_brown')

  //Custom Rediscovered's Wool & Carpets:
  event.add('gamma:colored_wool', 'rediscovered:bright_green_wool')
  event.add('gamma:colored_wool', 'rediscovered:spring_green_wool')
  event.add('gamma:colored_wool', 'rediscovered:sky_blue_wool')
  event.add('gamma:colored_wool', 'rediscovered:slate_blue_wool')
  event.add('gamma:colored_wool', 'rediscovered:lavender_wool')
  event.add('gamma:colored_wool', 'rediscovered:rose_wool')
  event.add('gamma:colored_wool_carpets', 'rediscovered:bright_green_carpet')
  event.add('gamma:colored_wool_carpets', 'rediscovered:spring_green_carpet')
  event.add('gamma:colored_wool_carpets', 'rediscovered:sky_blue_carpet')
  event.add('gamma:colored_wool_carpets', 'rediscovered:slate_blue_carpet')
  event.add('gamma:colored_wool_carpets', 'rediscovered:lavender_carpet')
  event.add('gamma:colored_wool_carpets', 'rediscovered:rose_carpet')
})

//Other:
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
  event.add('gamma:music_discs', 'minecraft:music_disc_5')
  event.add('gamma:music_discs', 'upgrade_aquatic:music_disc_atlantis')
  event.add('gamma:music_discs', 'minecraft:music_disc_pigstep')
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
  event.removeAllTagsFrom('spawn:suspicious_stick')
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
  event.add('gamma:compost_ingredients', 'minecraft:glow_berries')
  event.add('gamma:compost_ingredients', 'ecologics:coconut_slice')
  event.add('gamma:compost_ingredients', 'minecraft:apple')
  event.add('gamma:compost_ingredients', 'minecraft:carrot')
  event.add('gamma:compost_ingredients', 'minecraft:potato')
  event.add('gamma:compost_ingredients', 'minecraft:beetroot')
  event.add('gamma:compost_ingredients', 'upgrade_aquatic:mulberry')
  event.add('gamma:compost_ingredients', 'minecraft:melon_slice')
  event.add('gamma:compost_ingredients', 'minecraft:kelp')
  event.add('gamma:compost_ingredients', 'minecraft:sweet_berries')
  event.add('gamma:compost_ingredients', 'galosphere:lichen_cordyceps')
  event.add('gamma:compost_ingredients', 'ecologics:prickly_pear')
  event.add('gamma:compost_ingredients', 'farmersdelight:pumpkin_slice')
  event.add('gamma:compost_ingredients', 'minecraft:fermented_spider_eye')
  event.add('gamma:compost_ingredients', 'minecraft:chorus_fruit')
})

ServerEvents.tags('item', event => {
  event.add('minecraft:creeper_drop_music_discs', 'minecraft:music_disc_pigstep')
})
