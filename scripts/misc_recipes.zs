import crafttweaker.api.recipe.Brewing;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemDefinition;
import stdlib.List;
import crafttweaker.api.recipe.MirrorAxis;

#priority 2

// Recipes:

craftingTable.remove(<item:minecraft:jack_o_lantern>);
craftingTable.addShapelessMeta("jack_o_lantern", <item:minecraft:jack_o_lantern>, [<item:minecraft:carved_pumpkin>, <item:minecraft:glowstone_dust>], "", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.remove(<item:minecraft:bread>);
furnace.remove(<item:minecraft:bread>);
furnace.addRecipeMeta("bread_furnace", <item:minecraft:bread>, <item:kubejs:dough>, 0.35, 200, "", <constant:minecraft:recipe/category/cooking:food>);

furnace.addRecipeMeta("tea", <item:coraline_systems:tea_leaves>, <item:minecraft:fern>, 0.35, 200, "", <constant:minecraft:recipe/category/cooking:food>);

craftingTable.remove(<item:minecraft:brewing_stand>);
craftingTable.addShapedMeta("brewing_stand", <item:minecraft:brewing_stand>, [
  [<item:minecraft:iron_nugget>, <item:minecraft:iron_ingot>, <item:minecraft:iron_nugget>], 
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>], 
  [<item:minecraft:smooth_stone_slab>, <item:minecraft:smooth_stone_slab>, <item:minecraft:smooth_stone_slab>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.remove(<item:supplementaries:bomb>);
craftingTable.addShapedMeta("silver_bomb", <item:supplementaries:bomb> * 3, [
  [<item:minecraft:air>, <item:kubejs:silver_nugget>, <item:minecraft:air>], 
  [<item:kubejs:silver_nugget>, <item:minecraft:gunpowder>, <item:kubejs:silver_nugget>], 
  [<item:minecraft:air>, <item:kubejs:silver_nugget>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.remove(<item:supplementaries:pancake>);
craftingTable.addShapelessMeta("supplementaries_pancake", <item:supplementaries:pancake> * 8, [<item:minecraft:sugar>, <item:minecraft:milk_bucket>, <item:kubejs:dough>, <tag:items:forge:eggs>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.remove(<item:supplementaries:candy>);
craftingTable.addShapelessMeta("candy", <item:supplementaries:candy> * 4, [<item:minecraft:sugar>, <item:minecraft:paper>, <item:kubejs:bar_of_chocolate>, <item:minecraft:pink_dye>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.remove(<item:supplementaries:key>);
craftingTable.addShapedMirroredMeta("silver_key", MirrorAxis.HORIZONTAL, <item:supplementaries:key>, [
  [<item:kubejs:silver_ingot>, <item:kubejs:silver_ingot>], 
  [<item:kubejs:silver_nugget>, <item:minecraft:air>],
  [<item:kubejs:silver_nugget>, <item:kubejs:silver_nugget>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.remove(<item:supplementaries:lock_block>);
craftingTable.addShapedMeta("lock_block", <item:supplementaries:lock_block>, [
  [<item:kubejs:silver_ingot>, <tag:items:minecraft:planks>, <item:kubejs:silver_ingot>], 
  [<tag:items:minecraft:planks>, <item:minecraft:redstone>, <tag:items:minecraft:planks>],
  [<item:kubejs:silver_ingot>, <tag:items:minecraft:planks>, <item:kubejs:silver_ingot>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.addShapedMeta("centrifuge", <item:coraline_systems:centrifuge>, [
  [<item:rediscovered:ruby>, <item:kubejs:silver_ingot>, <item:rediscovered:ruby>], 
  [<item:kubejs:silver_ingot>, <item:minecraft:nether_star>, <item:kubejs:silver_ingot>],
  [<item:rediscovered:ruby>, <item:kubejs:silver_ingot>, <item:rediscovered:ruby>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.remove(<item:supplementaries:rope>);
craftingTable.addShapedMeta("supplementaries_rope", <item:supplementaries:rope> * 3, [[<item:spelunkery:tangle_roots>], [<item:spelunkery:tangle_roots>], [<item:spelunkery:tangle_roots>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.remove(<item:supplementaries:sack>);
craftingTable.addShapedMeta("supplementaries_sack", <item:supplementaries:sack>, [
  [<item:minecraft:wheat>, <item:minecraft:string>, <item:minecraft:wheat>], 
  [<item:minecraft:wheat>, <item:minecraft:air>, <item:minecraft:wheat>], 
  [<item:minecraft:wheat>, <item:minecraft:wheat>, <item:minecraft:wheat>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.remove(<item:supplementaries:slingshot>);
craftingTable.addShapedMeta("slingshot", <item:supplementaries:slingshot>, [
  [<item:minecraft:stick>, <item:supplementaries:rope>, <item:minecraft:stick>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.remove(<item:supplementaries:soap_block>);
craftingTable.remove(<item:supplementaries:soap>);
furnace.addRecipeMeta("soap", <item:supplementaries:soap>, <item:supplementaries:soap_block>, 0.35, 200, "", <constant:minecraft:recipe/category/cooking:food>);

craftingTable.remove(<item:supplementaries:wrench>);
craftingTable.addShapedMirroredMeta("magic_spoon", MirrorAxis.HORIZONTAL, <item:supplementaries:wrench>, [
  [<item:minecraft:air>, <item:kubejs:silver_nugget>, <item:kubejs:silver_nugget>], 
  [<item:minecraft:air>, <item:kubejs:silver_ingot>, <item:kubejs:silver_nugget>],
  [<item:kubejs:silver_ingot>, <item:minecraft:air>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.remove(<item:supplementaries:altimeter>);
craftingTable.addShapedMeta("altimeter", <item:supplementaries:altimeter>, [
  [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>], 
  [<item:minecraft:copper_ingot>, <item:minecraft:ender_pearl>, <item:minecraft:copper_ingot>], 
  [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.remove(<item:kubejs:dough>);
craftingTable.addShapedMeta("dough", <item:kubejs:dough> * 8, [
  [<item:kubejs:wheat_flour>, <item:kubejs:wheat_flour>, <item:kubejs:wheat_flour>], 
  [<item:kubejs:wheat_flour>, <tag:items:forge:buckets/water>, <item:kubejs:wheat_flour>], 
  [<item:kubejs:wheat_flour>, <item:kubejs:wheat_flour>, <item:kubejs:wheat_flour>]], "doughs", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("dough_from_water_bottle", <item:kubejs:dough>, [<item:minecraft:potion>.withTag({Potion: "minecraft:water"}), <item:kubejs:wheat_flour>], "doughs_water_bottles", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("dough_from_water_splash_bottle", <item:kubejs:dough>, [<item:minecraft:splash_potion>.withTag({Potion: "minecraft:water"}), <item:kubejs:wheat_flour>], "doughs_water_bottles", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("wheat_flour", <item:kubejs:wheat_flour> * 3, [<item:minecraft:wheat>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("marshmallow", <item:kubejs:marshmallow> * 2, [<item:minecraft:slime_ball>, <item:minecraft:sugar>, <item:kubejs:wheat_flour>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.remove(<item:minecraft:lodestone>);
craftingTable.addShapedMeta("lodestone", <item:minecraft:lodestone>, [
  [<item:minecraft:chiseled_stone_bricks>, <item:minecraft:redstone>, <item:minecraft:chiseled_stone_bricks>], 
  [<item:minecraft:redstone>, <item:minecraft:ender_pearl>, <item:minecraft:redstone>], 
  [<item:minecraft:chiseled_stone_bricks>, <item:minecraft:redstone>, <item:minecraft:chiseled_stone_bricks>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.remove(<item:minecraft:compass>);
craftingTable.addShapedMeta("compass", <item:minecraft:compass>, [
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>], 
  [<item:minecraft:iron_ingot>, <item:minecraft:redstone>, <item:minecraft:iron_ingot>], 
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.remove(<item:supplementaries:flute>);
craftingTable.addShapedMeta("flute", <item:supplementaries:flute>, [
  [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:bamboo>],
  [<item:minecraft:air>, <item:minecraft:bamboo>, <item:minecraft:air>],
  [<item:minecraft:bamboo>, <item:minecraft:air>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.remove(<item:kubejs:honey_cookie>);
craftingTable.addShapelessMeta("honey_cookie", <item:kubejs:honey_cookie> * 4, [<item:kubejs:dough>, <item:minecraft:honey_bottle>, <item:minecraft:sugar>, <item:kubejs:dough>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.remove(<item:kubejs:sweet_berry_cookie>);
craftingTable.addShapelessMeta("sweet_berry_cookie", <item:kubejs:sweet_berry_cookie> * 4, [<item:kubejs:dough>, <item:minecraft:sweet_berries>, <item:minecraft:sugar>, <item:kubejs:dough>], "", <constant:minecraft:recipe/category/crafting:misc>);

furnace.remove(<item:kubejs:fried_egg>);
furnace.addRecipeMeta("fried_egg", <item:kubejs:fried_egg>, <tag:items:forge:eggs>, 0.35, 0, "", <constant:minecraft:recipe/category/cooking:food>);

craftingTable.remove(<item:minecraft:pumpkin>);
craftingTable.addShapedMeta("pumpkin", <item:minecraft:pumpkin>, [
  [<item:kubejs:pumpkin_slice>, <item:kubejs:pumpkin_slice>, <item:kubejs:pumpkin_slice>], 
  [<item:kubejs:pumpkin_slice>, <item:kubejs:pumpkin_slice>, <item:kubejs:pumpkin_slice>], 
  [<item:kubejs:pumpkin_slice>, <item:kubejs:pumpkin_slice>, <item:kubejs:pumpkin_slice>]], "", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.remove(<item:minecraft:mushroom_stew>);
craftingTable.addShapedMeta("mushroom_stew", <item:minecraft:mushroom_stew>, [
  [<item:minecraft:air>, <tag:items:forge:mushrooms>, <item:minecraft:air>], 
  [<tag:items:forge:mushrooms>, <item:kubejs:salt>, <tag:items:forge:mushrooms>],
  [<item:minecraft:air>, <item:minecraft:bowl>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapedMeta("leather", <item:minecraft:leather>, [
[<item:minecraft:air>, <item:kubejs:salt>, <item:minecraft:air>], 
[<item:kubejs:salt>, <item:minecraft:rotten_flesh>, <item:kubejs:salt>], 
[<item:minecraft:air>, <item:kubejs:salt>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.remove(<item:minecraft:feather>);

craftingTable.remove(<item:minecraft:deepslate_tiles>);
craftingTable.addShapedMeta("deepslate_tiles", <item:minecraft:deepslate_tiles> * 4, [
  [<item:minecraft:deepslate>, <item:minecraft:deepslate>], 
  [<item:minecraft:deepslate>, <item:minecraft:deepslate>]], "", <constant:minecraft:recipe/category/crafting:building>);

stoneCutter.remove(<item:minecraft:deepslate_tiles>);
stoneCutter.addRecipe("stonecutter_deepslate_tiles", <item:minecraft:deepslate_tiles>, <item:minecraft:deepslate>);

stoneCutter.remove(<item:clayworks:chiseled_bricks>);
stoneCutter.remove(<item:minecraft:chiseled_stone_bricks>);
stoneCutter.remove(<item:minecraft:chiseled_deepslate>);
stoneCutter.remove(<item:minecraft:chiseled_sandstone>);
stoneCutter.remove(<item:minecraft:chiseled_red_sandstone>);
stoneCutter.remove(<item:minecraft:chiseled_nether_bricks>);
stoneCutter.remove(<item:minecraft:chiseled_polished_blackstone>);
stoneCutter.remove(<item:minecraft:chiseled_quartz_block>);

craftingTable.remove(<item:minecraft:cookie>);
craftingTable.addShapelessMeta("minecraft_cookie", <item:minecraft:cookie> * 4, [<item:kubejs:dough>, <item:minecraft:cocoa_beans>, <item:kubejs:dough>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.remove(<item:minecraft:pumpkin_pie>);
craftingTable.addShapedMeta("pumpkin_pie", <item:minecraft:pumpkin_pie>, [
  [<item:kubejs:pumpkin_slice>, <item:kubejs:pumpkin_slice>, <item:kubejs:pumpkin_slice>], 
  [<item:kubejs:dough>, <item:kubejs:salt>, <item:kubejs:dough>]], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.remove(<item:minecraft:cake>);
craftingTable.addShapedMeta("cake", <item:minecraft:cake>, [
  [<item:kubejs:butter>, <item:minecraft:sweet_berries>, <item:kubejs:butter>], 
  [<item:kubejs:dough>, <item:minecraft:sugar>, <item:kubejs:dough>]], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("vegan_milk", <item:minecraft:milk_bucket>, [<item:minecraft:water_bucket>, <item:coraline_systems:walnut>, <item:coraline_systems:walnut>, <item:coraline_systems:walnut>, <item:coraline_systems:walnut>], "", <constant:minecraft:recipe/category/crafting:misc>);
craftingTable.addShapelessMeta("vegan_milk_bottle", <item:coraline_systems:milk_bottle>, [<item:minecraft:potion>.withTag({Potion: "minecraft:water"}), <item:coraline_systems:walnut>], "vegan_milk_bottles", <constant:minecraft:recipe/category/crafting:misc>);
craftingTable.addShapelessMeta("vegan_milk_splash_bottle", <item:coraline_systems:milk_bottle>, [<item:minecraft:splash_potion>.withTag({Potion: "minecraft:water"}), <item:coraline_systems:walnut>], "vegan_milk_bottles", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.remove(<item:minecraft:golden_carrot>);
craftingTable.addShapedMeta("golden_carrot", <item:minecraft:golden_carrot>, [
  [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], 
  [<item:minecraft:gold_ingot>, <item:minecraft:carrot>, <item:minecraft:gold_ingot>],
  [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.remove(<item:minecraft:bamboo_planks>);
craftingTable.addShapelessMeta("bamboo_planks", <item:minecraft:bamboo_planks> * 2, [<item:minecraft:stripped_bamboo_block>], "", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.remove(<item:minecraft:oak_boat>);
craftingTable.addShapedMeta("boat", <item:minecraft:oak_boat>, [ 
  [<tag:items:minecraft:planks>, <item:minecraft:air>, <tag:items:minecraft:planks>], 
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.addShapedMeta("totem_of_undying", <item:minecraft:totem_of_undying>, [
  [<item:minecraft:air>, <item:minecraft:gold_block>, <item:minecraft:air>], 
  [<item:minecraft:gold_block>, <item:alexsmobs:soul_heart>, <item:minecraft:gold_block>], 
  [<item:minecraft:air>, <item:minecraft:gold_block>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.remove(<item:minecraft:flower_pot>);
craftingTable.addShapedMeta("flower_pot", <item:minecraft:flower_pot> * 3, [
  [<item:minecraft:brick>, <item:minecraft:air>, <item:minecraft:brick>], 
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.remove(<item:minecraft:white_wool>);
craftingTable.addShapedMeta("wool_from_string", <item:minecraft:white_wool>, [
  [<item:minecraft:string>, <item:minecraft:string>],
  [<item:minecraft:string>, <item:minecraft:string>]], "white_wools", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.remove(<item:minecraft:magma_cream>);
craftingTable.addShapedMeta("magma_cream", <item:minecraft:magma_cream> * 8, [
  [<item:minecraft:slime_ball>, <item:minecraft:slime_ball>, <item:minecraft:slime_ball>],
  [<item:minecraft:slime_ball>, <item:alexsmobs:lava_bottle>, <item:minecraft:slime_ball>],
  [<item:minecraft:slime_ball>, <item:minecraft:slime_ball>, <item:minecraft:slime_ball>]], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.remove(<item:minecraft:magma_block>);
craftingTable.addShapedMeta("magma_block", <item:minecraft:magma_block> * 8, [
  [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
  [<item:minecraft:cobblestone>, <item:minecraft:lava_bucket>, <item:minecraft:cobblestone>],
  [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]], "", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.addShapelessMeta("slime_ball_block", <item:minecraft:slime_ball> * 9, [<item:minecraft:slime_block>], "", <constant:minecraft:recipe/category/crafting:misc>);

furnace.remove(<item:minecraft:smooth_stone>);
stoneCutter.addRecipe("stonecutter_smooth_stone", <item:minecraft:smooth_stone>, <item:minecraft:stone>);

stoneCutter.remove(<item:minecraft:chiseled_deepslate>);

craftingTable.remove(<item:minecraft:chiseled_deepslate>);
craftingTable.addShapedMeta("chiseled_deepslate", <item:minecraft:chiseled_deepslate>, [
  [<item:minecraft:deepslate_tile_slab>],
  [<item:minecraft:deepslate_tile_slab>]], "", <constant:minecraft:recipe/category/crafting:building>);

furnace.addRecipeMeta("music_disc_to_dye", <item:minecraft:black_dye>, <tag:items:gamma:music_discs>, 0.35, 200, "", <constant:minecraft:recipe/category/cooking:misc>);
furnace.addRecipeMeta("ambient_disc_to_dye", <item:minecraft:blue_dye>, <tag:items:gamma:ambient_discs>, 0.35, 200, "", <constant:minecraft:recipe/category/cooking:misc>);

craftingTable.remove(<item:minecraft:furnace>);
craftingTable.addShapedMeta("furnace", <item:minecraft:furnace>, [
  [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>], 
  [<item:minecraft:cobblestone>, <item:minecraft:air>, <item:minecraft:cobblestone>],
  [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.remove(<item:minecraft:slime_ball>);

craftingTable.remove(<item:minecraft:cobblestone>);

/*
craftingTable.addShapelessMeta("scroll_clean_map", <item:minecraft:map>, [<item:supplementaries:cartographers_quill>, <item:supplementaries:soap>], "", <constant:minecraft:recipe/category/crafting:misc>);
  */

craftingTable.remove(<item:supplementaries:doormat>);
craftingTable.addShapedMeta("doormat", <item:supplementaries:doormat>, [
  [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.remove(<item:minecraft:mossy_stone_bricks>);
craftingTable.remove(<item:minecraft:mossy_cobblestone>);

craftingTable.remove(<item:minecraft:glow_item_frame>);
craftingTable.addShapelessMeta("glow_item_frame", <item:minecraft:glow_item_frame>, [<item:minecraft:item_frame>, <item:kubejs:glow_paste>], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.remove(<item:minecraft:hopper>);
craftingTable.addShapedMeta("hopper", <item:minecraft:hopper> * 3, [
  [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
  [<item:minecraft:iron_ingot>, <tag:items:forge:chests/wooden>, <item:minecraft:iron_ingot>],
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.remove(<item:minecraft:blaze_powder>);
craftingTable.addShapelessMeta("blaze_powder", <item:minecraft:blaze_powder> * 3, [<item:minecraft:blaze_rod>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.remove(<item:minecraft:ender_chest>);
craftingTable.addShapedMeta("ender_chest", <item:minecraft:ender_chest>, [
  [<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>],
  [<item:minecraft:obsidian>, <item:minecraft:ender_pearl>, <item:minecraft:obsidian>],
  [<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.addShapedMeta("sponge", <item:minecraft:sponge> * 3, [
  [<tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>],
  [<tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>],
  [<tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>]], "", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.remove(<item:minecraft:fire_charge>);
  
craftingTable.remove(<item:minecraft:tinted_glass>);
furnace.addRecipeMeta("tinted_glass", <item:minecraft:tinted_glass>, <item:minecraft:gravel>, 0.35, 200, "", <constant:minecraft:recipe/category/cooking:blocks>);

craftingTable.remove(<item:minecraft:granite>);
craftingTable.remove(<item:minecraft:andesite>);
craftingTable.remove(<item:minecraft:diorite>);
craftingTable.remove(<item:minecraft:tuff>);

craftingTable.addShapedMeta("deepslate_slab", <item:minecraft:cobbled_deepslate_slab> * 6, [
  [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:deepslate>]], "", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.addShapedMeta("deepslate_stairs", <item:minecraft:cobbled_deepslate_stairs> * 4, [
  [<item:minecraft:deepslate>, <item:minecraft:air>, <item:minecraft:air>],
  [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:air>],
  [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:deepslate>]], "", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.addShapedMeta("deepslate_wall", <item:minecraft:cobbled_deepslate_wall> * 6, [
  [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:deepslate>],
  [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:deepslate>]], "", <constant:minecraft:recipe/category/crafting:building>);

stoneCutter.addRecipe("deepslate_wall_stonecutter", <item:minecraft:cobbled_deepslate_wall>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("deepslate_slab_stonecutter", <item:minecraft:cobbled_deepslate_slab> * 2, <item:minecraft:deepslate>);
stoneCutter.addRecipe("deepslate_stairs_stonecutter", <item:minecraft:cobbled_deepslate_stairs>, <item:minecraft:deepslate>);

craftingTable.remove(<item:minecraft:beehive>);
craftingTable.addShapedMeta("beehive", <item:minecraft:beehive>, [
  [<tag:items:minecraft:planks>, <item:minecraft:blue_dye>, <tag:items:minecraft:planks>],
  [<item:minecraft:blue_dye>, <item:minecraft:honeycomb>, <item:minecraft:blue_dye>],
  [<tag:items:minecraft:planks>, <item:minecraft:blue_dye>, <tag:items:minecraft:planks>]], "", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.remove(<item:minecraft:chest>);
craftingTable.addShapedMeta("chest", <item:minecraft:chest>, [
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>], 
  [<tag:items:minecraft:planks>, <item:minecraft:air>, <tag:items:minecraft:planks>], 
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]], "", <constant:minecraft:recipe/category/crafting:building>);

stoneCutter.addRecipe("stonecutter_granite_tiles", <item:minecraft:polished_granite>, <item:minecraft:granite>);

craftingTable.remove(<item:minecraft:prismarine_bricks>);
craftingTable.addShapedMeta("prismarine_bricks", <item:minecraft:prismarine_bricks> * 4, [
  [<item:minecraft:prismarine>, <item:minecraft:prismarine>],
  [<item:minecraft:prismarine>, <item:minecraft:prismarine>]], "", <constant:minecraft:recipe/category/crafting:building>);

stoneCutter.addRecipe("stonecutter_prismarine_bricks", <item:minecraft:prismarine_bricks>, <item:minecraft:prismarine>);

craftingTable.remove(<item:minecraft:dark_prismarine>);
craftingTable.addShapedMeta("dark_prismarine", <item:minecraft:dark_prismarine> * 8, [
  [<item:minecraft:prismarine>, <item:minecraft:prismarine>, <item:minecraft:prismarine>],
  [<item:minecraft:prismarine>, <item:minecraft:black_dye>, <item:minecraft:prismarine>],
  [<item:minecraft:prismarine>, <item:minecraft:prismarine>, <item:minecraft:prismarine>]], "", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.remove(<item:minecraft:prismarine>);

craftingTable.addShapelessMeta("tooth_to_bone_beal", <item:minecraft:bone_meal> * 3, [<item:kubejs:sharp_tooth>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.remove(<item:minecraft:stone_pickaxe>);
craftingTable.addShapedMeta("stone_pickaxe", <item:minecraft:stone_pickaxe>, [
  [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.addShapelessMeta("chocolate_bar", <item:kubejs:bar_of_chocolate> * 2, [<item:coraline_systems:milk_bottle>, <item:kubejs:butter>, <item:minecraft:cocoa_beans>, <item:minecraft:sugar>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("omelette", <item:kubejs:omelette>, [<item:kubejs:fried_egg>, <item:coraline_systems:milk_bottle>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("honeyed_apple", <item:kubejs:honeyed_apple> * 2, [<item:coraline_systems:apple>, <item:coraline_systems:apple>, <item:minecraft:honey_bottle>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapedMeta("waffle", <item:kubejs:waffle> * 2, [
  [<item:kubejs:dough>, <item:kubejs:butter>], 
  [<item:kubejs:butter>, <item:kubejs:dough>]], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapedMeta("golden_potato", <item:kubejs:golden_potato>, [
  [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], 
  [<item:minecraft:gold_ingot>, <item:minecraft:potato>, <item:minecraft:gold_ingot>],
  [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("soul_dust_heart", <item:coraline_systems:timedust> * 8, [<item:alexsmobs:soul_heart>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("banana_bread", <item:kubejs:banana_bread> * 2, [<item:kubejs:butter>, <item:coraline_systems:banana>, <item:minecraft:sugar>, <item:kubejs:dough>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("butter_bucket", <item:kubejs:butter> * 8, [<item:minecraft:milk_bucket>, <item:minecraft:milk_bucket>], "", <constant:minecraft:recipe/category/crafting:misc>);
craftingTable.addShapelessMeta("butter_bottle", <item:kubejs:butter> * 2, [<item:coraline_systems:milk_bottle>, <item:coraline_systems:milk_bottle>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapedMeta("music_disc_droopy2", <item:kubejs:music_disc_droopy2>, [
  [<item:minecraft:air>, <item:minecraft:amethyst_shard>, <item:minecraft:air>], 
  [<item:minecraft:amethyst_shard>, <item:minecraft:music_disc_pigstep>, <item:minecraft:amethyst_shard>],
  [<item:minecraft:air>, <item:minecraft:amethyst_shard>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.addShapedMeta("rock_salt", <item:kubejs:rock_salt>, [
  [<item:kubejs:salt>, <item:kubejs:salt>],
  [<item:kubejs:salt>, <item:kubejs:salt>]], "", <constant:minecraft:recipe/category/crafting:misc>);

// Copper Tools:
craftingTable.addShapedMirroredMeta("copper_axe", MirrorAxis.HORIZONTAL, <item:kubejs:copper_axe>, [
  [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
  [<item:minecraft:copper_ingot>, <item:minecraft:stick>],
  [<item:minecraft:air>, <item:minecraft:stick>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.addShapedMirroredMeta("copper_hoe", MirrorAxis.HORIZONTAL, <item:kubejs:copper_hoe>, [
  [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
  [<item:minecraft:air>, <item:minecraft:stick>],
  [<item:minecraft:air>, <item:minecraft:stick>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.addShapedMeta("copper_pickaxe", <item:kubejs:copper_pickaxe>, [
  [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.addShapedMeta("copper_shovel", <item:kubejs:copper_shovel>, [
  [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.addShapedMeta("copper_sword", <item:kubejs:copper_sword>, [
  [<item:minecraft:copper_ingot>],
  [<item:minecraft:copper_ingot>],
  [<item:minecraft:stick>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.addShapedMeta("lava_lamp", <item:kubejs:lava_lamp>, [
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
  [<item:minecraft:iron_ingot>, <item:minecraft:lava_bucket>, <item:minecraft:iron_ingot>],
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.addShapedMeta("bismuth_pickaxe", <item:kubejs:bismuth_pickaxe>, [
  [<item:etcetera:bismuth_ingot>, <item:etcetera:bismuth_ingot>, <item:etcetera:bismuth_ingot>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.addShapelessMeta("glazed_steak", <item:kubejs:glazed_steak> * 2, [<item:minecraft:cooked_beef>, <item:minecraft:cooked_beef>, <item:minecraft:honey_bottle>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.remove(<item:spelunkery:glowstick>);
craftingTable.addShapelessMeta("glowstick", <item:spelunkery:glowstick> * 4, [<item:minecraft:slime_ball>, <item:kubejs:glow_paste>, <item:minecraft:stick>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapedMeta("torch", <item:coraline_systems:torch> * 4, [
  [<tag:items:minecraft:coals>], 
  [<item:minecraft:stick>]], "", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.addShapelessMeta("glow_paste_glow_ink_sac", <item:kubejs:glow_paste> * 3, [<item:minecraft:glow_ink_sac>], "", <constant:minecraft:recipe/category/crafting:misc>);
furnace.addRecipeMeta("glow_paste_smelt", <item:kubejs:glow_paste>, <item:minecraft:glow_lichen>, 0.35, 200, "", <constant:minecraft:recipe/category/cooking:misc>);

furnace.addRecipeMeta("cobalt_smelt", <item:kubejs:cobalt>, <item:alexsmobs:soul_heart>, 0.35, 200, "", <constant:minecraft:recipe/category/cooking:misc>);

craftingTable.addShapedMeta("spawner", <item:minecraft:spawner>, [
  [<item:kubejs:cobalt>, <item:kubejs:cobalt>, <item:kubejs:cobalt>],
  [<item:kubejs:cobalt>, <item:rediscovered:ruby>, <item:kubejs:cobalt>],
  [<item:kubejs:cobalt>, <item:kubejs:cobalt>, <item:kubejs:cobalt>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.addShapedMeta("cobalt_pants", <item:coraline_systems:cobalt_pants>, [
  [<item:kubejs:cobalt>, <item:kubejs:cobalt>, <item:kubejs:cobalt>],
  [<item:kubejs:cobalt>, <item:minecraft:air>, <item:kubejs:cobalt>],
  [<item:kubejs:cobalt>, <item:minecraft:air>, <item:kubejs:cobalt>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.addShapedMeta("cobalt_sword", <item:kubejs:cobalt_sword>, [
  [<item:kubejs:cobalt>],
  [<item:kubejs:cobalt>],
  [<item:minecraft:stick>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.remove(<item:quark:backpack>);
craftingTable.addShapedMeta("backpack_quark", <item:quark:backpack>, [
  [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>],
  [<item:minecraft:string>, <item:minecraft:iron_ingot>, <item:minecraft:string>],
  [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.remove(<item:upgrade_aquatic:mulberry_pie>);
craftingTable.addShapedMeta("mulberry_pie", <item:upgrade_aquatic:mulberry_pie>, [
  [<item:upgrade_aquatic:mulberry>, <item:kubejs:butter>, <item:upgrade_aquatic:mulberry>], 
  [<item:kubejs:dough>, <item:minecraft:sugar>, <item:kubejs:dough>]], "", <constant:minecraft:recipe/category/crafting:misc>);

// Rediscovered:
craftingTable.remove(<item:kubejs:gear>);
craftingTable.addShapedMeta("gear", <item:kubejs:gear> * 8, [
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>], 
  [<item:minecraft:iron_ingot>, <item:minecraft:quartz>, <item:minecraft:iron_ingot>],
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:misc>);

// Large Bricks:
craftingTable.remove(<item:rediscovered:large_bricks>);
craftingTable.addShapedMeta("", <item:rediscovered:large_bricks> * 4, [
  [<item:minecraft:bricks>, <item:minecraft:bricks>],
  [<item:minecraft:bricks>, <item:minecraft:bricks>]], "", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.addShapedMeta("large_brick_stairs", <item:rediscovered:large_brick_stairs> * 4, [
  [<item:rediscovered:large_bricks>, <item:minecraft:air>, <item:minecraft:air>],
  [<item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>, <item:minecraft:air>],
  [<item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>]], "", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.addShapedMeta("large_brick_slab", <item:rediscovered:large_brick_slab> * 6, [
  [<item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>]], "", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.addShapedMeta("large_brick_wall", <item:rediscovered:large_brick_wall> * 6, [
  [<item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>],
  [<item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>]], "", <constant:minecraft:recipe/category/crafting:building>);

stoneCutter.addRecipe("large_brick_stairs_stonecutter", <item:rediscovered:large_brick_stairs>, <item:rediscovered:large_bricks>);
stoneCutter.addRecipe("large_brick_slab_stonecutter", <item:rediscovered:large_brick_slab> * 2, <item:rediscovered:large_bricks>);
stoneCutter.addRecipe("large_brick_wall_stonecutter", <item:rediscovered:large_brick_wall>, <item:rediscovered:large_bricks>);

// Plate Armor:
craftingTable.addShapedMeta("plate_helmet", <item:rediscovered:plate_helmet>, [
  [<item:kubejs:silver_ingot>, <item:kubejs:silver_ingot>, <item:kubejs:silver_ingot>], 
  [<item:kubejs:silver_ingot>, <item:minecraft:air>, <item:kubejs:silver_ingot>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.addShapedMeta("plate_chestplate", <item:rediscovered:plate_chestplate>, [
  [<item:kubejs:silver_ingot>, <item:minecraft:air>, <item:kubejs:silver_ingot>], 
  [<item:kubejs:silver_ingot>, <item:kubejs:silver_ingot>, <item:kubejs:silver_ingot>],
  [<item:kubejs:silver_ingot>, <item:kubejs:silver_ingot>, <item:kubejs:silver_ingot>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.addShapedMeta("plate_leggings", <item:rediscovered:plate_leggings>, [
  [<item:kubejs:silver_ingot>, <item:kubejs:silver_ingot>, <item:kubejs:silver_ingot>], 
  [<item:kubejs:silver_ingot>, <item:minecraft:air>, <item:kubejs:silver_ingot>],
  [<item:kubejs:silver_ingot>, <item:minecraft:air>, <item:kubejs:silver_ingot>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.addShapedMeta("plate_boots", <item:rediscovered:plate_boots>, [
  [<item:kubejs:silver_ingot>, <item:minecraft:air>, <item:kubejs:silver_ingot>], 
  [<item:kubejs:silver_ingot>, <item:minecraft:air>, <item:kubejs:silver_ingot>]], "", <constant:minecraft:recipe/category/crafting:equipment>);

craftingTable.remove(<item:rediscovered:studded_helmet>);
craftingTable.remove(<item:rediscovered:studded_chestplate>);
craftingTable.remove(<item:rediscovered:studded_leggings>);
craftingTable.remove(<item:rediscovered:studded_boots>);

furnace.addRecipeMeta("concrete", <item:coraline_systems:concrete>, <item:kubejs:cement>, 0.35, 200, "", <constant:minecraft:recipe/category/cooking:blocks>);

craftingTable.addShapedMeta("drum", <item:etcetera:drum>, [
  [<item:minecraft:string>, <item:minecraft:paper>, <item:minecraft:string>],
  [<item:minecraft:air>, <item:minecraft:note_block>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.addShapedMeta("maraca", <item:alexsmobs:maraca> * 3, [
  [<item:minecraft:air>, <tag:items:minecraft:planks>, <item:minecraft:air>],
  [<tag:items:minecraft:planks>, <item:minecraft:sand>, <tag:items:minecraft:planks>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

// Potions:
  // Lava Vision:
    brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "alexsmobs:lava_vision"}), <item:rediscovered:ruby_eye>, <item:alexsmobs:lava_bottle>);
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:lava_vision"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:lava_vision"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:long_lava_vision"}), <item:minecraft:redstone>, <item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:lava_vision"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:long_lava_vision"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:long_lava_vision"}));

  // Soulsteal:
    brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "alexsmobs:soulsteal"}), <item:alexsmobs:soul_heart>, <item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:soulsteal"}), <item:alexsmobs:soul_heart>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:soulsteal"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:soulsteal"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:long_soulsteal"}), <item:minecraft:redstone>, <item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:soulsteal"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:long_soulsteal"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:long_soulsteal"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:strong_soulsteal"}), <item:minecraft:glowstone_dust>, <item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:soulsteal"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:strong_soulsteal"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:strong_soulsteal"}));

  // Knockback Resistance:
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:knockback_resistance"}), <item:alexsmobs:bear_fur>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:knockback_resistance"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:knockback_resistance"}));
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:long_knockback_resistance"}), <item:minecraft:redstone>, <item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:knockback_resistance"}));
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:long_knockback_resistance"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:long_knockback_resistance"}));
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:strong_knockback_resistance"}), <item:minecraft:glowstone_dust>, <item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:knockback_resistance"}));
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:strong_knockback_resistance"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:strong_knockback_resistance"}));

  // Leaping:
    brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "minecraft:leaping"}), <item:minecraft:slime_ball>, <item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:leaping"}), <item:minecraft:slime_ball>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:leaping"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "minecraft:leaping"}));

  // Strength:
    brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "minecraft:strength"}), <item:kubejs:golden_potato>, <item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:strength"}), <item:kubejs:golden_potato>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:strength"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "minecraft:strength"}));

  // Night Vision:
    brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "minecraft:night_vision"}), <item:minecraft:golden_carrot>, <item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:night_vision"}), <item:minecraft:golden_carrot>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:night_vision"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "minecraft:night_vision"}));

  // Water Breating:
    brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "minecraft:water_breathing"}), <item:upgrade_aquatic:mulberry>, <item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:water_breathing"}), <item:upgrade_aquatic:mulberry>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:water_breathing"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "minecraft:water_breathing"}));

  // Healing:
    brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "minecraft:healing"}), <item:minecraft:honeycomb>, <item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:healing"}), <item:minecraft:honeycomb>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:healing"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "minecraft:healing"}));

// Limestone:
  stoneCutter.remove(<item:quark:limestone_bricks>);
  stoneCutter.remove(<item:quark:limestone_bricks_stairs>);
  stoneCutter.remove(<item:quark:limestone_bricks_slab>);
  stoneCutter.remove(<item:quark:limestone_bricks_wall>);
  stoneCutter.remove(<item:quark:limestone>);
  stoneCutter.remove(<item:quark:limestone_stairs>);
  stoneCutter.remove(<item:quark:limestone_slab>);
  stoneCutter.remove(<item:quark:limestone_wall>);

  craftingTable.addShapedMeta("limestone_bricks", <item:quark:limestone_bricks> * 4, [
    [<item:quark:limestone>, <item:quark:limestone>],
    [<item:quark:limestone>, <item:quark:limestone>]], "", <constant:minecraft:recipe/category/crafting:building>);

  stoneCutter.addRecipe("stonecutter_limestone_bricks", <item:quark:limestone_bricks>, <item:quark:limestone>);

  craftingTable.addShapedMeta("limestone_brick_stairs", <item:quark:limestone_bricks_stairs> * 4, [
    [<item:quark:limestone_bricks>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:minecraft:air>],
    [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:quark:limestone_bricks>]], "", <constant:minecraft:recipe/category/crafting:building>);

  stoneCutter.addRecipe("stonecutter_limestone_bricks_stairs", <item:quark:limestone_bricks_stairs>, <item:quark:limestone_bricks>);

  craftingTable.addShapedMeta("limestone_brick_slab", <item:quark:limestone_bricks_slab> * 6, [
    [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:quark:limestone_bricks>]], "", <constant:minecraft:recipe/category/crafting:building>);

  stoneCutter.addRecipe("stonecutter_limestone_bricks_slab", <item:quark:limestone_bricks_slab> * 2, <item:quark:limestone_bricks>);

  craftingTable.addShapedMeta("limestone_brick_wall", <item:quark:limestone_bricks_wall> * 6, [
    [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:quark:limestone_bricks>],
    [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:quark:limestone_bricks>]], "", <constant:minecraft:recipe/category/crafting:building>);

  stoneCutter.addRecipe("stonecutter_limestone_bricks_wall", <item:quark:limestone_bricks_wall>, <item:quark:limestone_bricks>);

  craftingTable.addShapedMeta("limestone_stairs", <item:quark:limestone_stairs> * 4, [
    [<item:quark:limestone>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:quark:limestone>, <item:quark:limestone>, <item:minecraft:air>],
    [<item:quark:limestone>, <item:quark:limestone>, <item:quark:limestone>]], "", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.addShapedMeta("limestone_slab", <item:quark:limestone_slab> * 6, [
    [<item:quark:limestone>, <item:quark:limestone>, <item:quark:limestone>]], "", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.addShapedMeta("limestone_wall", <item:quark:limestone_wall> * 6, [
    [<item:quark:limestone>, <item:quark:limestone>, <item:quark:limestone>],
    [<item:quark:limestone>, <item:quark:limestone>, <item:quark:limestone>]], "", <constant:minecraft:recipe/category/crafting:building>);

  stoneCutter.addRecipe("stonecutter_limestone_stairs", <item:quark:limestone_stairs>, <item:quark:limestone>);
  stoneCutter.addRecipe("stonecutter_limestone_slab", <item:quark:limestone_slab> * 2, <item:quark:limestone>);
  stoneCutter.addRecipe("stonecutter_limestone_wall", <item:quark:limestone_wall>, <item:quark:limestone>);

// Shale:

  stoneCutter.remove(<item:quark:shale_bricks>);
  stoneCutter.remove(<item:quark:shale_bricks_stairs>);
  stoneCutter.remove(<item:quark:shale_bricks_slab>);
  stoneCutter.remove(<item:quark:shale_bricks_wall>);
  stoneCutter.remove(<item:quark:shale>);
  stoneCutter.remove(<item:quark:shale_stairs>);
  stoneCutter.remove(<item:quark:shale_slab>);
  stoneCutter.remove(<item:quark:shale_wall>);

  stoneCutter.addRecipe("stonecutter_shale_bricks", <item:quark:shale_bricks>, <item:quark:shale>);
  stoneCutter.addRecipe("stonecutter_shale_bricks_stairs", <item:quark:shale_bricks_stairs>, <item:quark:shale_bricks>);
  stoneCutter.addRecipe("stonecutter_shale_bricks_slab", <item:quark:shale_bricks_slab> * 2, <item:quark:shale_bricks>);
  stoneCutter.addRecipe("stonecutter_shale_bricks_wall", <item:quark:shale_bricks_wall>, <item:quark:shale_bricks>);
  stoneCutter.addRecipe("stonecutter_shale_stairs", <item:quark:shale_stairs>, <item:quark:shale>);
  stoneCutter.addRecipe("stonecutter_shale_slab", <item:quark:shale_slab> * 2, <item:quark:shale>);
  stoneCutter.addRecipe("stonecutter_shale_wall", <item:quark:shale_wall>, <item:quark:shale>);

  craftingTable.addShapedMeta("shale_bricks", <item:quark:shale_bricks> * 4, [
    [<item:quark:shale>, <item:quark:shale>],
    [<item:quark:shale>, <item:quark:shale>]], "", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.addShapedMeta("shale_brick_stairs", <item:quark:shale_bricks_stairs> * 4, [
    [<item:quark:shale_bricks>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:quark:shale_bricks>, <item:quark:shale_bricks>, <item:minecraft:air>],
    [<item:quark:shale_bricks>, <item:quark:shale_bricks>, <item:quark:shale_bricks>]], "", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.addShapedMeta("shale_brick_slab", <item:quark:shale_bricks_slab> * 6, [
    [<item:quark:shale_bricks>, <item:quark:shale_bricks>, <item:quark:shale_bricks>]], "", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.addShapedMeta("shale_brick_wall", <item:quark:shale_bricks_wall> * 6, [
    [<item:quark:shale_bricks>, <item:quark:shale_bricks>, <item:quark:shale_bricks>],
    [<item:quark:shale_bricks>, <item:quark:shale_bricks>, <item:quark:shale_bricks>]], "", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.addShapedMeta("shale_stairs", <item:quark:shale_stairs> * 4, [
    [<item:quark:shale>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:quark:shale>, <item:quark:shale>, <item:minecraft:air>],
    [<item:quark:shale>, <item:quark:shale>, <item:quark:shale>]], "", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.addShapedMeta("shale_slab", <item:quark:shale_slab> * 6, [
    [<item:quark:shale>, <item:quark:shale>, <item:quark:shale>]], "", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.addShapedMeta("shale_wall", <item:quark:shale_wall> * 6, [
    [<item:quark:shale>, <item:quark:shale>, <item:quark:shale>],
    [<item:quark:shale>, <item:quark:shale>, <item:quark:shale>]], "", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.remove(<item:quark:paper_wall>);
craftingTable.addShapedMeta("paper_wall", <item:quark:paper_wall> * 8, [
  [<item:minecraft:paper>, <item:minecraft:stick>, <item:minecraft:paper>],
  [<item:minecraft:stick>, <item:minecraft:paper>, <item:minecraft:stick>],
  [<item:minecraft:paper>, <item:minecraft:stick>, <item:minecraft:paper>]], "", <constant:minecraft:recipe/category/crafting:building>);

craftingTable.remove(<item:supplementaries:confetti_popper>);

craftingTable.remove(<item:supplementaries:speaker_block>);
craftingTable.addShapedMeta("speaker_block", <item:supplementaries:speaker_block>, [
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <item:rediscovered:ruby>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.remove(<item:rediscovered:ancient_crying_obsidian>);

// 4.20.4:
craftingTable.remove(<item:supplementaries:cog_block>);
craftingTable.addShapedMeta("cog_block", <item:supplementaries:cog_block> * 3, [
  [<item:kubejs:silver_ingot>, <item:minecraft:redstone>, <item:kubejs:silver_ingot>], 
  [<item:minecraft:redstone>, <item:kubejs:gear>, <item:minecraft:redstone>],
  [<item:kubejs:silver_ingot>, <item:minecraft:redstone>, <item:kubejs:silver_ingot>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

  craftingTable.addShapelessMeta("cake_from_slices", <item:minecraft:cake>, [<item:kubejs:cake_slice>, <item:kubejs:cake_slice>, <item:kubejs:cake_slice>, <item:kubejs:cake_slice>, <item:kubejs:cake_slice>, <item:kubejs:cake_slice>, <item:kubejs:cake_slice>], "", <constant:minecraft:recipe/category/crafting:misc>);
    craftingTable.addShapelessMeta("slice_from_cake", <item:kubejs:cake_slice> * 7, [<item:minecraft:cake>], "", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapedMeta("subwoofer", <item:coraline_systems:subwoofer>, [
  [<item:kubejs:silver_ingot>, <item:kubejs:silver_ingot>, <item:kubejs:silver_ingot>], 
  [<item:kubejs:silver_ingot>, <item:minecraft:note_block>, <item:kubejs:silver_ingot>],
  [<item:kubejs:silver_ingot>, <item:kubejs:silver_ingot>, <item:kubejs:silver_ingot>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.remove(<item:minecraft:lectern>);
craftingTable.addShapedMeta("lectern", <item:minecraft:lectern>, [
  [<tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>], 
  [<item:minecraft:book>, <item:minecraft:book>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

craftingTable.remove(<item:easel_does_it:easel>);
craftingTable.addShapedMirroredMeta("easel", MirrorAxis.HORIZONTAL, <item:easel_does_it:easel>, [
  [<tag:items:forge:dyes>, <item:minecraft:brush>], 
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

// Need more time for this...
craftingTable.remove(<item:supplementaries:redstone_illuminator>);
/*
craftingTable.addShapedMeta("redstone_illuminator", <item:supplementaries:redstone_illuminator>, [
  [<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>], 
  [<item:minecraft:redstone>, <item:minecraft:ender_pearl>, <item:minecraft:redstone>], 
  [<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>]], "", <constant:minecraft:recipe/category/crafting:misc>);
  */

craftingTable.remove(<item:minecraft:dispenser>);
craftingTable.addShapedMeta("dispenser", <item:minecraft:dispenser>, [
  [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
  [<item:minecraft:cobblestone>, <item:minecraft:bow>, <item:minecraft:cobblestone>],
  [<item:minecraft:cobblestone>, <item:minecraft:redstone>, <item:minecraft:cobblestone>]], "", <constant:minecraft:recipe/category/crafting:redstone>);

