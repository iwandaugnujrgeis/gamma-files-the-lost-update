ServerEvents.recipes(event => {
  event.remove({type: 'minecraft:blasting'})
  event.remove({type: 'minecraft:smoking'})
  event.remove({type: 'minecraft:smithing'})
  event.remove({type: 'minecraft:campfire_cooking'})
})