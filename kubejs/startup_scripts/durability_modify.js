ItemEvents.modification(event => {
  event.modify('alexsmobs:shattered_dimensional_carver', item => {
    item.maxDamage = 20
  })

//Netherite Tools & Armor:
  //event.modify('minecraft:netherite_helmet', item => {
    //item.maxDamage = 1672
  //})
  //event.modify('minecraft:netherite_chestplate', item => {
    //item.maxDamage = 1672
  //})
  //event.modify('minecraft:netherite_leggings', item => {
    //item.maxDamage = 1672
  //})
  //event.modify('minecraft:netherite_boots', item => {
    //item.maxDamage = 1672
  //})
  //event.modify('minecraft:netherite_shovel', item => {
    //item.maxDamage = 1672
  //})
  //event.modify('minecraft:netherite_pickaxe', item => {
    //item.maxDamage = 1672
  //})
  //event.modify('minecraft:netherite_axe', item => {
    //item.maxDamage = 1672
  //})
  //event.modify('minecraft:netherite_hoe', item => {
    //item.maxDamage = 1672
  //})
  //event.modify('minecraft:netherite_sword', item => {
    //item.maxDamage = 1672
  //})

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
})
