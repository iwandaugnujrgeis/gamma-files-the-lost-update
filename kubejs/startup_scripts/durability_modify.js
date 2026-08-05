ItemEvents.modification(event => {
  
//Elytra:
  event.modify('minecraft:elytra', item => {
    item.maxDamage = 316
  })

//Gold Tools:
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

//Other
  event.modify('minecraft:flint_and_steel', item => {
    item.maxDamage = 128
  })
})
