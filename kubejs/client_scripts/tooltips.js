// Remove Tooltips:
ItemEvents.tooltip(tooltip => {
  tooltip.addAdvanced('supplementaries:rope_arrow', (item, advanced, text) => { text.remove(1) })
  tooltip.addAdvanced('supplementaries:bubble_blower', (item, advanced, text) => { text.remove(1) })
  tooltip.addAdvanced('minecraft:firework_rocket', (item, advanced, text) => { text.remove(1) })
  tooltip.addAdvanced('minecraft:spawner', (item, advanced, text) => {
    text.remove(1)
    text.remove(1)
    text.remove(1)
  })
  tooltip.addAdvanced('alexsmobs:animal_dictionary', (item, advanced, text) => { text.remove(1) })
  tooltip.addAdvanced('minecraft:goat_horn', (item, advanced, text) => { text.remove(1) })
  tooltip.addAdvanced('alexsmobs:flying_fish_boots', (item, advanced, text) => { text.remove(1) })
})