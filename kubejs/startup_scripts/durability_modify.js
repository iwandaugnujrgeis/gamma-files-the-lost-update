ItemEvents.modification(event => {

  // Chainmail Armor:
  event.modify('minecraft:chainmail_helmet', item => {
    item.maxDamage = 120
  })
  event.modify('minecraft:chainmail_chestplate', item => {
    item.maxDamage = 175
  })
  event.modify('minecraft:chainmail_leggings', item => {
    item.maxDamage = 160
  })
  event.modify('minecraft:chainmail_boots', item => {
    item.maxDamage = 140
  })

  // Elytra:
  event.modify('minecraft:elytra', item => {
    item.maxDamage = 316
  })

  // Gold Tools:
  event.modify('minecraft:golden_shovel', item => {
    item.maxDamage = 112
  })
  event.modify('minecraft:golden_pickaxe', item => {
    item.maxDamage = 112
  })
  event.modify('minecraft:golden_axe', item => {
    item.maxDamage = 112
  })
  event.modify('minecraft:golden_hoe', item => {
    item.maxDamage = 112
  })
  event.modify('minecraft:golden_sword', item => {
    item.maxDamage = 112
  })

  // Other:
  event.modify('minecraft:flint_and_steel', item => {
    item.maxDamage = 128
  })
})