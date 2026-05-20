ItemEvents.tooltip((event) => {

//Potions:
//Astral:
  event.addAdvanced('minecraft:potion',(item,advanced,text)=>{
    if(item.nbt != null){
        if(item.nbt.Potion == "galosphere:astral")
        text.add(1,'§9(Sleep)Walk Through Walls!')
    }
  })
  event.addAdvanced('minecraft:potion',(item,advanced,text)=>{
    if(item.nbt != null){
        if(item.nbt.Potion == "galosphere:long_astral")
        text.add(1,'§9(Sleep)Walk Through Walls')
    }
  })

//Clinging:
  event.addAdvanced('minecraft:potion',(item,advanced,text)=>{
    if(item.nbt != null){
        if(item.nbt.Potion == "alexsmobs:clinging")
        text.add(1,'§9Cling To Ceiling (With Your Head)!')
    }
  })
  event.addAdvanced('minecraft:potion',(item,advanced,text)=>{
    if(item.nbt != null){
        if(item.nbt.Potion == "alexsmobs:long_clinging")
        text.add(1,'§9Cling To Ceiling (With Your Head)!')
    }
  })

//Soulsteal:
  event.addAdvanced('minecraft:potion',(item,advanced,text)=>{
    if(item.nbt != null){
        if(item.nbt.Potion == "alexsmobs:soulsteal")
        text.add(1,'§9Gain Health Equal To Damage Dealt')
    }
  })
  event.addAdvanced('minecraft:potion',(item,advanced,text)=>{
    if(item.nbt != null){
        if(item.nbt.Potion == "alexsmobs:long_soulsteal")
        text.add(1,'§9Gain Health Equal To Damage Dealt')
    }
  })
  event.addAdvanced('minecraft:potion',(item,advanced,text)=>{
    if(item.nbt != null){
        if(item.nbt.Potion == "alexsmobs:strong_soulsteal")
        text.add(1,'§9Gain Health Equal To Damage Dealt')
    }
  })

//Splash Potions:
//Clinging:
  event.addAdvanced('minecraft:splash_potion',(item,advanced,text)=>{
    if(item.nbt != null){
        if(item.nbt.Potion == "alexsmobs:clinging")
        text.add(1,'§9Cling To Ceiling (With Your Head)!')
    }
  })
  event.addAdvanced('minecraft:splash_potion',(item,advanced,text)=>{
    if(item.nbt != null){
        if(item.nbt.Potion == "alexsmobs:long_clinging")
        text.add(1,'§9Cling To Ceiling (With Your Head)!')
    }
  })

//Soulsteal:
  event.addAdvanced('minecraft:splash_potion',(item,advanced,text)=>{
    if(item.nbt != null){
        if(item.nbt.Potion == "alexsmobs:soulsteal")
        text.add(1,'§9Gain Health Equal To Damage Dealt')
    }
  })
  event.addAdvanced('minecraft:splash_potion',(item,advanced,text)=>{
    if(item.nbt != null){
        if(item.nbt.Potion == "alexsmobs:long_soulsteal")
        text.add(1,'§9Gain Health Equal To Damage Dealt')
    }
  })
  event.addAdvanced('minecraft:splash_potion',(item,advanced,text)=>{
    if(item.nbt != null){
        if(item.nbt.Potion == "alexsmobs:strong_soulsteal")
        text.add(1,'§9Gain Health Equal To Damage Dealt')
    }
  })

//Astral:
  event.addAdvanced('minecraft:splash_potion',(item,advanced,text)=>{
    if(item.nbt != null){
        if(item.nbt.Potion == "galosphere:astral")
        text.add(1,'§9(Sleep)Walk Through Walls!')
    }
  })
  event.addAdvanced('minecraft:splash_potion',(item,advanced,text)=>{
    if(item.nbt != null){
        if(item.nbt.Potion == "galosphere:long_astral")
        text.add(1,'§9(Sleep)Walk Through Walls')
    }
  })
})