ServerEvents.tags('block', event => {
event.get('minecraft:needs_stone_tool')
    .remove('minecraft:copper_ore')
    .remove('minecraft:raw_copper_block')
})