ServerEvents.tags('block', event => {
event.get('minecraft:needs_stone_tool')
    .remove('minecraft:copper_ore')
    .remove('minecraft:deepslate_copper_ore')
    .remove('minecraft:raw_copper_block')
    .remove('galosphere:silver_ore')
    .remove('galosphere:deepslate_silver_ore')
    .remove('galosphere:raw_silver_block')
})

ServerEvents.tags('block', event => {
event.get('minecraft:needs_iron_tool')
    .add('galosphere:silver_ore')
    .add('galosphere:deepslate_silver_ore')
    .add('galosphere:raw_silver_block')
})