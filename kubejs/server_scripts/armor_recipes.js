//let netheriteItems = [
    //'minecraft:netherite_shovel',
    //'minecraft:netherite_pickaxe',
    //'minecraft:netherite_axe',
    //'minecraft:netherite_hoe',
    //'minecraft:netherite_sword',
    //'minecraft:netherite_helmet',
    //'minecraft:netherite_chestplate',
    //'minecraft:netherite_leggings',
    //'minecraft:netherite_boots'
//];

//ServerEvents.recipes(event => {
    //for (let i = 0; i < netheriteItems.length; i++) {
        //let netheriteItem = netheriteItems[i];
        //event.shapeless(
            //Item.of(netheriteItem).weakNBT(),
            //[
            //netheriteItem,
            //Item.of('minecraft:nether_star'), 
            //Item.of('minecraft:dragon_breath')
            //]
        //).modifyResult((grid, result) => {
            //let item = grid.find(Item.of(netheriteItem));
            //return result.withNBT(item.nbt).withNBT('{Damage:0,Unbreakable:1b}');
        //});
    //}
//})

ServerEvents.recipes(event => {

//Netherite Armor & Tools:
    //event.shaped(
      //Item.of('minecraft:netherite_axe'),
      //[
        //' A ',
        //'ABA',
        //' A '
      //],
      //{
        //A: 'minecraft:netherite_scrap',
        //B: 'minecraft:diamond_axe'
      //}
    //).modifyResult((grid, result) => {
        //let item = grid.find(Item.of("minecraft:diamond_axe"))
        //return result.withNBT(item.nbt)
    //})
    //event.shaped(
      //Item.of('minecraft:netherite_boots'),
      //[
        //' A ',
        //'ABA',
        //' A '
      //],
      //{
        //A: 'minecraft:netherite_scrap',
        //B: 'minecraft:diamond_boots'
      //}
    //).modifyResult((grid, result) => {
        //let item = grid.find(Item.of("minecraft:diamond_boots"))
        //return result.withNBT(item.nbt)
    //})
    //event.shaped(
      //Item.of('minecraft:netherite_leggings'),
      //[
        //' A ',
        //'ABA',
        //' A '
      //],
      //{
        //A: 'minecraft:netherite_scrap',
        //B: 'minecraft:diamond_leggings'
      //}
    //).modifyResult((grid, result) => {
        //let item = grid.find(Item.of("minecraft:diamond_leggings"))
        //return result.withNBT(item.nbt)
    //})
    //event.shaped(
      //Item.of('minecraft:netherite_chestplate'),
      //[
        //' A ',
        //'ABA',
        //' A '
      //],
      //{
        //A: 'minecraft:netherite_scrap',
        //B: 'minecraft:diamond_chestplate'
      //}
    //).modifyResult((grid, result) => {
        //let item = grid.find(Item.of("minecraft:diamond_chestplate"))
        //return result.withNBT(item.nbt)
    //})
    //event.shaped(
      //Item.of('minecraft:netherite_helmet'),
      //[
        //' A ',
        //'ABA',
        //' A '
      //],
      //{
        //A: 'minecraft:netherite_scrap',
        //B: 'minecraft:diamond_helmet'
      //}
    //).modifyResult((grid, result) => {
        //let item = grid.find(Item.of("minecraft:diamond_helmet"))
        //return result.withNBT(item.nbt)
    //})
    //event.shaped(
      //Item.of('minecraft:netherite_sword'),
      //[
        //' A ',
        //'ABA',
        //' A '
      //],
      //{
        //A: 'minecraft:netherite_scrap',
        //B: 'minecraft:diamond_sword'
      //}
    //).modifyResult((grid, result) => {
        //let item = grid.find(Item.of("minecraft:diamond_sword"))
        //return result.withNBT(item.nbt)
    //})
    //event.shaped(
      //Item.of('minecraft:netherite_hoe'),
      //[
        //' A ',
        //'ABA',
        //' A '
      //],
      //{
        //A: 'minecraft:netherite_scrap',
        //B: 'minecraft:diamond_hoe'
      //}
    //).modifyResult((grid, result) => {
        //let item = grid.find(Item.of("minecraft:diamond_hoe"))
        //return result.withNBT(item.nbt)
    //})
    //event.shaped(
      //Item.of('minecraft:netherite_pickaxe'),
      //[
        //' A ',
        //'ABA',
        //' A '
      //],
      //{
        //A: 'minecraft:netherite_scrap',
        //B: 'minecraft:diamond_pickaxe'
      //}
    //).modifyResult((grid, result) => {
        //let item = grid.find(Item.of("minecraft:diamond_pickaxe"))
        //return result.withNBT(item.nbt)
    //})
    //event.shaped(
      //Item.of('minecraft:netherite_shovel'),
      //[
        //' A ',
        //'ABA',
        //' A '
      //],
      //{
        //A: 'minecraft:netherite_scrap',
        //B: 'minecraft:diamond_shovel'
      //}
    //).modifyResult((grid, result) => {
        //let item = grid.find(Item.of("minecraft:diamond_shovel"))
        //return result.withNBT(item.nbt)
    //})

//Plate Armor:
    //event.shaped(
      //Item.of('rediscovered:plate_boots'),
      //[
        //' A ',
        //'ABA',
        //' A '
      //],
      //{
        //A: 'galosphere:silver_ingot',
        //B: 'minecraft:chainmail_boots'
      //}
    //).modifyResult((grid, result) => {
        //let item = grid.find(Item.of("minecraft:chainmail_boots"))
        //return result.withNBT(item.nbt)
    //})
    //event.shaped(
      //Item.of('rediscovered:plate_leggings'),
      //[
        //' A ',
        //'ABA',
        //' A '
      //],
      //{
        //A: 'galosphere:silver_ingot',
        //B: 'minecraft:chainmail_leggings'
      //}
    //).modifyResult((grid, result) => {
        //let item = grid.find(Item.of("minecraft:chainmail_leggings"))
        //return result.withNBT(item.nbt)
    //})
    //event.shaped(
      //Item.of('rediscovered:plate_chestplate'),
      //[
        //' A ',
        //'ABA',
        //' A '
      //],
      //{
        //A: 'galosphere:silver_ingot',
        //B: 'minecraft:chainmail_chestplate'
      //}
    //).modifyResult((grid, result) => {
        //let item = grid.find(Item.of("minecraft:chainmail_chestplate"))
        //return result.withNBT(item.nbt)
    //})
    //event.shaped(
      //Item.of('rediscovered:plate_helmet'),
      //[
        //' A ',
        //'ABA',
        //' A '
      //],
      //{
        //A: 'galosphere:silver_ingot',
        //B: 'minecraft:chainmail_helmet'
      //}
    //).modifyResult((grid, result) => {
        //let item = grid.find(Item.of("minecraft:chainmail_helmet"))
        //return result.withNBT(item.nbt)
    //})

//Sterling Armor:
    event.shaped(
      Item.of('galosphere:sterling_boots'),
      [
        ' A ',
        'ABA',
        ' A '
      ],
      {
        A: 'galosphere:silver_ingot',
        B: 'minecraft:leather_boots'
      }
    ).modifyResult((grid, result) => {
        let item = grid.find(Item.of("minecraft:leather_boots"))
        return result.withNBT(item.nbt)
    })
    event.shaped(
      Item.of('galosphere:sterling_leggings'),
      [
        ' A ',
        'ABA',
        ' A '
      ],
      {
        A: 'galosphere:silver_ingot',
        B: 'minecraft:leather_leggings'
      }
    ).modifyResult((grid, result) => {
        let item = grid.find(Item.of("minecraft:leather_leggings"))
        return result.withNBT(item.nbt)
    })
    event.shaped(
      Item.of('galosphere:sterling_chestplate'),
      [
        ' A ',
        'ABA',
        ' A '
      ],
      {
        A: 'galosphere:silver_ingot',
        B: 'minecraft:leather_chestplate'
      }
    ).modifyResult((grid, result) => {
        let item = grid.find(Item.of("minecraft:leather_chestplate"))
        return result.withNBT(item.nbt)
    })
    event.shaped(
      Item.of('galosphere:sterling_helmet'),
      [
        ' A ',
        'ABA',
        ' A '
      ],
      {
        A: 'galosphere:silver_ingot',
        B: 'minecraft:leather_helmet'
      }
    ).modifyResult((grid, result) => {
        let item = grid.find(Item.of("minecraft:leather_helmet"))
        return result.withNBT(item.nbt)
    })
    event.shaped(
      Item.of('galosphere:sterling_horse_armor'),
      [
        ' A ',
        'ABA',
        ' A '
      ],
      {
        A: 'galosphere:silver_ingot',
        B: 'minecraft:leather_horse_armor'
      }
    ).modifyResult((grid, result) => {
        let item = grid.find(Item.of("minecraft:leather_horse_armor"))
        return result.withNBT(item.nbt)
    })
})

//Studded Armor:
ServerEvents.recipes(event => {
    const removedInOutputs = 
    [
      'rediscovered:studded_helmet',
      'rediscovered:studded_chestplate',
      'rediscovered:studded_leggings',
      'rediscovered:studded_boots'
    ]
    removedInOutputs.forEach(removedInOutput => {
        event.remove({input: removedInOutput})
        event.remove({output: removedInOutput})
    })
})

ServerEvents.recipes(event => {
    event.shaped(
      Item.of('rediscovered:studded_boots'),
      [
        ' A ',
        'ABA',
        ' A '
      ],
      {
        A: 'minecraft:leather',
        B: 'minecraft:chainmail_boots'
      }
    ).modifyResult((grid, result) => {
        let item = grid.find(Item.of("minecraft:chainmail_boots"))
        return result.withNBT(item.nbt)
    })
    event.shaped(
      Item.of('rediscovered:studded_leggings'),
      [
        ' A ',
        'ABA',
        ' A '
      ],
      {
        A: 'minecraft:leather',
        B: 'minecraft:chainmail_leggings'
      }
    ).modifyResult((grid, result) => {
        let item = grid.find(Item.of("minecraft:chainmail_leggings"))
        return result.withNBT(item.nbt)
    })
    event.shaped(
      Item.of('rediscovered:studded_chestplate'),
      [
        ' A ',
        'ABA',
        ' A '
      ],
      {
        A: 'minecraft:leather',
        B: 'minecraft:chainmail_chestplate'
      }
    ).modifyResult((grid, result) => {
        let item = grid.find(Item.of("minecraft:chainmail_chestplate"))
        return result.withNBT(item.nbt)
    })
    event.shaped(
      Item.of('rediscovered:studded_helmet'),
      [
        ' A ',
        'ABA',
        ' A '
      ],
      {
        A: 'minecraft:leather',
        B: 'minecraft:chainmail_helmet'
      }
    ).modifyResult((grid, result) => {
        let item = grid.find(Item.of("minecraft:chainmail_helmet"))
        return result.withNBT(item.nbt)
    })
})
