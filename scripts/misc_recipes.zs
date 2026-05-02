import crafttweaker.api.recipe.Brewing;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemDefinition;
import stdlib.List;
import crafttweaker.api.recipe.MirrorAxis;

//Recipes:
craftingTable.remove(<item:minecraft:jack_o_lantern>);
craftingTable.addShapeless("jack_o_lantern", <item:minecraft:jack_o_lantern>, [<item:minecraft:carved_pumpkin>, <item:minecraft:glowstone_dust>]);

craftingTable.remove(<item:snowyspirit:eggnog>);
craftingTable.addShapeless("eggnog", <item:snowyspirit:eggnog>, [<tag:items:forge:eggs>, <item:farmersdelight:milk_bottle>.transformReplace(<item:minecraft:glass_bottle>), <item:minecraft:sugar>]);

craftingTable.remove(<item:minecraft:bread>);
furnace.remove(<item:minecraft:bread>);
furnace.addRecipe("bread_furnace", <item:minecraft:bread>, <item:kubejs:dough>, 0.35, 200);

craftingTable.remove(<item:supplementaries:bomb>);
craftingTable.addShaped("silver_bomb", <item:supplementaries:bomb> * 3, [
  [<item:minecraft:air>, <item:galosphere:silver_nugget>, <item:minecraft:air>], 
  [<item:galosphere:silver_nugget>, <item:minecraft:gunpowder>, <item:galosphere:silver_nugget>], 
  [<item:minecraft:air>, <item:galosphere:silver_nugget>, <item:minecraft:air>]]);

craftingTable.remove(<item:supplementaries:pancake>);
craftingTable.addShapeless("supplementaries_pancake", <item:supplementaries:pancake> * 8, [<item:minecraft:sugar>, <item:minecraft:milk_bucket>, <item:kubejs:dough>, <tag:items:forge:eggs>]);

craftingTable.remove(<item:supplementaries:candy>);
craftingTable.addShapeless("candy", <item:supplementaries:candy> * 4, [<item:minecraft:sugar>, <item:minecraft:paper>, <item:kubejs:bar_of_chocolate>, <item:minecraft:pink_dye>]);

craftingTable.remove(<item:supplementaries:feather_block>);
craftingTable.addShapedMirrored("pillow_block", MirrorAxis.HORIZONTAL, <item:supplementaries:feather_block>, [
  [<item:etcetera:cotton_flower>, <item:minecraft:feather>],
  [<item:minecraft:feather>, <item:etcetera:cotton_flower>]]);

craftingTable.remove(<item:supplementaries:key>);
craftingTable.addShaped("silver_key", <item:supplementaries:key>, [
  [<item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>], 
  [<item:galosphere:silver_nugget>, <item:minecraft:air>],
  [<item:galosphere:silver_nugget>, <item:galosphere:silver_nugget>]]);

craftingTable.remove(<item:supplementaries:lock_block>);
craftingTable.addShaped("lock_block", <item:supplementaries:lock_block>, [
  [<item:galosphere:silver_ingot>, <tag:items:minecraft:planks>, <item:galosphere:silver_ingot>], 
  [<tag:items:minecraft:planks>, <item:minecraft:redstone>, <tag:items:minecraft:planks>],
  [<item:galosphere:silver_ingot>, <tag:items:minecraft:planks>, <item:galosphere:silver_ingot>]]);

craftingTable.remove(<item:supplementaries:rope>);
craftingTable.addShaped("supplementaries_rope", <item:supplementaries:rope> * 3, [[<item:spelunkery:tangle_roots>], [<item:spelunkery:tangle_roots>], [<item:spelunkery:tangle_roots>]]);

craftingTable.remove(<item:supplementaries:sack>);
craftingTable.addShaped("supplementaries_sack", <item:supplementaries:sack>, [
  [<item:minecraft:wheat>, <item:minecraft:string>, <item:minecraft:wheat>], 
  [<item:minecraft:wheat>, <item:minecraft:air>, <item:minecraft:wheat>], 
  [<item:minecraft:wheat>, <item:minecraft:wheat>, <item:minecraft:wheat>]]);

craftingTable.remove(<item:supplementaries:slingshot>);
craftingTable.addShaped("slingshot", <item:supplementaries:slingshot>, [
  [<item:minecraft:stick>, <item:supplementaries:rope>, <item:minecraft:stick>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

craftingTable.remove(<item:supplementaries:soap_block>);
craftingTable.remove(<item:supplementaries:soap>);
furnace.addRecipe("soap", <item:supplementaries:soap>, <item:supplementaries:soap_block>, 0.35, 200);

craftingTable.remove(<item:supplementaries:wrench>);
craftingTable.addShaped("magic_spoon", <item:supplementaries:wrench>, [
  [<item:minecraft:air>, <item:galosphere:silver_nugget>, <item:galosphere:silver_nugget>], 
  [<item:minecraft:air>, <item:galosphere:silver_ingot>, <item:galosphere:silver_nugget>],
  [<item:galosphere:silver_ingot>, <item:minecraft:air>, <item:minecraft:air>]]);

craftingTable.remove(<item:supplementaries:altimeter>);
craftingTable.addShaped("altimeter", <item:supplementaries:altimeter>, [
  [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>], 
  [<item:minecraft:copper_ingot>, <item:minecraft:ender_pearl>, <item:minecraft:copper_ingot>], 
  [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>]]);

craftingTable.remove(<item:kubejs:dough>);
craftingTable.addShaped("dough", <item:kubejs:dough> * 8, [
  [<item:kubejs:wheat_flour>, <item:kubejs:wheat_flour>, <item:kubejs:wheat_flour>], 
  [<item:kubejs:wheat_flour>, <tag:items:forge:buckets/water>, <item:kubejs:wheat_flour>], 
  [<item:kubejs:wheat_flour>, <item:kubejs:wheat_flour>, <item:kubejs:wheat_flour>]]);

craftingTable.addShapeless("wheat_flour", <item:kubejs:wheat_flour> * 3, [<item:minecraft:wheat>]);

craftingTable.addShapeless("marshmallow", <item:kubejs:marshmallow> * 2, [<item:minecraft:slime_ball>, <item:minecraft:sugar>, <item:kubejs:wheat_flour>]);

craftingTable.addShapeless("magnetite", <item:spelunkery:raw_magnetite> * 2, [<item:minecraft:redstone>, <item:minecraft:raw_iron>, <item:minecraft:raw_iron>]);

craftingTable.remove(<item:spelunkery:item_magnet>);
craftingTable.addShaped("spelunkery_item_magnet", <item:spelunkery:item_magnet>, [
  [<item:minecraft:redstone>, <item:minecraft:air>, <item:minecraft:amethyst_shard>], 
  [<item:spelunkery:raw_magnetite>, <item:minecraft:air>, <item:spelunkery:raw_magnetite>], 
  [<item:minecraft:air>, <item:spelunkery:raw_magnetite>, <item:minecraft:air>]]);

craftingTable.remove(<item:minecraft:lodestone>);
craftingTable.addShaped("lodestone", <item:minecraft:lodestone>, [
  [<item:minecraft:chiseled_stone_bricks>, <item:spelunkery:raw_magnetite>, <item:minecraft:chiseled_stone_bricks>], 
  [<item:spelunkery:raw_magnetite>, <item:minecraft:ender_pearl>, <item:spelunkery:raw_magnetite>], 
  [<item:minecraft:chiseled_stone_bricks>, <item:spelunkery:raw_magnetite>, <item:minecraft:chiseled_stone_bricks>]]);

craftingTable.remove(<item:minecraft:compass>);
craftingTable.addShaped("compass", <item:minecraft:compass>, [
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>], 
  [<item:minecraft:iron_ingot>, <item:spelunkery:raw_magnetite>, <item:minecraft:iron_ingot>], 
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);

craftingTable.remove(<item:supplementaries:flute>);
craftingTable.addShaped("flute", <item:supplementaries:flute>, [
  [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:bamboo>],
  [<item:minecraft:air>, <item:minecraft:bamboo>, <item:minecraft:air>],
  [<item:minecraft:bamboo>, <item:minecraft:air>, <item:minecraft:air>]]);

//Farmer's Delight:
craftingTable.addShapeless("canvas_sign", <item:farmersdelight:canvas_sign>, [<item:minecraft:oak_sign>, <item:minecraft:paper>]);
craftingTable.addShapeless("canvas_sign_hanging", <item:farmersdelight:hanging_canvas_sign>, [<item:minecraft:oak_hanging_sign>, <item:minecraft:paper>]);

craftingTable.remove(<item:farmersdelight:honey_cookie>);
craftingTable.addShapeless("honey_cookie", <item:farmersdelight:honey_cookie> * 4, [<item:kubejs:dough>, <item:minecraft:honey_bottle>, <item:minecraft:sugar>, <item:kubejs:dough>]);

craftingTable.remove(<item:farmersdelight:sweet_berry_cookie>);
craftingTable.addShapeless("sweet_berry_cookie", <item:farmersdelight:sweet_berry_cookie> * 4, [<item:kubejs:dough>, <item:minecraft:sweet_berries>, <item:minecraft:sugar>, <item:kubejs:dough>]);

furnace.remove(<item:farmersdelight:fried_egg>);
furnace.addRecipe("fried_egg", <item:farmersdelight:fried_egg>, <tag:items:forge:eggs>, 0.35, 200);

craftingTable.addShaped("basket", <item:farmersdelight:basket>, [
  [<item:minecraft:bamboo>, <item:minecraft:air>, <item:minecraft:bamboo>],
  [<item:minecraft:bamboo>, <item:minecraft:air>, <item:minecraft:bamboo>],
  [<item:minecraft:bamboo>, <item:minecraft:bamboo>, <item:minecraft:bamboo>]]);

craftingTable.addShapeless("organic_compost", <item:farmersdelight:organic_compost>, [<item:minecraft:bone_meal>, <item:minecraft:dirt>, <tag:items:gamma:compost_ingredients>]);

craftingTable.remove(<item:minecraft:pumpkin>);
craftingTable.addShaped("pumpkin", <item:minecraft:pumpkin>, [
  [<item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>], 
  [<item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>], 
  [<item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>]]);

craftingTable.remove(<item:minecraft:mushroom_stew>);
craftingTable.addShaped("mushroom_stew", <item:minecraft:mushroom_stew>, [
  [<item:minecraft:air>, <tag:items:forge:mushrooms>, <item:minecraft:air>], 
  [<tag:items:forge:mushrooms>, <item:kubejs:salt>, <tag:items:forge:mushrooms>],
  [<item:minecraft:air>, <item:minecraft:bowl>, <item:minecraft:air>]]);

craftingTable.addShaped("leather", <item:minecraft:leather>, [
[<item:minecraft:air>, <item:kubejs:salt>, <item:minecraft:air>], 
[<item:kubejs:salt>, <item:minecraft:rotten_flesh>, <item:kubejs:salt>], 
[<item:minecraft:air>, <item:kubejs:salt>, <item:minecraft:air>]]);

craftingTable.remove(<item:minecraft:feather>);

//Beds:
craftingTable.remove(<item:minecraft:white_bed>);
craftingTable.addShaped("white_bed", <item:minecraft:white_bed>, [
  [<item:minecraft:white_wool>, <item:minecraft:white_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:gray_bed>);
craftingTable.addShaped("gray_bed", <item:minecraft:gray_bed>, [
  [<item:minecraft:gray_wool>, <item:minecraft:gray_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:purple_bed>);
craftingTable.addShaped("purple_bed", <item:minecraft:purple_bed>, [
  [<item:minecraft:purple_wool>, <item:minecraft:purple_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:light_gray_bed>);
craftingTable.addShaped("light_gray_bed", <item:minecraft:light_gray_bed>, [
  [<item:minecraft:light_gray_wool>, <item:minecraft:light_gray_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:black_bed>);
craftingTable.addShaped("black_bed", <item:minecraft:black_bed>, [
  [<item:minecraft:black_wool>, <item:minecraft:black_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:yellow_bed>);
craftingTable.addShaped("yellow_bed", <item:minecraft:yellow_bed>, [
  [<item:minecraft:yellow_wool>, <item:minecraft:yellow_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:brown_bed>);
craftingTable.addShaped("brown_bed", <item:minecraft:brown_bed>, [
  [<item:minecraft:brown_wool>, <item:minecraft:brown_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:red_bed>);
craftingTable.addShaped("red_bed", <item:minecraft:red_bed>, [
  [<item:minecraft:red_wool>, <item:minecraft:red_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:orange_bed>);
craftingTable.addShaped("orange_bed", <item:minecraft:orange_bed>, [
  [<item:minecraft:orange_wool>, <item:minecraft:orange_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:green_bed>);
craftingTable.addShaped("green_bed", <item:minecraft:green_bed>, [
  [<item:minecraft:green_wool>, <item:minecraft:green_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:cyan_bed>);
craftingTable.addShaped("cyan_bed", <item:minecraft:cyan_bed>, [
  [<item:minecraft:cyan_wool>, <item:minecraft:cyan_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:light_blue_bed>);
craftingTable.addShaped("light_blue_bed", <item:minecraft:light_blue_bed>, [
  [<item:minecraft:light_blue_wool>, <item:minecraft:light_blue_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:magenta_bed>);
craftingTable.addShaped("magenta_bed", <item:minecraft:magenta_bed>, [
  [<item:minecraft:magenta_wool>, <item:minecraft:magenta_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:pink_bed>);
craftingTable.addShaped("pink_bed", <item:minecraft:pink_bed>, [
  [<item:minecraft:pink_wool>, <item:minecraft:pink_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:lime_bed>);
craftingTable.addShaped("lime_bed", <item:minecraft:lime_bed>, [
  [<item:minecraft:lime_wool>, <item:minecraft:lime_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:blue_bed>);
craftingTable.addShaped("blue_bed", <item:minecraft:blue_bed>, [
  [<item:minecraft:blue_wool>, <item:minecraft:blue_wool>, <item:supplementaries:feather_block>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.addShapeless("dye_black_bed", <item:minecraft:black_bed>, [<tag:items:minecraft:beds>, <item:minecraft:black_dye>]);
craftingTable.addShapeless("dye_blue_bed", <item:minecraft:blue_bed>, [<tag:items:minecraft:beds>, <item:minecraft:blue_dye>]);
craftingTable.addShapeless("dye_brown_bed", <item:minecraft:brown_bed>, [<tag:items:minecraft:beds>, <item:minecraft:brown_dye>]);
craftingTable.addShapeless("dye_cyan_bed", <item:minecraft:cyan_bed>, [<tag:items:minecraft:beds>, <item:minecraft:cyan_dye>]);
craftingTable.addShapeless("dye_gray_bed", <item:minecraft:gray_bed>, [<tag:items:minecraft:beds>, <item:minecraft:gray_dye>]);
craftingTable.addShapeless("dye_green_bed", <item:minecraft:green_bed>, [<tag:items:minecraft:beds>, <item:minecraft:green_dye>]);
craftingTable.addShapeless("dye_light_blue_bed", <item:minecraft:light_blue_bed>, [<tag:items:minecraft:beds>, <item:minecraft:light_blue_dye>]);
craftingTable.addShapeless("dye_light_gray_bed", <item:minecraft:light_gray_bed>, [<tag:items:minecraft:beds>, <item:minecraft:light_gray_dye>]);
craftingTable.addShapeless("dye_lime_bed", <item:minecraft:lime_bed>, [<tag:items:minecraft:beds>, <item:minecraft:lime_dye>]);
craftingTable.addShapeless("dye_magenta_bed", <item:minecraft:magenta_bed>, [<tag:items:minecraft:beds>, <item:minecraft:magenta_dye>]);
craftingTable.addShapeless("dye_orange_bed", <item:minecraft:orange_bed>, [<tag:items:minecraft:beds>, <item:minecraft:orange_dye>]);
craftingTable.addShapeless("dye_pink_bed", <item:minecraft:pink_bed>, [<tag:items:minecraft:beds>, <item:minecraft:pink_dye>]);
craftingTable.addShapeless("dye_purple_bed", <item:minecraft:purple_bed>, [<tag:items:minecraft:beds>, <item:minecraft:purple_dye>]);
craftingTable.addShapeless("dye_red_bed", <item:minecraft:red_bed>, [<tag:items:minecraft:beds>, <item:minecraft:red_dye>]);
craftingTable.addShapeless("dye_white_bed", <item:minecraft:white_bed>, [<tag:items:minecraft:beds>, <item:minecraft:white_dye>]);
craftingTable.addShapeless("dye_yellow_bed", <item:minecraft:yellow_bed>, [<tag:items:minecraft:beds>, <item:minecraft:yellow_dye>]);

craftingTable.remove(<item:minecraft:deepslate_tiles>);
craftingTable.addShaped("deepslate_tiles", <item:minecraft:deepslate_tiles> * 4, [
  [<item:minecraft:deepslate>, <item:minecraft:deepslate>], 
  [<item:minecraft:deepslate>, <item:minecraft:deepslate>]]);

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
craftingTable.addShapeless("minecraft_cookie", <item:minecraft:cookie> * 4, [<item:kubejs:dough>, <item:minecraft:cocoa_beans>, <item:kubejs:dough>]);

craftingTable.remove(<item:minecraft:pumpkin_pie>);
craftingTable.addShaped("pumpkin_pie", <item:minecraft:pumpkin_pie>, [
  [<item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>], 
  [<item:kubejs:dough>, <item:kubejs:salt>, <item:kubejs:dough>]]);

craftingTable.remove(<item:minecraft:cake>);
craftingTable.addShaped("cake", <item:minecraft:cake>, [
  [<item:kubejs:butter>, <item:minecraft:sweet_berries>, <item:kubejs:butter>], 
  [<item:kubejs:dough>, <item:minecraft:sugar>, <item:kubejs:dough>]]);

craftingTable.addShapeless("vegan_milk", <item:minecraft:milk_bucket>, [<item:minecraft:water_bucket>, <item:ecologics:walnut>, <item:ecologics:walnut>, <item:ecologics:walnut>, <item:ecologics:walnut>]);

craftingTable.addShapeless("vegan_milk_bottle", <item:farmersdelight:milk_bottle>, [<item:minecraft:potion>.withTag({Potion: "minecraft:water"}), <item:ecologics:walnut>]);

craftingTable.remove(<item:minecraft:golden_carrot>);
craftingTable.addShaped("golden_carrot", <item:minecraft:golden_carrot>, [
  [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], 
  [<item:minecraft:gold_ingot>, <item:minecraft:carrot>, <item:minecraft:gold_ingot>],
  [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]]);

craftingTable.remove(<item:minecraft:bamboo_planks>);
craftingTable.addShapeless("bamboo_planks", <item:minecraft:bamboo_planks> * 2, [<item:minecraft:stripped_bamboo_block>]);

furnace.addRecipe("gilded_blackstone_to_gold", <item:minecraft:gold_nugget>, <item:minecraft:gilded_blackstone>, 0.35, 200);

craftingTable.remove(<item:minecraft:oak_boat>);
craftingTable.addShaped("boat", <item:minecraft:oak_boat>, [ 
  [<tag:items:minecraft:planks>, <item:minecraft:wooden_shovel>, <tag:items:minecraft:planks>], 
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:oak_chest_boat>);
craftingTable.addShapeless("boat_chest", <item:minecraft:oak_chest_boat>, [<item:minecraft:oak_boat>, <tag:items:forge:chests/wooden>]);

craftingTable.addShaped("totem_of_undying", <item:minecraft:totem_of_undying>, [
  [<item:minecraft:air>, <item:minecraft:gold_block>, <item:minecraft:air>], 
  [<item:minecraft:gold_block>, <item:alexsmobs:soul_heart>, <item:minecraft:gold_block>], 
  [<item:minecraft:air>, <item:minecraft:gold_block>, <item:minecraft:air>]]);

craftingTable.remove(<item:minecraft:flower_pot>);
craftingTable.addShaped("flower_pot", <item:minecraft:flower_pot> * 3, [
  [<item:minecraft:brick>, <item:minecraft:air>, <item:minecraft:brick>], 
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>]]);

craftingTable.remove(<item:minecraft:decorated_pot>);
craftingTable.addShaped("big_pot", <item:minecraft:decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:air>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:minecraft:white_wool>);
craftingTable.addShapeless("wool_clean", <item:minecraft:white_wool>, [<tag:items:etcetera:all_wool>, <item:supplementaries:soap>]);
craftingTable.addShapeless("white_wool_dye", <item:minecraft:white_wool>, [<tag:items:etcetera:all_wool>, <item:minecraft:white_dye>]);
craftingTable.addShaped("wool_from_string", <item:minecraft:white_wool>, [
  [<item:minecraft:string>, <item:minecraft:string>],
  [<item:minecraft:string>, <item:minecraft:string>]]);

craftingTable.remove(<item:minecraft:recovery_compass>);
craftingTable.addShaped("recovery_compass", <item:minecraft:recovery_compass>, [
  [<item:minecraft:air>, <item:minecraft:echo_shard>, <item:minecraft:air>], 
  [<item:minecraft:echo_shard>, <item:alexsmobs:soul_heart>, <item:minecraft:echo_shard>],
  [<item:minecraft:air>, <item:minecraft:echo_shard>, <item:minecraft:air>]]);

craftingTable.remove(<item:minecraft:soul_torch>);
craftingTable.addShaped("soul_torch", <item:minecraft:soul_torch> * 4, [
  [<item:kubejs:soul_dust>], 
  [<item:minecraft:stick>]]);

craftingTable.addShaped("trident", <item:minecraft:trident>, [
  [<item:kubejs:sharp_tooth>, <item:kubejs:sharp_tooth>, <item:kubejs:sharp_tooth>],
  [<item:minecraft:air>, <item:upgrade_aquatic:prismarine_rod>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:upgrade_aquatic:prismarine_rod>, <item:minecraft:air>]]);

craftingTable.remove(<item:minecraft:magma_cream>);
craftingTable.addShaped("magma_cream", <item:minecraft:magma_cream> * 8, [
  [<item:minecraft:slime_ball>, <item:minecraft:slime_ball>, <item:minecraft:slime_ball>],
  [<item:minecraft:slime_ball>, <item:alexsmobs:lava_bottle>, <item:minecraft:slime_ball>],
  [<item:minecraft:slime_ball>, <item:minecraft:slime_ball>, <item:minecraft:slime_ball>]]);

craftingTable.remove(<item:minecraft:magma_block>);
craftingTable.addShaped("magma_block", <item:minecraft:magma_block> * 8, [
  [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
  [<item:minecraft:cobblestone>, <item:minecraft:lava_bucket>, <item:minecraft:cobblestone>],
  [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]]);

craftingTable.addShapeless("slime_ball_block", <item:minecraft:slime_ball> * 9, [<item:minecraft:slime_block>]);

furnace.remove(<item:minecraft:smooth_stone>);
stoneCutter.addRecipe("stonecutter_smooth_stone", <item:minecraft:smooth_stone>, <item:minecraft:stone>);

craftingTable.remove(<item:minecraft:respawn_anchor>);
craftingTable.addShaped("respawn_anchor", <item:minecraft:respawn_anchor>, [
  [<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>],
  [<item:minecraft:glowstone>, <item:alexsmobs:soul_heart>, <item:minecraft:glowstone>],
  [<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>]]);

stoneCutter.remove(<item:minecraft:chiseled_deepslate>);

craftingTable.remove(<item:minecraft:chiseled_deepslate>);
craftingTable.addShaped("chiseled_deepslate", <item:minecraft:chiseled_deepslate>, [
  [<item:minecraft:deepslate_tile_slab>],
  [<item:minecraft:deepslate_tile_slab>]]);

furnace.addRecipe("music_disc_to_dye", <item:minecraft:black_dye>, <tag:items:gamma:music_discs>, 0.35, 200);
furnace.addRecipe("ambient_disc_to_dye", <item:minecraft:blue_dye>, <tag:items:gamma:ambient_discs>, 0.35, 200);

craftingTable.remove(<item:minecraft:music_disc_5>);
craftingTable.addShaped("music_disc_5", <item:minecraft:music_disc_5>, [
  [<item:minecraft:air>, <item:minecraft:disc_fragment_5>, <item:minecraft:air>], 
  [<item:minecraft:disc_fragment_5>, <item:minecraft:quartz>, <item:minecraft:disc_fragment_5>],
  [<item:minecraft:air>, <item:minecraft:disc_fragment_5>, <item:minecraft:air>]]);

craftingTable.addShapeless("blowball_white_dye", <item:minecraft:white_dye> * 2, [<item:habitat:blowball>]);

craftingTable.remove(<item:minecraft:furnace>);
craftingTable.addShaped("furnace", <item:minecraft:furnace>, [
  [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>], 
  [<item:minecraft:cobblestone>, <item:minecraft:air>, <item:minecraft:cobblestone>],
  [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]]);

craftingTable.remove(<item:minecraft:slime_ball>);

craftingTable.remove(<item:minecraft:cobblestone>);

craftingTable.addShapeless("scroll_clean_map", <item:minecraft:map>, [<item:supplementaries:cartographers_quill>, <item:supplementaries:soap>]);

craftingTable.remove(<item:supplementaries:doormat>);
craftingTable.addShaped("doormat", <item:supplementaries:doormat>, [
  [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]]);

craftingTable.remove(<item:minecraft:mossy_stone_bricks>);
craftingTable.remove(<item:minecraft:mossy_cobblestone>);

craftingTable.addShaped("elytra", <item:minecraft:elytra>, [
  [<item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>],
  [<item:minecraft:phantom_membrane>, <item:minecraft:air>, <item:minecraft:phantom_membrane>],
  [<item:minecraft:phantom_membrane>, <item:minecraft:air>, <item:minecraft:phantom_membrane>]]);

craftingTable.addShaped("warped_fungus_on_a_stick", <item:minecraft:warped_fungus_on_a_stick>, [
  [<item:minecraft:fishing_rod>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:minecraft:red_mushroom>]]);

craftingTable.remove(<item:minecraft:glow_item_frame>);
craftingTable.addShapeless("glow_item_frame", <item:minecraft:glow_item_frame>, [<item:minecraft:item_frame>, <item:kubejs:glow_paste>]);

craftingTable.remove(<item:minecraft:hopper>);
craftingTable.addShaped("hopper", <item:minecraft:hopper> * 3, [
  [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
  [<item:minecraft:iron_ingot>, <tag:items:forge:chests/wooden>, <item:minecraft:iron_ingot>],
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);

craftingTable.remove(<item:minecraft:blaze_powder>);
craftingTable.addShapeless("blaze_powder", <item:minecraft:blaze_powder> * 3, [<item:minecraft:blaze_rod>]);

craftingTable.remove(<item:minecraft:ender_chest>);
craftingTable.addShaped("ender_chest", <item:minecraft:ender_chest>, [
  [<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>],
  [<item:minecraft:obsidian>, <item:minecraft:ender_pearl>, <item:minecraft:obsidian>],
  [<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>]]);

craftingTable.addShaped("sponge", <item:minecraft:sponge> * 3, [
  [<tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>],
  [<tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>],
  [<tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>]]);

craftingTable.remove(<item:minecraft:fire_charge>);
craftingTable.addShaped("fire_charge", <item:minecraft:fire_charge> * 3, [
  [<item:minecraft:air>, <tag:items:minecraft:coals>, <item:minecraft:air>],
  [<tag:items:minecraft:coals>, <item:alexsmobs:lava_bottle>, <tag:items:minecraft:coals>],
  [<item:minecraft:air>, <tag:items:minecraft:coals>, <item:minecraft:air>]]);

craftingTable.remove(<item:minecraft:tinted_glass>);
furnace.addRecipe("tinted_glass", <item:minecraft:tinted_glass>, <item:minecraft:gravel>, 0.35, 200);

craftingTable.remove(<item:minecraft:granite>);
craftingTable.remove(<item:minecraft:andesite>);
craftingTable.remove(<item:minecraft:diorite>);

craftingTable.addShaped("deepslate_slab", <item:minecraft:cobbled_deepslate_slab> * 6, [
  [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:deepslate>]]);

craftingTable.addShaped("deepslate_stairs", <item:minecraft:cobbled_deepslate_stairs> * 4, [
  [<item:minecraft:deepslate>, <item:minecraft:air>, <item:minecraft:air>],
  [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:air>],
  [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:deepslate>]]);

craftingTable.addShaped("deepslate_wall", <item:minecraft:cobbled_deepslate_wall> * 6, [
  [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:deepslate>],
  [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:deepslate>]]);

stoneCutter.addRecipe("deepslate_wall_stonecutter", <item:minecraft:cobbled_deepslate_wall>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("deepslate_slab_stonecutter", <item:minecraft:cobbled_deepslate_slab> * 2, <item:minecraft:deepslate>);
stoneCutter.addRecipe("deepslate_stairs_stonecutter", <item:minecraft:cobbled_deepslate_stairs>, <item:minecraft:deepslate>);

craftingTable.remove(<item:minecraft:beehive>);
craftingTable.addShaped("beehive", <item:minecraft:beehive>, [
  [<tag:items:minecraft:planks>, <item:minecraft:blue_dye>, <tag:items:minecraft:planks>],
  [<item:minecraft:blue_dye>, <item:minecraft:honeycomb>, <item:minecraft:blue_dye>],
  [<tag:items:minecraft:planks>, <item:minecraft:blue_dye>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:minecraft:chest>);
craftingTable.addShaped("chest", <item:minecraft:chest>, [
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>], 
  [<tag:items:minecraft:planks>, <item:minecraft:air>, <tag:items:minecraft:planks>], 
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

stoneCutter.addRecipe("stonecutter_granite_tiles", <item:minecraft:polished_granite>, <item:minecraft:granite>);

craftingTable.remove(<item:minecraft:prismarine_bricks>);
craftingTable.addShaped("prismarine_bricks", <item:minecraft:prismarine_bricks> * 4, [
  [<item:minecraft:prismarine>, <item:minecraft:prismarine>],
  [<item:minecraft:prismarine>, <item:minecraft:prismarine>]]);

stoneCutter.addRecipe("stonecutter_prismarine_bricks", <item:minecraft:prismarine_bricks>, <item:minecraft:prismarine>);

craftingTable.remove(<item:minecraft:dark_prismarine>);
craftingTable.addShaped("dark_prismarine", <item:minecraft:dark_prismarine> * 8, [
  [<item:minecraft:prismarine>, <item:minecraft:prismarine>, <item:minecraft:prismarine>],
  [<item:minecraft:prismarine>, <item:minecraft:black_dye>, <item:minecraft:prismarine>],
  [<item:minecraft:prismarine>, <item:minecraft:prismarine>, <item:minecraft:prismarine>]]);

craftingTable.remove(<item:minecraft:prismarine>);
craftingTable.addShaped("prismarine", <item:minecraft:prismarine>, [
  [<item:minecraft:prismarine_shard>, <item:minecraft:prismarine_shard>],
  [<item:minecraft:prismarine_shard>, <item:minecraft:prismarine_shard>]]);

craftingTable.addShapeless("tooth_to_bone_beal", <item:minecraft:bone_meal> * 3, [<item:kubejs:sharp_tooth>]);

craftingTable.remove(<item:minecraft:stone_pickaxe>);
craftingTable.addShaped("stone_pickaxe", <item:minecraft:stone_pickaxe>, [
  [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

craftingTable.remove(<item:minecraft:bamboo_raft>);
craftingTable.addShaped("bamboo_raft", <item:minecraft:bamboo_raft>, [ 
  [<item:minecraft:bamboo_planks>, <item:minecraft:wooden_shovel>, <item:minecraft:bamboo_planks>], 
  [<item:minecraft:bamboo_planks>, <item:minecraft:bamboo_planks>, <item:minecraft:bamboo_planks>]]);

craftingTable.remove(<item:etcetera:turtle_raft>);
craftingTable.addShaped("turtle_raft", <item:etcetera:turtle_raft>, [
  [<item:minecraft:scute>, <item:minecraft:wooden_shovel>, <item:minecraft:scute>],
  [<item:minecraft:scute>, <item:minecraft:scute>, <item:minecraft:scute>]]);

craftingTable.addShapeless("chocolate_bar", <item:kubejs:bar_of_chocolate> * 2, [<item:farmersdelight:milk_bottle>, <item:kubejs:butter>, <item:minecraft:cocoa_beans>, <item:minecraft:sugar>]);

craftingTable.addShapeless("omelette", <item:kubejs:omelette>, [<item:farmersdelight:fried_egg>, <item:farmersdelight:milk_bottle>]);

craftingTable.addShapeless("honeyed_apple", <item:kubejs:honeyed_apple> * 2, [<item:minecraft:apple>, <item:minecraft:apple>, <item:minecraft:honey_bottle>]);

craftingTable.addShaped("waffle", <item:kubejs:waffle> * 2, [
  [<item:kubejs:dough>, <item:kubejs:butter>], 
  [<item:kubejs:butter>, <item:kubejs:dough>]]);

craftingTable.addShaped("golden_potato", <item:kubejs:golden_potato>, [
  [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], 
  [<item:minecraft:gold_ingot>, <item:minecraft:potato>, <item:minecraft:gold_ingot>],
  [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]]);

craftingTable.addShapeless("soul_dust_heart", <item:kubejs:soul_dust> * 8, [<item:alexsmobs:soul_heart>]);

craftingTable.addShaped("bear_dust", <item:alexsmobs:bear_dust> * 4, [
  [<item:minecraft:air>, <item:alexsmobs:bear_fur>, <item:minecraft:air>],
  [<item:alexsmobs:bear_fur>, <item:kubejs:soul_dust>, <item:alexsmobs:bear_fur>],
  [<item:minecraft:air>, <item:alexsmobs:bear_fur>, <item:minecraft:air>]]);

craftingTable.addShapeless("banana_bread", <item:kubejs:banana_bread> * 2, [<item:kubejs:butter>, <item:alexsmobs:banana>, <item:minecraft:sugar>, <item:kubejs:dough>]);

craftingTable.addShapeless("butter_bucket", <item:kubejs:butter> * 8, [<item:minecraft:milk_bucket>, <item:minecraft:milk_bucket>]);
craftingTable.addShapeless("butter_bottle", <item:kubejs:butter> * 2, [<item:farmersdelight:milk_bottle>, <item:farmersdelight:milk_bottle>]);

craftingTable.addShaped("music_disc_droopy2", <item:kubejs:music_disc_droopy2>, [
  [<item:minecraft:air>, <item:minecraft:amethyst_shard>, <item:minecraft:air>], 
  [<item:minecraft:amethyst_shard>, <item:minecraft:music_disc_pigstep>, <item:minecraft:amethyst_shard>],
  [<item:minecraft:air>, <item:minecraft:amethyst_shard>, <item:minecraft:air>]]);

craftingTable.addShaped("music_disc_eleven", <item:kubejs:music_disc_eleven>, [
  [<item:minecraft:air>, <item:minecraft:disc_fragment_5>, <item:minecraft:air>], 
  [<item:minecraft:disc_fragment_5>, <item:minecraft:music_disc_11>, <item:minecraft:disc_fragment_5>],
  [<item:minecraft:air>, <item:minecraft:disc_fragment_5>, <item:minecraft:air>]]);

craftingTable.addShaped("rock_salt", <item:kubejs:rock_salt>, [
  [<item:kubejs:salt>, <item:kubejs:salt>],
  [<item:kubejs:salt>, <item:kubejs:salt>]]);

craftingTable.addShaped("mysterious_stone", <item:kubejs:mysterious_stone> * 16, [
  [<item:minecraft:amethyst_block>, <item:minecraft:amethyst_block>, <item:minecraft:amethyst_block>],
  [<item:minecraft:amethyst_block>, <item:alexsmobs:farseer_arm>, <item:minecraft:amethyst_block>],
  [<item:minecraft:amethyst_block>, <item:minecraft:amethyst_block>, <item:minecraft:amethyst_block>]]);

//Copper Tools:
craftingTable.addShapedMirrored("copper_axe", MirrorAxis.HORIZONTAL, <item:kubejs:copper_axe>, [
  [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
  [<item:minecraft:copper_ingot>, <item:minecraft:stick>],
  [<item:minecraft:air>, <item:minecraft:stick>]]);

craftingTable.addShapedMirrored("copper_hoe", MirrorAxis.HORIZONTAL, <item:kubejs:copper_hoe>, [
  [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
  [<item:minecraft:air>, <item:minecraft:stick>],
  [<item:minecraft:air>, <item:minecraft:stick>]]);

craftingTable.addShaped("copper_pickaxe", <item:kubejs:copper_pickaxe>, [
  [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

craftingTable.addShaped("copper_shovel", <item:kubejs:copper_shovel>, [
  [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

craftingTable.addShaped("copper_sword", <item:kubejs:copper_sword>, [
  [<item:minecraft:copper_ingot>],
  [<item:minecraft:copper_ingot>],
  [<item:minecraft:stick>]]);

craftingTable.addShaped("lava_lamp", <item:kubejs:lava_lamp>, [
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
  [<item:minecraft:iron_ingot>, <item:minecraft:lava_bucket>, <item:minecraft:iron_ingot>],
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);

craftingTable.addShaped("bismuth_pickaxe", <item:kubejs:bismuth_pickaxe>, [
  [<item:etcetera:bismuth_ingot>, <item:etcetera:bismuth_ingot>, <item:etcetera:bismuth_ingot>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

craftingTable.addShapeless("glazed_steak", <item:kubejs:glazed_steak> * 2, [<item:minecraft:cooked_beef>, <item:minecraft:cooked_beef>, <item:minecraft:honey_bottle>]);

craftingTable.remove(<item:spelunkery:glowstick>);
craftingTable.addShapeless("glowstick", <item:spelunkery:glowstick> * 4, [<item:minecraft:slime_ball>, <item:kubejs:glow_paste>, <item:minecraft:stick>]);

craftingTable.addShaped("torch", <item:coraline_systems:torch> * 4, [
  [<tag:items:c:coal>], 
  [<item:minecraft:stick>]]);

//Gloomy Tiles:
craftingTable.addShaped("gloomy_tiles", <item:kubejs:gloomy_tiles> * 8, [
  [<item:minecraft:nether_bricks>, <item:minecraft:nether_bricks>, <item:minecraft:nether_bricks>], 
  [<item:minecraft:nether_bricks>, <item:minecraft:phantom_membrane>, <item:minecraft:nether_bricks>],
  [<item:minecraft:nether_bricks>, <item:minecraft:nether_bricks>, <item:minecraft:nether_bricks>]]);

craftingTable.addShaped("chiseled_gloomy_tiles", <item:kubejs:chiseled_gloomy_tiles>, [
  [<item:kubejs:gloomy_tiles_slab>], 
  [<item:kubejs:gloomy_tiles_slab>]]);

craftingTable.addShaped("gloomy_tiles_stairs", <item:kubejs:gloomy_tiles_stairs> * 4, [
  [<item:kubejs:gloomy_tiles>, <item:minecraft:air>, <item:minecraft:air>],
  [<item:kubejs:gloomy_tiles>, <item:kubejs:gloomy_tiles>, <item:minecraft:air>],
  [<item:kubejs:gloomy_tiles>, <item:kubejs:gloomy_tiles>, <item:kubejs:gloomy_tiles>]]);

craftingTable.addShaped("gloomy_tiles_slab", <item:kubejs:gloomy_tiles_slab> * 6, [
  [<item:kubejs:gloomy_tiles>, <item:kubejs:gloomy_tiles>, <item:kubejs:gloomy_tiles>]]);

craftingTable.addShaped("gloomy_tiles_wall", <item:kubejs:gloomy_tiles_wall> * 6, [
  [<item:kubejs:gloomy_tiles>, <item:kubejs:gloomy_tiles>, <item:kubejs:gloomy_tiles>],
  [<item:kubejs:gloomy_tiles>, <item:kubejs:gloomy_tiles>, <item:kubejs:gloomy_tiles>]]);

stoneCutter.addRecipe("gloomy_tiles_stairs_stonecutter", <item:kubejs:gloomy_tiles_stairs>, <item:kubejs:gloomy_tiles>);
stoneCutter.addRecipe("gloomy_tiles_slab_stonecutter", <item:kubejs:gloomy_tiles_slab> * 2, <item:kubejs:gloomy_tiles>);
stoneCutter.addRecipe("gloomy_tiles_wall_stonecutter", <item:kubejs:gloomy_tiles_wall>, <item:kubejs:gloomy_tiles>);

craftingTable.addShapeless("glow_paste_glow_ink_sac", <item:kubejs:glow_paste> * 3, [<item:minecraft:glow_ink_sac>]);
furnace.addRecipe("glow_paste_smelt", <item:kubejs:glow_paste>, <item:spelunkery:phosphor_shroomlight> | <item:minecraft:sculk> | <item:minecraft:sculk_vein> | <item:spelunkery:mushgloom_block> | <item:minecraft:glow_lichen> | <item:spelunkery:mushgloom>, 0.35, 200);

furnace.addRecipe("cobalt_smelt", <item:kubejs:cobalt>, <item:alexsmobs:soul_heart>, 0.35, 200);

craftingTable.addShaped("spawner", <item:minecraft:spawner>, [
  [<item:kubejs:cobalt>, <item:kubejs:cobalt>, <item:kubejs:cobalt>],
  [<item:kubejs:cobalt>, <item:rediscovered:ruby>, <item:kubejs:cobalt>],
  [<item:kubejs:cobalt>, <item:kubejs:cobalt>, <item:kubejs:cobalt>]]);

craftingTable.addShaped("cobalt_pants", <item:coraline_systems:cobalt_pants>, [
  [<item:kubejs:cobalt>, <item:kubejs:cobalt>, <item:kubejs:cobalt>],
  [<item:kubejs:cobalt>, <item:minecraft:air>, <item:kubejs:cobalt>],
  [<item:kubejs:cobalt>, <item:minecraft:air>, <item:kubejs:cobalt>]]);

craftingTable.remove(<item:autumnity:pumpkin_bread>);
craftingTable.addShapeless("pumpkin_bread", <item:autumnity:pumpkin_bread> * 2, [<item:kubejs:butter>, <item:farmersdelight:pumpkin_slice>, <item:autumnity:syrup_bottle>, <item:kubejs:dough>]);

//craftingTable.remove(<item:alexsmobs:dimensional_carver>);
//craftingTable.addShaped("dimensional_carver", <item:alexsmobs:dimensional_carver>, [
  //[<item:kubejs:dimensional_shard>, <item:kubejs:dimensional_shard>, <item:kubejs:dimensional_shard>],
  //[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
  //[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

//furnace.addRecipe("shattered_dimensional_carver", <item:alexsmobs:shattered_dimensional_carver>, <item:alexsmobs:dimensional_carver>, 0.35, 200);

craftingTable.addShaped("cobalt_sword", <item:kubejs:cobalt_sword>, [
  [<item:kubejs:cobalt>],
  [<item:kubejs:cobalt>],
  [<item:minecraft:stick>]]);

craftingTable.remove(<item:quark:backpack>);
craftingTable.addShaped("backpack_quark", <item:quark:backpack>, [
  [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>],
  [<item:minecraft:string>, <item:minecraft:iron_ingot>, <item:minecraft:string>],
  [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]]);

craftingTable.addShapeless("eggple", <item:etcetera:eggple>, [<item:minecraft:apple>, <item:minecraft:egg>]);

craftingTable.remove(<item:etcetera:prickly_can>);
craftingTable.addShaped("etcetera_prickly_can", <item:etcetera:prickly_can>, [
  [<item:minecraft:cactus>, <item:minecraft:air>, <item:minecraft:cactus>], 
  [<item:minecraft:cactus>, <item:minecraft:air>, <item:minecraft:cactus>], 
  [<item:minecraft:cactus>, <item:minecraft:cactus>, <item:minecraft:cactus>]]);

craftingTable.remove(<item:quark:magnet>);
craftingTable.addShaped("big_magnet", <item:quark:magnet>, [
  [<item:minecraft:iron_ingot>, <item:minecraft:cobblestone>, <item:minecraft:iron_ingot>],
  [<item:minecraft:redstone>, <item:spelunkery:raw_magnetite_block>, <item:minecraft:amethyst_shard>],
  [<item:minecraft:iron_ingot>, <item:minecraft:cobblestone>, <item:minecraft:iron_ingot>]]);

craftingTable.remove(<item:mace_backport:mace>);

craftingTable.remove(<item:alexsmobs:fish_oil>);
craftingTable.addShaped("fish_oil", <item:alexsmobs:fish_oil>, [
  [<tag:items:minecraft:fishes>, <tag:items:minecraft:fishes>], 
  [<item:minecraft:glass_bottle>]]);

craftingTable.remove(<item:upgrade_aquatic:mulberry_pie>);
craftingTable.addShaped("mulberry_pie", <item:upgrade_aquatic:mulberry_pie>, [
  [<item:upgrade_aquatic:mulberry>, <item:kubejs:butter>, <item:upgrade_aquatic:mulberry>], 
  [<item:kubejs:dough>, <item:minecraft:sugar>, <item:kubejs:dough>]]);

craftingTable.remove(<item:galosphere:golden_lichen_cordyceps>);
craftingTable.addShaped("golden_cordyceps", <item:galosphere:golden_lichen_cordyceps>, [
  [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], 
  [<item:minecraft:gold_ingot>, <item:galosphere:lichen_cordyceps>, <item:minecraft:gold_ingot>],
  [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]]);

//Rediscovered:
craftingTable.remove(<item:kubejs:gear>);
craftingTable.addShaped("gear", <item:kubejs:gear> * 2, [
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>], 
  [<item:minecraft:iron_ingot>, <item:minecraft:quartz>, <item:minecraft:iron_ingot>],
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);

/*
craftingTable.remove(<item:rediscovered:rotational_converter>);
craftingTable.addShaped("rotational_converter", <item:rediscovered:rotational_converter>, [
  [<item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>],
  [<item:kubejs:gear>, <item:minecraft:redstone>, <item:kubejs:gear>],
  [<item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>]]);
*/

furnace.addRecipe("brittle_packed_mud", <item:rediscovered:brittle_packed_mud>, <item:minecraft:packed_mud>, 0.35, 200);
furnace.addRecipe("brittle_mud_bricks", <item:rediscovered:brittle_mud_bricks>, <item:minecraft:mud_bricks>, 0.35, 200);

//Large Bricks:
craftingTable.remove(<item:rediscovered:large_bricks>);
craftingTable.addShaped("large_bricks", <item:rediscovered:large_bricks> * 4, [
  [<item:minecraft:bricks>, <item:minecraft:bricks>],
  [<item:minecraft:bricks>, <item:minecraft:bricks>]]);

craftingTable.addShaped("large_brick_stairs", <item:rediscovered:large_brick_stairs> * 4, [
  [<item:rediscovered:large_bricks>, <item:minecraft:air>, <item:minecraft:air>],
  [<item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>, <item:minecraft:air>],
  [<item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>]]);

craftingTable.addShaped("large_brick_slab", <item:rediscovered:large_brick_slab> * 6, [
  [<item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>]]);

craftingTable.addShaped("large_brick_wall", <item:rediscovered:large_brick_wall> * 6, [
  [<item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>],
  [<item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>, <item:rediscovered:large_bricks>]]);

stoneCutter.addRecipe("large_brick_stairs_stonecutter", <item:rediscovered:large_brick_stairs>, <item:rediscovered:large_bricks>);
stoneCutter.addRecipe("large_brick_slab_stonecutter", <item:rediscovered:large_brick_slab> * 2, <item:rediscovered:large_bricks>);
stoneCutter.addRecipe("large_brick_wall_stonecutter", <item:rediscovered:large_brick_wall>, <item:rediscovered:large_bricks>);

craftingTable.remove(<item:rediscovered:mini_dragon_pylon>);
craftingTable.addShaped("mini_dragon_pylon", <item:rediscovered:mini_dragon_pylon>, [
  [<item:minecraft:glowstone_dust>, <item:minecraft:glass>, <item:minecraft:glowstone_dust>],
  [<item:minecraft:glass>, <item:rediscovered:ruby>, <item:minecraft:glass>],
  [<item:minecraft:glowstone_dust>, <item:minecraft:glass>, <item:minecraft:glowstone_dust>]]);

//Plate Armor:
craftingTable.addShaped("plate_helmet", <item:rediscovered:plate_helmet>, [
  [<item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>], 
  [<item:galosphere:silver_ingot>, <item:minecraft:air>, <item:galosphere:silver_ingot>]]);

craftingTable.addShaped("plate_chestplate", <item:rediscovered:plate_chestplate>, [
  [<item:galosphere:silver_ingot>, <item:minecraft:air>, <item:galosphere:silver_ingot>], 
  [<item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>],
  [<item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>]]);

craftingTable.addShaped("plate_leggings", <item:rediscovered:plate_leggings>, [
  [<item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>], 
  [<item:galosphere:silver_ingot>, <item:minecraft:air>, <item:galosphere:silver_ingot>],
  [<item:galosphere:silver_ingot>, <item:minecraft:air>, <item:galosphere:silver_ingot>]]);

craftingTable.addShaped("plate_boots", <item:rediscovered:plate_boots>, [
  [<item:galosphere:silver_ingot>, <item:minecraft:air>, <item:galosphere:silver_ingot>], 
  [<item:galosphere:silver_ingot>, <item:minecraft:air>, <item:galosphere:silver_ingot>]]);

craftingTable.remove(<item:rediscovered:studded_helmet>);
craftingTable.remove(<item:rediscovered:studded_chestplate>);
craftingTable.remove(<item:rediscovered:studded_leggings>);
craftingTable.remove(<item:rediscovered:studded_boots>);

furnace.addRecipe("crumbling_stone", <item:etcetera:crumbling_stone>, <item:kubejs:cement>, 0.35, 200);

craftingTable.addShaped("drum", <item:etcetera:drum>, [
  [<item:minecraft:string>, <item:minecraft:paper>, <item:minecraft:string>],
  [<item:minecraft:air>, <item:minecraft:note_block>, <item:minecraft:air>]]);

craftingTable.remove(<item:etcetera:tidal_helmet>);
craftingTable.addShapeless("tidal_helmet", <item:etcetera:tidal_helmet>, [<item:minecraft:turtle_helmet>, <item:minecraft:heart_of_the_sea>]);

craftingTable.remove(<item:alexsmobs:straddleboard>);
craftingTable.addShaped("straddleboard", <item:alexsmobs:straddleboard>, [
  [<item:minecraft:air>, <item:minecraft:string>, <item:minecraft:netherite_scrap>], 
  [<item:minecraft:string>, <item:minecraft:netherite_scrap>, <item:minecraft:string>], 
  [<item:minecraft:netherite_scrap>, <item:minecraft:string>, <item:minecraft:air>]]);

craftingTable.addShaped("cured_membrane", <item:galosphere:cured_membrane>, [
  [<item:minecraft:air>, <item:kubejs:halite_crystal>, <item:minecraft:air>], 
  [<item:kubejs:halite_crystal>, <item:minecraft:phantom_membrane>, <item:kubejs:halite_crystal>], 
  [<item:minecraft:air>, <item:kubejs:halite_crystal>, <item:minecraft:air>]]);

craftingTable.remove(<item:galosphere:spectre_flare>);
craftingTable.addShaped("spectre_flare", <item:galosphere:spectre_flare>, [
  [<item:galosphere:bottle_of_spectre>], 
  [<item:galosphere:silver_ingot>],
  [<item:minecraft:string>]]);

//Big Pots:
craftingTable.remove(<item:clayworks:black_decorated_pot>);
craftingTable.addShaped("black_big_pot", <item:clayworks:black_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:black_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:clayworks:black_decorated_pot>);
craftingTable.addShaped("blue_big_pot", <item:clayworks:blue_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:blue_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:clayworks:brown_decorated_pot>);
craftingTable.addShaped("brown_big_pot", <item:clayworks:brown_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:brown_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:clayworks:cyan_decorated_pot>);
craftingTable.addShaped("cyan_big_pot", <item:clayworks:cyan_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:cyan_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:clayworks:gray_decorated_pot>);
craftingTable.addShaped("gray_big_pot", <item:clayworks:gray_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:gray_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:clayworks:green_decorated_pot>);
craftingTable.addShaped("green_big_pot", <item:clayworks:green_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:green_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:clayworks:light_blue_decorated_pot>);
craftingTable.addShaped("light_blue_big_pot", <item:clayworks:light_blue_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:light_blue_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:clayworks:light_gray_decorated_pot>);
craftingTable.addShaped("light_gray_big_pot", <item:clayworks:light_gray_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:light_gray_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:clayworks:lime_decorated_pot>);
craftingTable.addShaped("lime_big_pot", <item:clayworks:lime_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:lime_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:clayworks:magenta_decorated_pot>);
craftingTable.addShaped("magenta_big_pot", <item:clayworks:magenta_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:magenta_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:clayworks:orange_decorated_pot>);
craftingTable.addShaped("orange_big_pot", <item:clayworks:orange_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:orange_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:clayworks:pink_decorated_pot>);
craftingTable.addShaped("pink_big_pot", <item:clayworks:pink_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:pink_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:clayworks:purple_decorated_pot>);
craftingTable.addShaped("purple_big_pot", <item:clayworks:purple_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:purple_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:clayworks:red_decorated_pot>);
craftingTable.addShaped("red_big_pot", <item:clayworks:red_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:red_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:clayworks:white_decorated_pot>);
craftingTable.addShaped("white_big_pot", <item:clayworks:white_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:white_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.remove(<item:clayworks:yellow_decorated_pot>);
craftingTable.addShaped("yellow_big_pot", <item:clayworks:yellow_decorated_pot>, [
  [<item:minecraft:air>, <item:minecraft:brick>, <item:minecraft:air>], 
  [<item:minecraft:brick>, <item:minecraft:yellow_dye>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

craftingTable.addShapeless("black_big_pot_dye", <item:clayworks:black_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:black_dye>]);
craftingTable.addShapeless("blue_big_pot_dye", <item:clayworks:blue_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:blue_dye>]);
craftingTable.addShapeless("brown_big_pot_dye", <item:clayworks:brown_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:brown_dye>]);
craftingTable.addShapeless("cyan_big_pot_dye", <item:clayworks:cyan_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:cyan_dye>]);
craftingTable.addShapeless("gray_big_pot_dye", <item:clayworks:gray_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:gray_dye>]);
craftingTable.addShapeless("green_big_pot_dye", <item:clayworks:green_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:green_dye>]);
craftingTable.addShapeless("light_blue_big_pot_dye", <item:clayworks:light_blue_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:light_blue_dye>]);
craftingTable.addShapeless("light_gray_big_pot_dye", <item:clayworks:light_gray_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:light_gray_dye>]);
craftingTable.addShapeless("lime_big_pot_dye", <item:clayworks:lime_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:lime_dye>]);
craftingTable.addShapeless("magenta_big_pot_dye", <item:clayworks:magenta_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:magenta_dye>]);
craftingTable.addShapeless("orange_big_pot_dye", <item:clayworks:orange_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:orange_dye>]);
craftingTable.addShapeless("pink_big_pot_dye", <item:clayworks:pink_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:pink_dye>]);
craftingTable.addShapeless("purple_big_pot_dye", <item:clayworks:purple_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:purple_dye>]);
craftingTable.addShapeless("red_big_pot_dye", <item:clayworks:red_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:red_dye>]);
craftingTable.addShapeless("white_big_pot_dye", <item:clayworks:white_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:white_dye>]);
craftingTable.addShapeless("yellow_big_pot_dye", <item:clayworks:yellow_decorated_pot>, [<item:minecraft:decorated_pot>, <item:minecraft:yellow_dye>]);

//Check on the Pots later...

craftingTable.remove(<item:upgrade_aquatic:prismarine_rod>);
craftingTable.addShaped("prismarine_rod", <item:upgrade_aquatic:prismarine_rod> * 2, [
  [<item:minecraft:prismarine_shard>],
  [<item:minecraft:prismarine_shard>]]);

craftingTable.addShaped("maraca", <item:alexsmobs:maraca> * 3, [
  [<item:minecraft:air>, <tag:items:minecraft:planks>, <item:minecraft:air>],
  [<tag:items:minecraft:planks>, <item:minecraft:sand>, <tag:items:minecraft:planks>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

craftingTable.addShaped("sombrero", <item:alexsmobs:sombrero>, [
  [<item:minecraft:air>, <item:minecraft:wheat>, <item:minecraft:air>], 
  [<item:minecraft:wheat>, <item:minecraft:leather_helmet>, <item:minecraft:wheat>]]);

craftingTable.remove(<item:snowyspirit:snow_globe>);
craftingTable.addShaped("snow_globe", <item:snowyspirit:snow_globe> * 2, [
  [<item:minecraft:air>, <item:minecraft:glass_pane>, <item:minecraft:air>], 
  [<item:minecraft:glass_pane>, <item:minecraft:snowball>, <item:minecraft:glass_pane>],
  [<item:minecraft:air>, <item:minecraft:cobbled_deepslate_slab>, <item:minecraft:air>]]);

craftingTable.remove(<item:alexsmobs:crocodile_chestplate>);
craftingTable.addShaped("scute_chestplate", <item:alexsmobs:crocodile_chestplate>, [
  [<item:minecraft:scute>, <item:minecraft:air>, <item:minecraft:scute>], 
  [<item:minecraft:scute>, <item:minecraft:scute>, <item:minecraft:scute>],
  [<item:minecraft:scute>, <item:minecraft:scute>, <item:minecraft:scute>]]);

craftingTable.remove(<item:spelunkery:compression_blast_miner>);
craftingTable.addShaped("compression_blast_miner", <item:spelunkery:compression_blast_miner>, [
  [<item:minecraft:obsidian>, <item:minecraft:redstone>, <item:minecraft:obsidian>],
  [<item:minecraft:redstone>, <item:minecraft:nether_star>, <item:minecraft:redstone>],
  [<item:minecraft:obsidian>, <item:minecraft:redstone>, <item:minecraft:obsidian>]]);

craftingTable.addShapeless("string_fur", <item:minecraft:string> * 3, [<item:alexsmobs:bison_fur> | <item:alexsmobs:bear_fur>]);

craftingTable.remove(<item:quark:iron_rod>);
craftingTable.addShaped("iron_rod", <item:quark:iron_rod>, [
  [<item:minecraft:iron_ingot>],
  [<item:minecraft:iron_ingot>],
  [<item:minecraft:iron_ingot>]]);

craftingTable.addShaped("maglev_rail", <item:moreminecarts:maglev_rail> * 16, [
  [<item:galosphere:silver_ingot>, <item:minecraft:air>, <item:galosphere:silver_ingot>],
  [<item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>],
  [<item:galosphere:silver_ingot>, <item:minecraft:air>, <item:galosphere:silver_ingot>]]);

craftingTable.addShaped("maglev_powered_rail", <item:moreminecarts:maglev_powered_rail> * 6, [
  [<item:galosphere:silver_ingot>, <item:minecraft:air>, <item:galosphere:silver_ingot>],
  [<item:minecraft:gold_ingot>, <item:galosphere:silver_ingot>, <item:minecraft:gold_ingot>],
  [<item:galosphere:silver_ingot>, <item:minecraft:redstone>, <item:galosphere:silver_ingot>]]);

//Potions:
  //Lava Vision:
    brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "alexsmobs:lava_vision"}), <item:rediscovered:ruby_eye>, <item:alexsmobs:lava_bottle>);
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:lava_vision"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:lava_vision"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:long_lava_vision"}), <item:minecraft:redstone>, <item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:lava_vision"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:long_lava_vision"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:long_lava_vision"}));

  //Soulsteal:
    brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "alexsmobs:soulsteal"}), <item:alexsmobs:soul_heart>, <item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:soulsteal"}), <item:alexsmobs:soul_heart>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:soulsteal"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:soulsteal"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:long_soulsteal"}), <item:minecraft:redstone>, <item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:soulsteal"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:long_soulsteal"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:long_soulsteal"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:strong_soulsteal"}), <item:minecraft:glowstone_dust>, <item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:soulsteal"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:strong_soulsteal"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:strong_soulsteal"}));

  //Knockback Resistance:
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:knockback_resistance"}), <item:alexsmobs:bear_fur>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:knockback_resistance"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:knockback_resistance"}));
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:long_knockback_resistance"}), <item:minecraft:redstone>, <item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:knockback_resistance"}));
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:long_knockback_resistance"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:long_knockback_resistance"}));
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:strong_knockback_resistance"}), <item:minecraft:glowstone_dust>, <item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:knockback_resistance"}));
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:strong_knockback_resistance"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:strong_knockback_resistance"}));

  //Leaping:
    brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "minecraft:leaping"}), <item:minecraft:slime_ball>, <item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:leaping"}), <item:minecraft:slime_ball>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:leaping"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "minecraft:leaping"}));

  //Strength:
    brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "minecraft:strength"}), <item:kubejs:golden_potato>, <item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:strength"}), <item:kubejs:golden_potato>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:strength"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "minecraft:strength"}));

  //Night Vision:
    brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "minecraft:night_vision"}), <item:minecraft:golden_carrot>, <item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:night_vision"}), <item:minecraft:golden_carrot>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:night_vision"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "minecraft:night_vision"}));

  //Water Breating:
    brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "minecraft:water_breathing"}), <item:upgrade_aquatic:mulberry>, <item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:water_breathing"}), <item:upgrade_aquatic:mulberry>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:water_breathing"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "minecraft:water_breathing"}));

  //Healing:
    brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "minecraft:healing"}), <item:minecraft:honeycomb>, <item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:healing"}), <item:minecraft:honeycomb>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
      brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:healing"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "minecraft:healing"}));

  //Clinging:
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:clinging"}), <item:alexsmobs:dropbear_claw>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:clinging"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:clinging"}));
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:long_clinging"}), <item:minecraft:redstone>, <item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:clinging"}));
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "alexsmobs:long_clinging"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "alexsmobs:long_clinging"}));

  //Luck:
  brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "minecraft:luck"}), <item:minecraft:emerald>, <item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}));
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:luck"}), <item:minecraft:emerald>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
    brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: "minecraft:luck"}), <item:minecraft:gunpowder>, <item:minecraft:potion>.withTag({Potion: "minecraft:luck"}));

  //Iridescence:
  //brewing.addRecipe(<item:infinity:iridescent_potion>, <item:kubejs:dimensional_shard>, <item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}));

craftingTable.addShaped("pipe", <item:quark:pipe> * 6, [
  [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
  [<tag:items:forge:glass_panes>, <tag:items:forge:glass_panes>, <tag:items:forge:glass_panes>],
  [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>]]);

//Limestone:
  stoneCutter.remove(<item:quark:limestone_bricks>);
  stoneCutter.remove(<item:quark:limestone_bricks_stairs>);
  stoneCutter.remove(<item:quark:limestone_bricks_slab>);
  stoneCutter.remove(<item:quark:limestone_bricks_wall>);
  stoneCutter.remove(<item:quark:limestone>);
  stoneCutter.remove(<item:quark:limestone_stairs>);
  stoneCutter.remove(<item:quark:limestone_slab>);
  stoneCutter.remove(<item:quark:limestone_wall>);

  craftingTable.addShaped("limestone_bricks", <item:quark:limestone_bricks> * 4, [
    [<item:quark:limestone>, <item:quark:limestone>],
    [<item:quark:limestone>, <item:quark:limestone>]]);

  stoneCutter.addRecipe("stonecutter_limestone_bricks", <item:quark:limestone_bricks>, <item:quark:limestone>);

  craftingTable.addShaped("limestone_brick_stairs", <item:quark:limestone_bricks_stairs> * 4, [
    [<item:quark:limestone_bricks>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:minecraft:air>],
    [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:quark:limestone_bricks>]]);

  stoneCutter.addRecipe("stonecutter_limestone_bricks_stairs", <item:quark:limestone_bricks_stairs>, <item:quark:limestone_bricks>);

  craftingTable.addShaped("limestone_brick_slab", <item:quark:limestone_bricks_slab> * 6, [
    [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:quark:limestone_bricks>]]);

  stoneCutter.addRecipe("stonecutter_limestone_bricks_slab", <item:quark:limestone_bricks_slab> * 2, <item:quark:limestone_bricks>);

  craftingTable.addShaped("limestone_brick_wall", <item:quark:limestone_bricks_wall> * 6, [
    [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:quark:limestone_bricks>],
    [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:quark:limestone_bricks>]]);

  stoneCutter.addRecipe("stonecutter_limestone_bricks_wall", <item:quark:limestone_bricks_wall>, <item:quark:limestone_bricks>);

  craftingTable.addShaped("limestone_stairs", <item:quark:limestone_stairs> * 4, [
    [<item:quark:limestone>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:quark:limestone>, <item:quark:limestone>, <item:minecraft:air>],
    [<item:quark:limestone>, <item:quark:limestone>, <item:quark:limestone>]]);

  craftingTable.addShaped("limestone_slab", <item:quark:limestone_slab> * 6, [
    [<item:quark:limestone>, <item:quark:limestone>, <item:quark:limestone>]]);

  craftingTable.addShaped("limestone_wall", <item:quark:limestone_wall> * 6, [
    [<item:quark:limestone>, <item:quark:limestone>, <item:quark:limestone>],
    [<item:quark:limestone>, <item:quark:limestone>, <item:quark:limestone>]]);

  stoneCutter.addRecipe("stonecutter_limestone_stairs", <item:quark:limestone_stairs>, <item:quark:limestone>);
  stoneCutter.addRecipe("stonecutter_limestone_slab", <item:quark:limestone_slab> * 2, <item:quark:limestone>);
  stoneCutter.addRecipe("stonecutter_limestone_wall", <item:quark:limestone_wall>, <item:quark:limestone>);

//Shale:
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

  craftingTable.addShaped("shale_bricks", <item:quark:shale_bricks> * 4, [
    [<item:quark:shale>, <item:quark:shale>],
    [<item:quark:shale>, <item:quark:shale>]]);

  craftingTable.addShaped("shale_brick_stairs", <item:quark:shale_bricks_stairs> * 4, [
    [<item:quark:shale_bricks>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:quark:shale_bricks>, <item:quark:shale_bricks>, <item:minecraft:air>],
    [<item:quark:shale_bricks>, <item:quark:shale_bricks>, <item:quark:shale_bricks>]]);

  craftingTable.addShaped("shale_brick_slab", <item:quark:shale_bricks_slab> * 6, [
    [<item:quark:shale_bricks>, <item:quark:shale_bricks>, <item:quark:shale_bricks>]]);

  craftingTable.addShaped("shale_brick_wall", <item:quark:shale_bricks_wall> * 6, [
    [<item:quark:shale_bricks>, <item:quark:shale_bricks>, <item:quark:shale_bricks>],
    [<item:quark:shale_bricks>, <item:quark:shale_bricks>, <item:quark:shale_bricks>]]);

  craftingTable.addShaped("shale_stairs", <item:quark:shale_stairs> * 4, [
    [<item:quark:shale>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:quark:shale>, <item:quark:shale>, <item:minecraft:air>],
    [<item:quark:shale>, <item:quark:shale>, <item:quark:shale>]]);

  craftingTable.addShaped("shale_slab", <item:quark:shale_slab> * 6, [
    [<item:quark:shale>, <item:quark:shale>, <item:quark:shale>]]);

  craftingTable.addShaped("shale_wall", <item:quark:shale_wall> * 6, [
    [<item:quark:shale>, <item:quark:shale>, <item:quark:shale>],
    [<item:quark:shale>, <item:quark:shale>, <item:quark:shale>]]);

  craftingTable.remove(<item:autumnity:snail_goo_block>);
  craftingTable.addShaped("snail_goo_block", <item:autumnity:snail_goo_block>, [
    [<item:spawn:mucus>, <item:spawn:mucus>, <item:spawn:mucus>],
    [<item:spawn:mucus>, <item:spawn:mucus>, <item:spawn:mucus>],
    [<item:spawn:mucus>, <item:spawn:mucus>, <item:spawn:mucus>]]);

craftingTable.addShapeless("tiny_potato", <item:quark:tiny_potato>, [<item:minecraft:potato>, <item:alexsmobs:soul_heart>]);

craftingTable.remove(<item:quark:paper_wall>);
craftingTable.addShaped("paper_wall", <item:quark:paper_wall> * 8, [
  [<item:minecraft:paper>, <item:minecraft:stick>, <item:minecraft:paper>],
  [<item:minecraft:stick>, <item:minecraft:paper>, <item:minecraft:stick>],
  [<item:minecraft:paper>, <item:minecraft:stick>, <item:minecraft:paper>]]);

craftingTable.remove(<item:quark:ender_watcher>);
craftingTable.addShaped("ender_watcher", <item:quark:ender_watcher>, [
  [<item:minecraft:obsidian>, <item:minecraft:redstone>, <item:minecraft:obsidian>],
  [<item:minecraft:redstone>, <item:minecraft:ender_pearl>, <item:minecraft:redstone>],
  [<item:minecraft:obsidian>, <item:minecraft:redstone>, <item:minecraft:obsidian>]]);

craftingTable.remove(<item:upgrade_aquatic:music_disc_atlantis>);
craftingTable.addShaped("music_disc_atlantis", <item:upgrade_aquatic:music_disc_atlantis>, [
  [<item:minecraft:air>, <item:upgrade_aquatic:disc_fragment_atlantis>, <item:minecraft:air>], 
  [<item:upgrade_aquatic:disc_fragment_atlantis>, <item:minecraft:quartz>, <item:upgrade_aquatic:disc_fragment_atlantis>],
  [<item:minecraft:air>, <item:upgrade_aquatic:disc_fragment_atlantis>, <item:minecraft:air>]]);

craftingTable.remove(<item:snowyspirit:glow_lights_prismatic>);
craftingTable.addShapeless("garland", <item:snowyspirit:glow_lights_prismatic> * 8, [<item:minecraft:diamond>, <item:minecraft:amethyst_shard>, <item:minecraft:glowstone_dust>, <item:minecraft:string>]);

craftingTable.remove(<item:alexsmobs:straddle_helmet>);
craftingTable.addShaped("straddle_helmet", <item:alexsmobs:straddle_helmet>, [
  [<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:air>], 
  [<item:minecraft:netherite_scrap>, <item:minecraft:air>, <item:minecraft:netherite_scrap>], 
  [<item:minecraft:string>, <item:minecraft:air>, <item:minecraft:string>]]);

craftingTable.remove(<item:alexsmobs:straddle_saddle>);
craftingTable.addShaped("straddle_saddle", <item:alexsmobs:straddle_saddle>, [
  [<item:minecraft:saddle>, <item:minecraft:saddle>], 
  [<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>]]);

craftingTable.remove(<item:upgrade_aquatic:bedroll>);
craftingTable.addShaped("bedroll", <item:upgrade_aquatic:bedroll>, [
  [<item:minecraft:leather>, <item:minecraft:leather>, <item:supplementaries:feather_block>],
  [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]]);

craftingTable.addShapeless("mucus_from_block", <item:spawn:mucus> * 9, [<item:autumnity:snail_goo_block>]);

craftingTable.addShapeless("maple_to_oak", <item:minecraft:oak_planks> * 4, [<tag:items:autumnity:maple_logs>]);

craftingTable.remove(<item:supplementaries:confetti_popper>);

craftingTable.remove(<item:supplementaries:speaker_block>);
craftingTable.addShaped("speaker_block", <item:supplementaries:speaker_block>, [
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <item:rediscovered:ruby>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:rediscovered:ancient_crying_obsidian>);

craftingTable.addShapeless("moyai", <item:moyai:moyai>, [<item:minecraft:stone>, <item:alexsmobs:soul_heart>]);

//4.20.4:
craftingTable.remove(<item:supplementaries:cog_block>);
craftingTable.addShaped("cog_block", <item:supplementaries:cog_block>, [
  [<item:galosphere:silver_ingot>, <item:minecraft:redstone>, <item:galosphere:silver_ingot>], 
  [<item:minecraft:redstone>, <item:kubejs:gear>, <item:minecraft:redstone>],
  [<item:galosphere:silver_ingot>, <item:minecraft:redstone>, <item:galosphere:silver_ingot>]]);

  //4.20.5:
  craftingTable.addShapeless("grimwood_from_maple", <item:atmospheric:grimwood_planks> * 4, [<item:autumnity:maple_log>]);

  craftingTable.remove(<item:caverns_and_chasms:storage_duct>);
  craftingTable.addShaped("storage_duct", <item:caverns_and_chasms:storage_duct>, [
    [<item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>], 
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>]]);

  craftingTable.remove(<item:caverns_and_chasms:storage_duct_hatch>);
  craftingTable.addShaped("storage_duct_hatch", <item:caverns_and_chasms:storage_duct_hatch>, [
    [<item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>], 
    [<item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>]]);

  craftingTable.remove(<item:caverns_and_chasms:roller_door>);
  craftingTable.addShaped("roller_door", <item:caverns_and_chasms:roller_door> * 3, [
    [<item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>], 
    [<item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>],
    [<item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>]]);

  craftingTable.addShapeless("cake_from_slices", <item:minecraft:cake>, [<item:farmersdelight:cake_slice>, <item:farmersdelight:cake_slice>, <item:farmersdelight:cake_slice>, <item:farmersdelight:cake_slice>, <item:farmersdelight:cake_slice>, <item:farmersdelight:cake_slice>, <item:farmersdelight:cake_slice>]);
    craftingTable.addShapeless("slice_from_cake", <item:farmersdelight:cake_slice> * 7, [<item:minecraft:cake>]);
