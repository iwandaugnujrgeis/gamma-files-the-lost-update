import crafttweaker.api.recipe.Brewing;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemDefinition;
import stdlib.List;

//Tags:

//3.19:
<tag:items:gamma:coral_blocks>.add(<item:upgrade_aquatic:acan_coral_block>);
<tag:items:gamma:coral_blocks>.add(<item:minecraft:brain_coral_block>);
<tag:items:gamma:coral_blocks>.add(<item:upgrade_aquatic:branch_coral_block>);
<tag:items:gamma:coral_blocks>.add(<item:minecraft:bubble_coral_block>);
<tag:items:gamma:coral_blocks>.add(<item:upgrade_aquatic:chrome_coral_block>);
<tag:items:gamma:coral_blocks>.add(<item:upgrade_aquatic:finger_coral_block>);
<tag:items:gamma:coral_blocks>.add(<item:minecraft:fire_coral_block>);
<tag:items:gamma:coral_blocks>.add(<item:minecraft:horn_coral_block>);
<tag:items:gamma:coral_blocks>.add(<item:upgrade_aquatic:moss_coral_block>);
<tag:items:gamma:coral_blocks>.add(<item:upgrade_aquatic:petal_coral_block>);
<tag:items:gamma:coral_blocks>.add(<item:upgrade_aquatic:pillow_coral_block>);
<tag:items:gamma:coral_blocks>.add(<item:upgrade_aquatic:rock_coral_block>);
<tag:items:gamma:coral_blocks>.add(<item:upgrade_aquatic:silk_coral_block>);
<tag:items:gamma:coral_blocks>.add(<item:upgrade_aquatic:star_coral_block>);
<tag:items:gamma:coral_blocks>.add(<item:minecraft:tube_coral_block>);

//Other:
<tag:items:gamma:weird_food>.add(<item:minecraft:poisonous_potato>);
<tag:items:gamma:weird_food>.add(<item:quark:ancient_fruit>);

<tag:items:gamma:compost_ingredients>.add(<item:minecraft:glow_berries>);
<tag:items:gamma:compost_ingredients>.add(<item:ecologics:coconut_slice>);
<tag:items:gamma:compost_ingredients>.add(<item:minecraft:apple>);
<tag:items:gamma:compost_ingredients>.add(<item:minecraft:carrot>);
<tag:items:gamma:compost_ingredients>.add(<item:minecraft:potato>);
<tag:items:gamma:compost_ingredients>.add(<item:minecraft:beetroot>);
<tag:items:gamma:compost_ingredients>.add(<item:upgrade_aquatic:mulberry>);
<tag:items:gamma:compost_ingredients>.add(<item:minecraft:melon_slice>);
<tag:items:gamma:compost_ingredients>.add(<item:minecraft:kelp>);
<tag:items:gamma:compost_ingredients>.add(<item:minecraft:sweet_berries>);
<tag:items:gamma:compost_ingredients>.add(<item:galosphere:lichen_cordyceps>);
<tag:items:gamma:compost_ingredients>.add(<item:ecologics:prickly_pear>);
<tag:items:gamma:compost_ingredients>.add(<item:farmersdelight:pumpkin_slice>);
<tag:items:gamma:compost_ingredients>.add(<item:minecraft:fermented_spider_eye>);
<tag:items:gamma:compost_ingredients>.add(<item:minecraft:chorus_fruit>);

<tag:items:gamma:templates_scrap>.add(<item:galosphere:silver_upgrade_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:coast_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:dune_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:eye_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:host_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:netherite_upgrade_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:raiser_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:rib_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:sentry_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:shaper_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:silence_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:snout_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:spire_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:tide_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:vex_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:ward_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:wayfinder_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:minecraft:wild_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:quark:smithing_template_rune>);
<tag:items:gamma:templates_scrap>.add(<item:rediscovered:draconic_armor_trim_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:rediscovered:dragon_armor_chain_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:rediscovered:dragon_armor_inlay_smithing_template>);
<tag:items:gamma:templates_scrap>.add(<item:rediscovered:dragon_armor_plating_smithing_template>);

<tag:items:gamma:sherds_scrap>.add(<item:minecraft:angler_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:archer_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:arms_up_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:blade_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:brewer_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:burn_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:danger_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:explorer_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:friend_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:heart_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:heartbreak_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:howl_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:miner_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:mourner_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:plenty_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:prize_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:sheaf_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:shelter_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:skull_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:minecraft:snort_pottery_sherd>);
<tag:items:gamma:sherds_scrap>.add(<item:upgrade_aquatic:predator_pottery_sherd>);

<tag:items:gamma:blazified_tiles>.add(<item:kubejs:gloomy_tiles>);
<tag:items:gamma:blazified_tiles>.add(<item:minecraft:nether_bricks>);

<tag:items:forge:eggs>.add(<item:friendsandfoes:crab_egg>);

<tag:items:minecraft:creeper_drop_music_discs>.add(<item:minecraft:music_disc_pigstep>);

//Stop Falling Through Warped Warts!
//<tag:blocks:passablefoliage:passables>.remove(<block:minecraft:warped_wart_block>);

//Recipes:
furnace.remove(<item:spelunkery:charcoal_lump>);

craftingTable.remove(<item:minecraft:jack_o_lantern>);
craftingTable.addShapeless("jack_o_lantern", <item:minecraft:jack_o_lantern>, [<item:minecraft:carved_pumpkin>, <item:minecraft:glowstone_dust>]);

craftingTable.remove(<item:snowyspirit:eggnog>);
craftingTable.addShapeless("eggnog", <item:snowyspirit:eggnog>, [<item:minecraft:egg>, <item:farmersdelight:milk_bottle>.transformReplace(<item:minecraft:glass_bottle>), <item:minecraft:sugar>]);

craftingTable.remove(<item:minecraft:bread>);
furnace.remove(<item:minecraft:bread>);

craftingTable.remove(<item:supplementaries:pancake>);
craftingTable.addShapeless("supplementaries_pancake", <item:supplementaries:pancake> * 8, [<item:minecraft:sugar>, <item:minecraft:milk_bucket>, <item:kubejs:dough>, <item:minecraft:egg>]);

craftingTable.remove(<item:kubejs:dough>);
craftingTable.addShaped("dough", <item:kubejs:dough> * 8, [
    [<item:kubejs:wheat_flour>, <item:kubejs:wheat_flour>, <item:kubejs:wheat_flour>], 
    [<item:kubejs:wheat_flour>, <tag:items:forge:buckets/water>, <item:kubejs:wheat_flour>], 
    [<item:kubejs:wheat_flour>, <item:kubejs:wheat_flour>, <item:kubejs:wheat_flour>]]);

craftingTable.addShapeless("marshmallow", <item:kubejs:marshmallow> * 2, [<item:minecraft:slime_ball>, <item:minecraft:sugar>, <item:kubejs:wheat_flour>]);

craftingTable.addShapeless("wheat_flour", <item:kubejs:wheat_flour> * 3, [<item:minecraft:wheat>]);

craftingTable.addShapeless("magnetite", <item:spelunkery:raw_magnetite> * 2, [<item:minecraft:redstone>, <item:minecraft:raw_iron>, <item:minecraft:raw_iron>]);

craftingTable.remove(<item:spelunkery:item_magnet>);
craftingTable.addShaped("spelunkery_item_magnet", <item:spelunkery:item_magnet>, [
    [<item:minecraft:redstone>, <item:minecraft:air>, <item:minecraft:amethyst_shard>], 
    [<item:spelunkery:raw_magnetite>, <item:minecraft:air>, <item:spelunkery:raw_magnetite>], 
    [<item:minecraft:air>, <item:spelunkery:raw_magnetite>, <item:minecraft:air>]]);

craftingTable.remove(<item:supplementaries:sack>);
craftingTable.addShaped("supplementaries_sack", <item:supplementaries:sack>, [
    [<item:minecraft:wheat>, <item:minecraft:string>, <item:minecraft:wheat>], 
    [<item:minecraft:wheat>, <item:minecraft:air>, <item:minecraft:wheat>], 
    [<item:minecraft:wheat>, <item:minecraft:wheat>, <item:minecraft:wheat>]]);

//craftingTable.remove(<item:easel_does_it:easel>);
//craftingTable.addShaped("easel", <item:easel_does_it:easel>, [
    //[<item:minecraft:mangrove_planks>, <item:minecraft:air>], 
    //[<item:minecraft:stick>, <item:minecraft:mangrove_planks>], 
    //[<item:minecraft:mangrove_planks>, <item:minecraft:mangrove_planks>]]);

craftingTable.remove(<item:supplementaries:rope>);
craftingTable.addShaped("supplementaries_rope", <item:supplementaries:rope> * 3, [[<item:spelunkery:tangle_roots>], [<item:spelunkery:tangle_roots>], [<item:spelunkery:tangle_roots>]]);

craftingTable.remove(<item:supplementaries:altimeter>);
craftingTable.addShaped("altimeter", <item:supplementaries:altimeter>, [
    [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>], 
    [<item:minecraft:copper_ingot>, <item:minecraft:ender_pearl>, <item:minecraft:copper_ingot>], 
    [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>]]);

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

craftingTable.addShapeless("prickly_pear", <item:ecologics:prickly_pear>, [<tag:items:gamma:weird_food>, <item:minecraft:fermented_spider_eye>]);

//craftingTable.addShapeless("glazed_berries", <item:kubejs:chocolate_glazed_berries>, [<item:minecraft:sweet_berries>, <item:kubejs:bar_of_chocolate>]);

craftingTable.remove(<item:supplementaries:candy>);
craftingTable.addShapeless("candy", <item:supplementaries:candy> * 4, [<item:minecraft:sugar>, <item:minecraft:paper>, <item:kubejs:bar_of_chocolate>, <item:minecraft:pink_dye>]);

craftingTable.remove(<item:farmersdelight:honey_cookie>);
craftingTable.addShapeless("farmersdelight_honey_cookie", <item:farmersdelight:honey_cookie> * 8, [<item:kubejs:dough>, <item:minecraft:honey_bottle>, <item:kubejs:dough>]);

furnace.remove(<item:farmersdelight:fried_egg>);

craftingTable.addShapeless("eggple", <item:etcetera:eggple>, [<item:minecraft:apple>, <item:minecraft:egg>]);

craftingTable.remove(<item:etcetera:prickly_can>);
craftingTable.addShaped("etcetera_prickly_can", <item:etcetera:prickly_can>, [
    [<item:minecraft:cactus>, <item:minecraft:air>, <item:minecraft:cactus>], 
    [<item:minecraft:cactus>, <item:minecraft:air>, <item:minecraft:cactus>], 
    [<item:minecraft:cactus>, <item:minecraft:cactus>, <item:minecraft:cactus>]]);

craftingTable.addShapeless("honeyed_apple", <item:kubejs:honeyed_apple> * 2, [<item:minecraft:apple>, <item:minecraft:apple>, <item:minecraft:honey_bottle>]);

craftingTable.remove(<item:minecraft:mushroom_stew>);

craftingTable.remove(<item:minecraft:chest>);
craftingTable.remove(<item:woodworks:oak_chest>);
craftingTable.addShaped("chest", <item:minecraft:chest>, [
    [<item:minecraft:oak_planks>, <item:minecraft:oak_planks>, <item:minecraft:oak_planks>], 
    [<item:minecraft:oak_planks>, <item:minecraft:air>, <item:minecraft:oak_planks>], 
    [<item:minecraft:oak_planks>, <item:minecraft:oak_planks>, <item:minecraft:oak_planks>]]);

craftingTable.remove(<item:spelunkery:rock_salt_block>);

craftingTable.addShaped("leather", <item:minecraft:leather>, [
[<item:minecraft:air>, <item:kubejs:salt>, <item:minecraft:air>], 
[<item:kubejs:salt>, <item:minecraft:rotten_flesh>, <item:kubejs:salt>], 
[<item:minecraft:air>, <item:kubejs:salt>, <item:minecraft:air>]]);

craftingTable.addShapeless("chocolate_bar", <item:kubejs:bar_of_chocolate> * 2, [<item:farmersdelight:milk_bottle>, <item:kubejs:butter>, <item:minecraft:cocoa_beans>, <item:minecraft:sugar>]);

craftingTable.remove(<item:supplementaries:feather_block>);
craftingTable.addShaped("pillow_block", <item:supplementaries:feather_block>, [
[<item:etcetera:cotton_flower>, <item:minecraft:feather>],
[<item:minecraft:feather>, <item:etcetera:cotton_flower>]]);

craftingTable.addShaped("pillow_block_mirrored", <item:supplementaries:feather_block>, [
[<item:minecraft:feather>, <item:etcetera:cotton_flower>],
[<item:etcetera:cotton_flower>, <item:minecraft:feather>]]);

craftingTable.remove(<item:minecraft:feather>);

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

craftingTable.addShapeless("black_bed_dye", <item:minecraft:black_bed>, [<tag:items:minecraft:beds>, <item:minecraft:black_dye>]);
craftingTable.addShapeless("blue_bed_dye", <item:minecraft:blue_bed>, [<tag:items:minecraft:beds>, <item:minecraft:blue_dye>]);
craftingTable.addShapeless("brown_bed_dye", <item:minecraft:brown_bed>, [<tag:items:minecraft:beds>, <item:minecraft:brown_dye>]);
craftingTable.addShapeless("cyan_bed_dye", <item:minecraft:cyan_bed>, [<tag:items:minecraft:beds>, <item:minecraft:cyan_dye>]);
craftingTable.addShapeless("gray_bed_dye", <item:minecraft:gray_bed>, [<tag:items:minecraft:beds>, <item:minecraft:gray_dye>]);
craftingTable.addShapeless("green_bed_dye", <item:minecraft:green_bed>, [<tag:items:minecraft:beds>, <item:minecraft:green_dye>]);
craftingTable.addShapeless("light_blue_bed_dye", <item:minecraft:light_blue_bed>, [<tag:items:minecraft:beds>, <item:minecraft:light_blue_dye>]);
craftingTable.addShapeless("light_gray_bed_dye", <item:minecraft:light_gray_bed>, [<tag:items:minecraft:beds>, <item:minecraft:light_gray_dye>]);
craftingTable.addShapeless("lime_bed_dye", <item:minecraft:lime_bed>, [<tag:items:minecraft:beds>, <item:minecraft:lime_dye>]);
craftingTable.addShapeless("magenta_bed_dye", <item:minecraft:magenta_bed>, [<tag:items:minecraft:beds>, <item:minecraft:magenta_dye>]);
craftingTable.addShapeless("orange_bed_dye", <item:minecraft:orange_bed>, [<tag:items:minecraft:beds>, <item:minecraft:orange_dye>]);
craftingTable.addShapeless("pink_bed_dye", <item:minecraft:pink_bed>, [<tag:items:minecraft:beds>, <item:minecraft:pink_dye>]);
craftingTable.addShapeless("purple_bed_dye", <item:minecraft:purple_bed>, [<tag:items:minecraft:beds>, <item:minecraft:purple_dye>]);
craftingTable.addShapeless("red_bed_dye", <item:minecraft:red_bed>, [<tag:items:minecraft:beds>, <item:minecraft:red_dye>]);
craftingTable.addShapeless("white_bed_dye", <item:minecraft:white_bed>, [<tag:items:minecraft:beds>, <item:minecraft:white_dye>]);
craftingTable.addShapeless("yellow_bed_dye", <item:minecraft:yellow_bed>, [<tag:items:minecraft:beds>, <item:minecraft:yellow_dye>]);

craftingTable.addShaped("deepslate_tiles", <item:minecraft:deepslate_tiles> * 4, [
    [<item:minecraft:deepslate>, <item:minecraft:deepslate>], 
    [<item:minecraft:deepslate>, <item:minecraft:deepslate>]]);

craftingTable.remove(<item:minecraft:pumpkin>);
craftingTable.addShaped("pumpkin", <item:minecraft:pumpkin>, [
    [<item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>], 
    [<item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>], 
    [<item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>]]);

craftingTable.remove(<item:quark:backpack>);
craftingTable.addShaped("backpack_quark", <item:quark:backpack>, [
    [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>],
    [<item:minecraft:string>, <item:minecraft:iron_ingot>, <item:minecraft:string>],
    [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]]);

craftingTable.addShaped("basket", <item:farmersdelight:basket>, [
    [<item:minecraft:bamboo>, <item:minecraft:air>, <item:minecraft:bamboo>],
    [<item:minecraft:bamboo>, <item:minecraft:air>, <item:minecraft:bamboo>],
    [<item:minecraft:bamboo>, <item:minecraft:bamboo>, <item:minecraft:bamboo>]]);

craftingTable.addShapeless("canvas_sign", <item:farmersdelight:canvas_sign>, [<item:minecraft:oak_sign>, <item:minecraft:paper>]);
craftingTable.addShapeless("canvas_sign_hanging", <item:farmersdelight:hanging_canvas_sign>, [<item:minecraft:oak_hanging_sign>, <item:minecraft:paper>]);

stoneCutter.remove(<item:clayworks:chiseled_bricks>);
stoneCutter.remove(<item:minecraft:chiseled_stone_bricks>);
stoneCutter.remove(<item:minecraft:chiseled_deepslate>);
stoneCutter.remove(<item:minecraft:chiseled_sandstone>);
stoneCutter.remove(<item:minecraft:chiseled_red_sandstone>);
stoneCutter.remove(<item:minecraft:chiseled_nether_bricks>);
stoneCutter.remove(<item:minecraft:chiseled_polished_blackstone>);
stoneCutter.remove(<item:minecraft:chiseled_quartz_block>);

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

craftingTable.remove(<item:supplementaries:pulley_block>);
craftingTable.addShaped("pulley", <item:supplementaries:pulley_block>, [
    [<tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>], 
    [<item:minecraft:iron_ingot>, <tag:items:minecraft:logs>, <item:minecraft:iron_ingot>],
    [<tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>]]);

craftingTable.addShaped("waffle", <item:kubejs:waffle> * 2, [
    [<item:kubejs:dough>, <item:kubejs:butter>], 
    [<item:kubejs:butter>, <item:kubejs:dough>]]);

craftingTable.remove(<item:minecraft:cookie>);
craftingTable.addShapeless("minecraft_cookie", <item:minecraft:cookie> * 4, [<item:kubejs:dough>, <item:minecraft:cocoa_beans>, <item:kubejs:dough>]);

craftingTable.remove(<item:farmersdelight:sweet_berry_cookie>);
craftingTable.addShapeless("sweet_berry_cookie", <item:farmersdelight:sweet_berry_cookie> * 4, [<item:kubejs:dough>, <item:minecraft:sweet_berries>, <item:minecraft:sugar>, <item:kubejs:dough>]);

craftingTable.remove(<item:farmersdelight:honey_cookie>);
craftingTable.addShapeless("farmersdelight_honey_cookie", <item:farmersdelight:honey_cookie> * 4, [<item:kubejs:dough>, <item:minecraft:honey_bottle>, <item:minecraft:sugar>, <item:kubejs:dough>]);

craftingTable.remove(<item:minecraft:pumpkin_pie>);
craftingTable.addShaped("pumpkin_pie", <item:minecraft:pumpkin_pie>, [
    [<item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>, <item:farmersdelight:pumpkin_slice>], 
    [<item:kubejs:dough>, <item:kubejs:salt>, <item:kubejs:dough>]]);

craftingTable.remove(<item:upgrade_aquatic:mulberry_pie>);
craftingTable.addShaped("mulberry_pie", <item:upgrade_aquatic:mulberry_pie>, [
    [<item:upgrade_aquatic:mulberry>, <item:kubejs:butter>, <item:upgrade_aquatic:mulberry>], 
    [<item:kubejs:dough>, <item:minecraft:sugar>, <item:kubejs:dough>]]);

craftingTable.remove(<item:minecraft:cake>);
craftingTable.addShaped("cake", <item:minecraft:cake>, [
    [<item:kubejs:butter>, <item:minecraft:sweet_berries>, <item:kubejs:butter>], 
    [<item:kubejs:dough>, <item:minecraft:sugar>, <item:kubejs:dough>]]);

craftingTable.addShapeless("vegan_milk", <item:minecraft:milk_bucket>, [<item:minecraft:water_bucket>, <item:ecologics:walnut>, <item:ecologics:walnut>, <item:ecologics:walnut>, <item:ecologics:walnut>]);

craftingTable.remove(<item:minecraft:golden_carrot>);
craftingTable.addShaped("golden_carrot", <item:minecraft:golden_carrot>, [
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], 
    [<item:minecraft:gold_ingot>, <item:minecraft:carrot>, <item:minecraft:gold_ingot>],
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]]);

craftingTable.remove(<item:galosphere:golden_lichen_cordyceps>);
craftingTable.addShaped("golden_cordyceps", <item:galosphere:golden_lichen_cordyceps>, [
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], 
    [<item:minecraft:gold_ingot>, <item:galosphere:lichen_cordyceps>, <item:minecraft:gold_ingot>],
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]]);

//craftingTable.addShaped("sterling_helmet", <item:galosphere:sterling_helmet>, [
    //[<item:minecraft:air>, <item:galosphere:silver_ingot>, <item:minecraft:air>], 
    //[<item:galosphere:silver_ingot>, <item:minecraft:leather_helmet>, <item:galosphere:silver_ingot>],
    //[<item:minecraft:air>, <item:galosphere:silver_ingot>, <item:minecraft:air>]]);

//craftingTable.addShaped("sterling_chestplate", <item:galosphere:sterling_chestplate>, [
    //[<item:minecraft:air>, <item:galosphere:silver_ingot>, <item:minecraft:air>], 
    //[<item:galosphere:silver_ingot>, <item:minecraft:leather_chestplate>, <item:galosphere:silver_ingot>],
    //[<item:minecraft:air>, <item:galosphere:silver_ingot>, <item:minecraft:air>]]);

//craftingTable.addShaped("sterling_leggings", <item:galosphere:sterling_leggings>, [
    //[<item:minecraft:air>, <item:galosphere:silver_ingot>, <item:minecraft:air>], 
    //[<item:galosphere:silver_ingot>, <item:minecraft:leather_leggings>, <item:galosphere:silver_ingot>],
    //[<item:minecraft:air>, <item:galosphere:silver_ingot>, <item:minecraft:air>]]);

//craftingTable.addShaped("sterling_boots", <item:galosphere:sterling_boots>, [
    //[<item:minecraft:air>, <item:galosphere:silver_ingot>, <item:minecraft:air>], 
    //[<item:galosphere:silver_ingot>, <item:minecraft:leather_boots>, <item:galosphere:silver_ingot>],
    //[<item:minecraft:air>, <item:galosphere:silver_ingot>, <item:minecraft:air>]]);

//craftingTable.addShaped("sterling_horse_armor", <item:galosphere:sterling_horse_armor>, [
    //[<item:minecraft:air>, <item:galosphere:silver_ingot>, <item:minecraft:air>], 
    //[<item:galosphere:silver_ingot>, <item:minecraft:leather_horse_armor>, <item:galosphere:silver_ingot>],
    //[<item:minecraft:air>, <item:galosphere:silver_ingot>, <item:minecraft:air>]]);

//craftingTable.addShaped("dragon_armor", <item:rediscovered:dragon_armor>, [
    //[<item:minecraft:air>, <item:galosphere:silver_ingot>, <item:minecraft:air>], 
    //[<item:galosphere:silver_ingot>, <item:minecraft:iron_horse_armor>, <item:galosphere:silver_ingot>],
    //[<item:minecraft:air>, <item:galosphere:silver_ingot>, <item:minecraft:air>]]);

craftingTable.addShaped("mushroom_stew", <item:minecraft:mushroom_stew>, [
    [<item:minecraft:air>, <tag:items:forge:mushrooms>, <item:minecraft:air>], 
    [<tag:items:forge:mushrooms>, <item:kubejs:salt>, <tag:items:forge:mushrooms>],
    [<item:minecraft:air>, <item:minecraft:bowl>, <item:minecraft:air>]]);

craftingTable.remove(<item:minecraft:suspicious_stew>);
craftingTable.addShaped("suspicious_stew", <item:minecraft:suspicious_stew>, [
    [<item:minecraft:air>, <tag:items:minecraft:flowers>, <item:minecraft:air>], 
    [<tag:items:forge:mushrooms>, <item:kubejs:salt>, <tag:items:forge:mushrooms>],
    [<item:minecraft:air>, <item:minecraft:bowl>, <item:minecraft:air>]]);

//craftingTable.addShaped("cork", <item:arts_and_crafts:cork> * 2, [
    //[<item:minecraft:acacia_planks>, <item:minecraft:honeycomb>], 
    //[<item:minecraft:honeycomb>, <item:minecraft:acacia_planks>]]);

craftingTable.remove(<item:minecraft:bamboo_planks>);
craftingTable.addShapeless("bamboo_planks", <item:minecraft:bamboo_planks> * 2, [<item:minecraft:stripped_bamboo_block>]);

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

craftingTable.addShapeless("omelette", <item:kubejs:omelette>, [<item:farmersdelight:fried_egg>, <item:farmersdelight:milk_bottle>]);

craftingTable.remove(<item:rediscovered:gear>);
craftingTable.addShaped("gear", <item:rediscovered:gear> * 2, [
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>], 
    [<item:minecraft:iron_ingot>, <item:minecraft:quartz>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);

craftingTable.addShaped("drum", <item:etcetera:drum>, [
    [<item:minecraft:string>, <item:minecraft:paper>, <item:minecraft:string>],
    [<item:minecraft:air>, <item:minecraft:note_block>, <item:minecraft:air>]]);

//craftingTable.addShaped("emu_leggings", <item:alexsmobs:emu_leggings>, [
    //[<item:minecraft:air>, <item:alexsmobs:emu_feather>, <item:minecraft:air>], 
    //[<item:alexsmobs:emu_feather>, <item:minecraft:leather_leggings>, <item:alexsmobs:emu_feather>],
    //[<item:minecraft:air>, <item:alexsmobs:emu_feather>, <item:minecraft:air>]]);

    craftingTable.addShapeless("vegan_milk_bottle", <item:farmersdelight:milk_bottle>, [<item:minecraft:potion>.withTag({Potion: "minecraft:water"}), <item:ecologics:walnut>]);

craftingTable.addShaped("golden_potato", <item:kubejs:golden_potato>, [
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], 
    [<item:minecraft:gold_ingot>, <item:minecraft:potato>, <item:minecraft:gold_ingot>],
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]]);

craftingTable.remove(<item:alexsmobs:straddleboard>);
craftingTable.addShaped("straddleboard", <item:alexsmobs:straddleboard>, [
    [<item:minecraft:air>, <item:alexsmobs:straddlite>, <item:minecraft:netherite_scrap>], 
    [<item:alexsmobs:straddlite>, <item:minecraft:netherite_scrap>, <item:alexsmobs:straddlite>],
    [<item:minecraft:netherite_scrap>, <item:alexsmobs:straddlite>, <item:minecraft:air>]]);

//craftingTable.remove(<item:supplementaries:netherite_door>);
//craftingTable.addShaped("netherite_door", <item:supplementaries:netherite_door> * 3, [
    //[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:air>], 
    //[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:air>],
    //[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:air>]]);
//
//craftingTable.remove(<item:supplementaries:netherite_trapdoor>);
//craftingTable.addShaped("netherite_trapdoor", <item:supplementaries:netherite_trapdoor>, [
    //[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>],
    //[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>]]);

//craftingTable.addShaped("netherite_block", <item:minecraft:netherite_block>, [
    //[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>],
    //[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>],
    //[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>]]);

craftingTable.addShaped("cured_membrane", <item:galosphere:cured_membrane>, [
    [<item:minecraft:air>, <item:kubejs:halite_crystal>, <item:minecraft:air>], 
    [<item:kubejs:halite_crystal>, <item:minecraft:phantom_membrane>, <item:kubejs:halite_crystal>], 
    [<item:minecraft:air>, <item:kubejs:halite_crystal>, <item:minecraft:air>]]);

furnace.addRecipe("bread_furnace", <item:minecraft:bread>, <item:kubejs:dough>, 0.35, 200);
furnace.addRecipe("fried_egg_furnace", <item:farmersdelight:fried_egg>, <tag:items:forge:eggs>, 0.35, 200);

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

//Replace with Clayworks:
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

craftingTable.remove(<item:supplementaries:key>);
craftingTable.addShaped("silver_key", <item:supplementaries:key>, [
    [<item:galosphere:silver_ingot>, <item:galosphere:silver_ingot>], 
    [<item:galosphere:silver_nugget>, <item:minecraft:air>],
    [<item:galosphere:silver_nugget>, <item:galosphere:silver_nugget>]]);

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

craftingTable.addShaped("sculk_boomer", <item:alexsmobs:sculk_boomer>, [
    [<item:minecraft:sculk>, <item:minecraft:sculk>, <item:minecraft:sculk>], 
    [<item:minecraft:bone>, <item:alexsmobs:soul_heart>, <item:minecraft:bone>],
    [<item:minecraft:bone_block>, <item:minecraft:bone_block>, <item:minecraft:bone_block>]]);

craftingTable.addShapeless("soul_dust_heart", <item:kubejs:soul_dust> * 8, [<item:alexsmobs:soul_heart>]);

craftingTable.remove(<item:minecraft:soul_torch>);
craftingTable.addShaped("soul_torch", <item:minecraft:soul_torch> * 4, [
    [<item:kubejs:soul_dust>], 
    [<item:minecraft:stick>]]);

//craftingTable.addShaped("conch_of_conjuring", <item:savage_and_ravage:conch_of_conjuring>, [
    //[<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:air>],
    //[<item:minecraft:netherite_scrap>, <item:alexsmobs:soul_heart>, <item:minecraft:netherite_scrap>],
    //[<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:air>]]);

//craftingTable.addShaped("wand_of_freezing", <item:savage_and_ravage:wand_of_freezing>, [
    //[<item:minecraft:air>, <item:minecraft:blue_ice>, <item:minecraft:air>],
    //[<item:rediscovered:ancient_crying_obsidian>, <item:alexsmobs:soul_heart>, <item:rediscovered:ancient_crying_obsidian>],
    //[<item:minecraft:air>, <item:kubejs:ancient_rod>, <item:minecraft:air>]]);

//craftingTable.addShaped("cleaver_of_beheading", <item:savage_and_ravage:cleaver_of_beheading>, [
    //[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:netherite_sword>],
    //[<item:minecraft:air>, <item:minecraft:netherite_sword>, <item:minecraft:air>],
    //[<item:minecraft:netherite_sword>, <item:minecraft:air>, <item:minecraft:air>]]);

craftingTable.remove(<item:supplementaries:flute>);
craftingTable.addShaped("flute", <item:supplementaries:flute>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:bamboo>],
    [<item:minecraft:air>, <item:minecraft:bamboo>, <item:minecraft:air>],
    [<item:minecraft:bamboo>, <item:minecraft:air>, <item:minecraft:air>]]);

furnace.addRecipe("stripped_bamboo_block", <item:minecraft:stripped_bamboo_block>, <item:minecraft:bamboo_block>, 0.10, 200);

craftingTable.addShaped("trident", <item:minecraft:trident>, [
    [<item:kubejs:sharp_tooth>, <item:kubejs:sharp_tooth>, <item:kubejs:sharp_tooth>],
    [<item:minecraft:air>, <item:upgrade_aquatic:prismarine_rod>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:upgrade_aquatic:prismarine_rod>, <item:minecraft:air>]]);

craftingTable.remove(<item:upgrade_aquatic:prismarine_rod>);
craftingTable.addShaped("prismarine_rod", <item:upgrade_aquatic:prismarine_rod> * 2, [
    [<item:minecraft:prismarine_shard>],
    [<item:minecraft:prismarine_shard>]]);

craftingTable.remove(<item:rediscovered:mini_dragon_pylon>);
craftingTable.addShaped("mini_dragon_pylon", <item:rediscovered:mini_dragon_pylon>, [
    [<item:minecraft:glowstone_dust>, <item:minecraft:glass>, <item:minecraft:glowstone_dust>],
    [<item:minecraft:glass>, <item:rediscovered:ruby>, <item:minecraft:glass>],
    [<item:minecraft:glowstone_dust>, <item:minecraft:glass>, <item:minecraft:glowstone_dust>]]);

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

craftingTable.addShaped("bear_dust", <item:alexsmobs:bear_dust> * 4, [
    [<item:minecraft:air>, <item:alexsmobs:bear_fur>, <item:minecraft:air>],
    [<item:alexsmobs:bear_fur>, <item:kubejs:soul_dust>, <item:alexsmobs:bear_fur>],
    [<item:minecraft:air>, <item:alexsmobs:bear_fur>, <item:minecraft:air>]]);

craftingTable.remove(<item:minecraft:orange_dye>);
craftingTable.addShapeless("orange_dye_tulip", <item:minecraft:orange_dye>, [<item:minecraft:orange_tulip>]);
craftingTable.addShapeless("orange_dye_torchflower", <item:minecraft:orange_dye>, [<item:minecraft:torchflower>]);
craftingTable.addShapeless("orange_dye_mix", <item:minecraft:orange_dye>, [<item:minecraft:yellow_dye>, <item:minecraft:red_dye>]);

craftingTable.addShapeless("slime_ball_block", <item:minecraft:slime_ball> * 9, [<item:minecraft:slime_block>]);

craftingTable.addShapeless("blowball_white_dye", <item:minecraft:white_dye> * 2, [<item:habitat:blowball>]);

furnace.remove(<item:minecraft:smooth_stone>);
stoneCutter.addRecipe("stonecutter_smooth_stone", <item:minecraft:smooth_stone>, <item:minecraft:stone>);

craftingTable.remove(<item:minecraft:respawn_anchor>);
craftingTable.addShaped("respawn_anchor", <item:minecraft:respawn_anchor>, [
    [<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>],
    [<item:minecraft:glowstone>, <item:alexsmobs:soul_heart>, <item:minecraft:glowstone>],
    [<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>]]);

craftingTable.addShaped("maraca", <item:alexsmobs:maraca> * 3, [
    [<item:minecraft:air>, <tag:items:minecraft:planks>, <item:minecraft:air>],
    [<tag:items:minecraft:planks>, <item:minecraft:sand>, <tag:items:minecraft:planks>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

craftingTable.remove(<item:minecraft:chiseled_deepslate>);
stoneCutter.remove(<item:minecraft:chiseled_deepslate>);

craftingTable.addShaped("chiseled_deepslate", <item:minecraft:chiseled_deepslate>, [
    [<item:minecraft:deepslate_tile_slab>],
    [<item:minecraft:deepslate_tile_slab>]]);

craftingTable.remove(<item:etcetera:turtle_raft>);
craftingTable.addShaped("turtle_raft", <item:etcetera:turtle_raft>, [
    [<item:minecraft:scute>, <item:minecraft:wooden_shovel>, <item:minecraft:scute>],
    [<item:minecraft:scute>, <item:minecraft:scute>, <item:minecraft:scute>]]);

//craftingTable.remove(<item:minecraft:red_nether_bricks>);
//craftingTable.addShaped("blazing_bricks", <item:minecraft:red_nether_bricks> * 8, [
    //[<tag:items:gamma:blazified_tiles>, <tag:items:gamma:blazified_tiles>, <tag:items:gamma:blazified_tiles>], 
    //[<tag:items:gamma:blazified_tiles>, <item:minecraft:blaze_powder>, <tag:items:gamma:blazified_tiles>],
    //[<tag:items:gamma:blazified_tiles>, <tag:items:gamma:blazified_tiles>, <tag:items:gamma:blazified_tiles>]]);

craftingTable.addShaped("sombrero", <item:alexsmobs:sombrero>, [
    [<item:minecraft:air>, <item:minecraft:wheat>, <item:minecraft:air>], 
    [<item:minecraft:wheat>, <item:minecraft:leather_helmet>, <item:minecraft:wheat>]]);

craftingTable.remove(<item:snowyspirit:snow_globe>);
craftingTable.addShaped("snow_globe", <item:snowyspirit:snow_globe> * 2, [
    [<item:minecraft:air>, <item:minecraft:glass_pane>, <item:minecraft:air>], 
    [<item:minecraft:glass_pane>, <item:minecraft:snowball>, <item:minecraft:glass_pane>],
    [<item:minecraft:air>, <item:minecraft:cobbled_deepslate_slab>, <item:minecraft:air>]]);

craftingTable.remove(<item:chalk:black_chalk>);
craftingTable.addShapeless("black_chalk", <item:chalk:black_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:black_dyes>]);

craftingTable.remove(<item:chalk:blue_chalk>);
craftingTable.addShapeless("blue_chalk", <item:chalk:blue_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:blue_dyes>]);

craftingTable.remove(<item:chalk:brown_chalk>);
craftingTable.addShapeless("brown_chalk", <item:chalk:brown_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:brown_dyes>]);

craftingTable.remove(<item:chalk:cyan_chalk>);
craftingTable.addShapeless("cyan_chalk", <item:chalk:cyan_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:cyan_dyes>]);

craftingTable.remove(<item:chalk:gray_chalk>);
craftingTable.addShapeless("gray_chalk", <item:chalk:gray_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:gray_dyes>]);

craftingTable.remove(<item:chalk:green_chalk>);
craftingTable.addShapeless("green_chalk", <item:chalk:green_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:green_dyes>]);

craftingTable.remove(<item:chalk:light_blue_chalk>);
craftingTable.addShapeless("light_blue_chalk", <item:chalk:light_blue_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:light_blue_dyes>]);

craftingTable.remove(<item:chalk:light_gray_chalk>);
craftingTable.addShapeless("light_gray_chalk", <item:chalk:light_gray_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:light_gray_dyes>]);

craftingTable.remove(<item:chalk:lime_chalk>);
craftingTable.addShapeless("lime_chalk", <item:chalk:lime_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:lime_dyes>]);

craftingTable.remove(<item:chalk:magenta_chalk>);
craftingTable.addShapeless("magenta_chalk", <item:chalk:magenta_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:magenta_dyes>]);

craftingTable.remove(<item:chalk:orange_chalk>);
craftingTable.addShapeless("orange_chalk", <item:chalk:orange_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:orange_dyes>]);

craftingTable.remove(<item:chalk:pink_chalk>);
craftingTable.addShapeless("pink_chalk", <item:chalk:pink_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:pink_dyes>]);

craftingTable.remove(<item:chalk:purple_chalk>);
craftingTable.addShapeless("purple_chalk", <item:chalk:purple_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:purple_dyes>]);

craftingTable.remove(<item:chalk:red_chalk>);
craftingTable.addShapeless("red_chalk", <item:chalk:red_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:red_dyes>]);

craftingTable.remove(<item:chalk:white_chalk>);
craftingTable.addShapeless("white_chalk", <item:chalk:white_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:white_dyes>]);

craftingTable.remove(<item:chalk:yellow_chalk>);
craftingTable.addShapeless("yellow_chalk", <item:chalk:yellow_chalk>, [<tag:items:chalk:chalks>, <tag:items:c:yellow_dyes>]);

craftingTable.addShaped("chalk", <item:chalk:white_chalk>, [
    [<item:minecraft:calcite>], 
    [<item:minecraft:calcite>]]);

craftingTable.remove(<item:supplementaries:checker_block>);
craftingTable.addShaped("checker_block", <item:supplementaries:checker_block> * 4, [
    [<item:minecraft:quartz_block>, <item:minecraft:blackstone>], 
    [<item:minecraft:blackstone>, <item:minecraft:quartz_block>]]);

craftingTable.addShapeless("banana_bread", <item:kubejs:banana_bread> * 2, [<item:kubejs:butter>, <item:alexsmobs:banana>, <item:minecraft:sugar>, <item:kubejs:dough>]);

craftingTable.addShapeless("butter_bucket", <item:kubejs:butter> * 8, [<item:minecraft:milk_bucket>, <item:minecraft:milk_bucket>]);
craftingTable.addShapeless("butter_bottle", <item:kubejs:butter> * 2, [<item:farmersdelight:milk_bottle>, <item:farmersdelight:milk_bottle>]);

craftingTable.remove(<item:alexsmobs:crocodile_chestplate>);
craftingTable.addShaped("scute_chestplate", <item:alexsmobs:crocodile_chestplate>, [
    [<item:minecraft:scute>, <item:minecraft:air>, <item:minecraft:scute>], 
    [<item:minecraft:scute>, <item:minecraft:scute>, <item:minecraft:scute>],
    [<item:minecraft:scute>, <item:minecraft:scute>, <item:minecraft:scute>]]);

craftingTable.addShapeless("tangle_roots_mangrove", <item:spelunkery:tangle_roots> * 3, [<item:minecraft:mangrove_roots>]);

//Music Discs:

furnace.addRecipe("music_disc_to_dye", <item:minecraft:black_dye>, <tag:items:gamma:music_discs>, 0.35, 200);
furnace.addRecipe("ambient_disc_to_dye", <item:minecraft:blue_dye>, <tag:items:gamma:ambient_discs>, 0.35, 200);

craftingTable.addShaped("music_disc_droopy2", <item:kubejs:music_disc_droopy2>, [
    [<item:minecraft:air>, <item:minecraft:amethyst_shard>, <item:minecraft:air>], 
    [<item:minecraft:amethyst_shard>, <item:minecraft:music_disc_pigstep>, <item:minecraft:amethyst_shard>],
    [<item:minecraft:air>, <item:minecraft:amethyst_shard>, <item:minecraft:air>]]);

craftingTable.addShaped("music_disc_eleven", <item:kubejs:music_disc_eleven>, [
    [<item:minecraft:air>, <item:minecraft:disc_fragment_5>, <item:minecraft:air>], 
    [<item:minecraft:disc_fragment_5>, <item:minecraft:music_disc_11>, <item:minecraft:disc_fragment_5>],
    [<item:minecraft:air>, <item:minecraft:disc_fragment_5>, <item:minecraft:air>]]);

craftingTable.remove(<item:minecraft:music_disc_5>);
craftingTable.addShaped("music_disc_5", <item:minecraft:music_disc_5>, [
    [<item:minecraft:air>, <item:minecraft:disc_fragment_5>, <item:minecraft:air>], 
    [<item:minecraft:disc_fragment_5>, <item:minecraft:quartz>, <item:minecraft:disc_fragment_5>],
    [<item:minecraft:air>, <item:minecraft:disc_fragment_5>, <item:minecraft:air>]]);

craftingTable.remove(<item:minecraft:furnace>);
craftingTable.addShaped("furnace", <item:minecraft:furnace>, [
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>], 
    [<item:minecraft:cobblestone>, <item:minecraft:air>, <item:minecraft:cobblestone>],
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]]);

craftingTable.remove(<item:minecraft:slime_ball>);

craftingTable.addShapeless("organic_compost", <item:farmersdelight:organic_compost>, [<item:minecraft:bone_meal>, <item:minecraft:dirt>, <tag:items:gamma:compost_ingredients>]);

//craftingTable.remove(<item:etcetera:iridescent_wool>);
//craftingTable.addShaped("iridescent_wool", <item:etcetera:iridescent_wool> * 8, [
    //[<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <tag:items:minecraft:wool>],
    //[<tag:items:minecraft:wool>, <item:etcetera:bismuth_ingot>, <tag:items:minecraft:wool>],
    //[<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <tag:items:minecraft:wool>]]);

//craftingTable.remove(<item:etcetera:iridescent_terracotta>);
//craftingTable.addShaped("iridescent_terracotta", <item:etcetera:iridescent_terracotta> * 8, [
    //[<tag:items:minecraft:terracotta>, <tag:items:minecraft:terracotta>, <tag:items:minecraft:terracotta>],
    //[<tag:items:minecraft:terracotta>, <item:etcetera:bismuth_ingot>, <tag:items:minecraft:terracotta>],
    //[<tag:items:minecraft:terracotta>, <tag:items:minecraft:terracotta>, <tag:items:minecraft:terracotta>]]);

//craftingTable.remove(<item:etcetera:iridescent_glass>);
//craftingTable.addShaped("iridescent_glass", <item:etcetera:iridescent_glass> * 8, [
    //[<tag:items:c:glass_blocks>, <tag:items:c:glass_blocks>, <tag:items:c:glass_blocks>],
    //[<tag:items:c:glass_blocks>, <item:etcetera:bismuth_ingot>, <tag:items:c:glass_blocks>],
    //[<tag:items:c:glass_blocks>, <tag:items:c:glass_blocks>, <tag:items:c:glass_blocks>]]);

//craftingTable.remove(<item:etcetera:iridescent_lantern>);
//craftingTable.addShaped("iridescent_lantern", <item:etcetera:iridescent_lantern> * 8, [
    //[<item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>],
    //[<item:minecraft:sea_lantern>, <item:etcetera:bismuth_ingot>, <item:minecraft:sea_lantern>],
    //[<item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>]]);

//craftingTable.remove(<item:etcetera:iridescent_glass_pane>);
//craftingTable.addShaped("iridescent_glass_pane_alt", <item:etcetera:iridescent_glass_pane> * 8, [
    //[<tag:items:c:glass_panes>, <tag:items:c:glass_panes>, <tag:items:c:glass_panes>],
    //[<tag:items:c:glass_panes>, <item:etcetera:bismuth_ingot>, <tag:items:c:glass_panes>],
    //[<tag:items:c:glass_panes>, <tag:items:c:glass_panes>, <tag:items:c:glass_panes>]]);

//craftingTable.addShaped("iridescent_glass_pane", <item:etcetera:iridescent_glass_pane> * 16, [
    //[<item:etcetera:iridescent_glass>, <item:etcetera:iridescent_glass>, <item:etcetera:iridescent_glass>],
    //[<item:etcetera:iridescent_glass>, <item:etcetera:iridescent_glass>, <item:etcetera:iridescent_glass>]]);

craftingTable.addShaped("rock_salt", <item:kubejs:rock_salt>, [
    [<item:kubejs:salt>, <item:kubejs:salt>],
    [<item:kubejs:salt>, <item:kubejs:salt>]]);

craftingTable.remove(<item:minecraft:cobblestone>);

craftingTable.remove(<item:spelunkery:compression_blast_miner>);
craftingTable.addShaped("compression_blast_miner", <item:spelunkery:compression_blast_miner>, [
    [<item:minecraft:obsidian>, <item:minecraft:redstone>, <item:minecraft:obsidian>],
    [<item:minecraft:redstone>, <item:minecraft:nether_star>, <item:minecraft:redstone>],
    [<item:minecraft:obsidian>, <item:minecraft:redstone>, <item:minecraft:obsidian>]]);

craftingTable.addShaped("mysterious_stone", <item:kubejs:mysterious_stone> * 16, [
    [<item:minecraft:amethyst_block>, <item:minecraft:amethyst_block>, <item:minecraft:amethyst_block>],
    [<item:minecraft:amethyst_block>, <item:alexsmobs:farseer_arm>, <item:minecraft:amethyst_block>],
    [<item:minecraft:amethyst_block>, <item:minecraft:amethyst_block>, <item:minecraft:amethyst_block>]]);

craftingTable.addShapeless("scroll_clean_map", <item:minecraft:map>, [<item:supplementaries:cartographers_quill>, <item:supplementaries:soap>]);

craftingTable.remove(<item:minecraft:mossy_stone_bricks>);
craftingTable.remove(<item:minecraft:mossy_cobblestone>);

craftingTable.addShaped("slingshot", <item:supplementaries:slingshot>, [
    [<item:minecraft:stick>, <item:supplementaries:rope>, <item:minecraft:stick>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

craftingTable.remove(<item:supplementaries:doormat>);
craftingTable.addShaped("doormat", <item:supplementaries:doormat>, [
    [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]]);

craftingTable.addShapeless("string_fur", <item:minecraft:string> * 3, [<item:alexsmobs:bison_fur> | <item:alexsmobs:bear_fur>]);

//Copper Tools:
craftingTable.addShaped("copper_axe", <item:kubejs:copper_axe>, [
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
    [<item:minecraft:copper_ingot>, <item:minecraft:stick>],
    [<item:minecraft:air>, <item:minecraft:stick>]]);

craftingTable.addShaped("mirrored_copper_axe", <item:kubejs:copper_axe>, [
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
    [<item:minecraft:stick>, <item:minecraft:copper_ingot>],
    [<item:minecraft:stick>, <item:minecraft:air>]]);

craftingTable.addShaped("copper_hoe", <item:kubejs:copper_hoe>, [
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
    [<item:minecraft:air>, <item:minecraft:stick>],
    [<item:minecraft:air>, <item:minecraft:stick>]]);

craftingTable.addShaped("mirrored_copper_hoe", <item:kubejs:copper_hoe>, [
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
    [<item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:stick>, <item:minecraft:air>]]);

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

craftingTable.addShaped("elytra", <item:minecraft:elytra>, [
    [<item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>],
    [<item:minecraft:phantom_membrane>, <item:minecraft:air>, <item:minecraft:phantom_membrane>],
    [<item:minecraft:phantom_membrane>, <item:minecraft:air>, <item:minecraft:phantom_membrane>]]);

//3.1:
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

//Soapstone: / Replace with KubeJS Later!
//craftingTable.addShaped("soapstone_stairs", <item:arts_and_crafts:soapstone_stairs> * 4, [
    //[<item:supplementaries:soap_block>, <item:minecraft:air>, <item:minecraft:air>],
    //[<item:supplementaries:soap_block>, <item:supplementaries:soap_block>, <item:minecraft:air>],
    //[<item:supplementaries:soap_block>, <item:supplementaries:soap_block>, <item:supplementaries:soap_block>]]);

//craftingTable.addShaped("soapstone_slab", <item:arts_and_crafts:soapstone_slab> * 6, [
    //[<item:supplementaries:soap_block>, <item:supplementaries:soap_block>, <item:supplementaries:soap_block>]]);

//craftingTable.addShaped("soapstone_wall", <item:arts_and_crafts:soapstone_wall> * 6, [
    //[<item:supplementaries:soap_block>, <item:supplementaries:soap_block>, <item:supplementaries:soap_block>],
    //[<item:supplementaries:soap_block>, <item:supplementaries:soap_block>, <item:supplementaries:soap_block>]]);

//stoneCutter.addRecipe("small_soapstone_stairs_stonecutter", <item:arts_and_crafts:soapstone_stairs>, <item:supplementaries:soap_block>);
//stoneCutter.addRecipe("small_soapstone_slab_stonecutter", <item:arts_and_crafts:soapstone_slab> * 2, <item:supplementaries:soap_block>);
//stoneCutter.addRecipe("small_soapstone_wall_stonecutter", <item:arts_and_crafts:soapstone_wall>, <item:supplementaries:soap_block>);

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

//craftingTable.addShaped("dragon_altar", <item:rediscovered:dragon_altar>, [
    //[<item:minecraft:copper_block>, <item:rediscovered:glowing_obsidian>, <item:minecraft:copper_block>],
    //[<item:rediscovered:glowing_obsidian>, <item:minecraft:diamond>, <item:rediscovered:glowing_obsidian>],
    //[<item:minecraft:copper_block>, <item:rediscovered:glowing_obsidian>, <item:minecraft:copper_block>]]);

//3.4:
craftingTable.addShaped("pipe", <item:quark:pipe> * 6, [
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
    [<tag:items:forge:glass_panes>, <tag:items:forge:glass_panes>, <tag:items:forge:glass_panes>],
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>]]);

//3.6:
//Limestone:
stoneCutter.remove(<item:quark:limestone_bricks>);
stoneCutter.remove(<item:quark:limestone_bricks_stairs>);
stoneCutter.remove(<item:quark:limestone_bricks_slab>);
stoneCutter.remove(<item:quark:limestone_bricks_wall>);
stoneCutter.remove(<item:quark:limestone>);
stoneCutter.remove(<item:quark:limestone_stairs>);
stoneCutter.remove(<item:quark:limestone_slab>);
stoneCutter.remove(<item:quark:limestone_wall>);

stoneCutter.addRecipe("stonecutter_limestone_bricks", <item:quark:limestone_bricks>, <item:quark:limestone>);
stoneCutter.addRecipe("stonecutter_limestone_bricks_stairs", <item:quark:limestone_bricks_stairs>, <item:quark:limestone_bricks>);
stoneCutter.addRecipe("stonecutter_limestone_bricks_slab", <item:quark:limestone_bricks_slab> * 2, <item:quark:limestone_bricks>);
stoneCutter.addRecipe("stonecutter_limestone_bricks_wall", <item:quark:limestone_bricks_wall>, <item:quark:limestone_bricks>);
stoneCutter.addRecipe("stonecutter_limestone_stairs", <item:quark:limestone_stairs>, <item:quark:limestone>);
stoneCutter.addRecipe("stonecutter_limestone_slab", <item:quark:limestone_slab> * 2, <item:quark:limestone>);
stoneCutter.addRecipe("stonecutter_limestone_wall", <item:quark:limestone_wall>, <item:quark:limestone>);

    craftingTable.addShaped("limestone_bricks", <item:quark:limestone_bricks> * 4, [
        [<item:quark:limestone>, <item:quark:limestone>],
        [<item:quark:limestone>, <item:quark:limestone>]]);

    craftingTable.addShaped("limestone_brick_stairs", <item:quark:limestone_bricks_stairs> * 4, [
        [<item:quark:limestone_bricks>, <item:minecraft:air>, <item:minecraft:air>],
        [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:minecraft:air>],
        [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:quark:limestone_bricks>]]);

    craftingTable.addShaped("limestone_brick_slab", <item:quark:limestone_bricks_slab> * 6, [
        [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:quark:limestone_bricks>]]);

    craftingTable.addShaped("limestone_brick_wall", <item:quark:limestone_bricks_wall> * 6, [
        [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:quark:limestone_bricks>],
        [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:quark:limestone_bricks>]]);

    craftingTable.addShaped("limestone_stairs", <item:quark:limestone_stairs> * 4, [
        [<item:quark:limestone>, <item:minecraft:air>, <item:minecraft:air>],
        [<item:quark:limestone>, <item:quark:limestone>, <item:minecraft:air>],
        [<item:quark:limestone>, <item:quark:limestone>, <item:quark:limestone>]]);

    craftingTable.addShaped("limestone_slab", <item:quark:limestone_slab> * 6, [
        [<item:quark:limestone>, <item:quark:limestone>, <item:quark:limestone>]]);

    craftingTable.addShaped("limestone_wall", <item:quark:limestone_wall> * 6, [
        [<item:quark:limestone>, <item:quark:limestone>, <item:quark:limestone>],
        [<item:quark:limestone>, <item:quark:limestone>, <item:quark:limestone>]]);

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

//3.7:
craftingTable.addShapeless("tiny_potato", <item:quark:tiny_potato>, [<item:minecraft:potato>, <item:alexsmobs:soul_heart>]);

craftingTable.addShaped("lava_lamp", <item:kubejs:lava_lamp>, [
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <item:minecraft:lava_bucket>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);

craftingTable.addShaped("bismuth_pickaxe", <item:kubejs:bismuth_pickaxe>, [
    [<item:etcetera:bismuth_ingot>, <item:etcetera:bismuth_ingot>, <item:etcetera:bismuth_ingot>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

craftingTable.addShapeless("glazed_steak", <item:kubejs:glazed_steak> * 2, [<item:minecraft:cooked_beef>, <item:minecraft:cooked_beef>, <item:minecraft:honey_bottle>]);

craftingTable.addShaped("warped_fungus_on_a_stick", <item:minecraft:warped_fungus_on_a_stick>, [
    [<item:minecraft:fishing_rod>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:red_mushroom>, <item:minecraft:air>]]);

furnace.addRecipe("shattered_dimensional_carver", <item:alexsmobs:shattered_dimensional_carver>, <item:alexsmobs:dimensional_carver>, 0.35, 200);

//3.9:
//craftingTable.addShaped("bismuth_block", <item:kubejs:bismuth_block>, [
    //[<item:etcetera:bismuth_ingot>, <item:etcetera:bismuth_ingot>, <item:etcetera:bismuth_ingot>],
    //[<item:etcetera:bismuth_ingot>, <item:etcetera:bismuth_ingot>, <item:etcetera:bismuth_ingot>],
    //[<item:etcetera:bismuth_ingot>, <item:etcetera:bismuth_ingot>, <item:etcetera:bismuth_ingot>]]);

//craftingTable.addShapeless("bismuth_ingot_from_block", <item:etcetera:bismuth_ingot> * 9, [<item:kubejs:bismuth_block>]);

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

//Netherite Tier:
//craftingTable.addShaped("netherite_helmet", <item:minecraft:netherite_helmet>, [
    //[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>], 
    //[<item:minecraft:netherite_scrap>, <item:minecraft:air>, <item:minecraft:netherite_scrap>]]);
//
//craftingTable.addShaped("netherite_chestnetherite", <item:minecraft:netherite_chestplate>, [
    //[<item:minecraft:netherite_scrap>, <item:minecraft:air>, <item:minecraft:netherite_scrap>], 
    //[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>],
    //[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>]]);
//
//craftingTable.addShaped("netherite_leggings", <item:minecraft:netherite_leggings>, [
    //[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>], 
    //[<item:minecraft:netherite_scrap>, <item:minecraft:air>, <item:minecraft:netherite_scrap>],
    //[<item:minecraft:netherite_scrap>, <item:minecraft:air>, <item:minecraft:netherite_scrap>]]);
//
//craftingTable.addShaped("netherite_boots", <item:minecraft:netherite_boots>, [
    //[<item:minecraft:netherite_scrap>, <item:minecraft:air>, <item:minecraft:netherite_scrap>], 
    //[<item:minecraft:netherite_scrap>, <item:minecraft:air>, <item:minecraft:netherite_scrap>]]);
//
//craftingTable.addShaped("netherite_axe", <item:minecraft:netherite_axe>, [
    //[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:air>],
    //[<item:minecraft:netherite_scrap>, <item:minecraft:stick>, <item:minecraft:air>],
    //[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);
//
//craftingTable.addShaped("netherite_hoe", <item:minecraft:netherite_hoe>, [
    //[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:air>],
    //[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    //[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);
//
//craftingTable.addShaped("netherite_pickaxe", <item:minecraft:netherite_pickaxe>, [
    //[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>],
    //[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    //[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);
//
//craftingTable.addShaped("netherite_shovel", <item:minecraft:netherite_shovel>, [
    //[<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:air>],
    //[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    //[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);
//
//craftingTable.addShaped("netherite_sword", <item:minecraft:netherite_sword>, [
    //[<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:air>],
    //[<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:air>],
    //[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

//3.17:
craftingTable.remove(<item:minecraft:glow_item_frame>);
craftingTable.addShapeless("glow_item_frame", <item:minecraft:glow_item_frame>, [<item:minecraft:item_frame>, <item:kubejs:glow_paste>]);

craftingTable.remove(<item:spelunkery:glowstick>);
craftingTable.addShaped("glowstick", <item:spelunkery:glowstick> * 4, [
    [<item:minecraft:air>, <item:minecraft:slime_ball>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:kubejs:glow_paste>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

craftingTable.remove(<item:minecraft:hopper>);
craftingTable.addShaped("hopper", <item:minecraft:hopper> * 3, [
    [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <tag:items:forge:chests/wooden>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);

craftingTable.remove(<item:quark:paper_wall>);
craftingTable.addShaped("paper_wall", <item:quark:paper_wall> * 8, [
    [<item:minecraft:paper>, <item:minecraft:stick>, <item:minecraft:paper>],
    [<item:minecraft:stick>, <item:minecraft:paper>, <item:minecraft:stick>],
    [<item:minecraft:paper>, <item:minecraft:stick>, <item:minecraft:paper>]]);

craftingTable.remove(<item:minecraft:blaze_powder>);
craftingTable.addShapeless("blaze_powder", <item:minecraft:blaze_powder> * 3, [<item:minecraft:blaze_rod>]);

craftingTable.remove(<item:supplementaries:soap>);
furnace.addRecipe("soap", <item:supplementaries:soap>, <item:supplementaries:soap_block>, 0.35, 200);

//3.18:
craftingTable.remove(<item:minecraft:purpur_block>);
craftingTable.addShaped("purpur_bricks", <item:minecraft:purpur_block> * 8, [
    [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:quark:limestone_bricks>], 
    [<item:quark:limestone_bricks>, <item:minecraft:purple_dye>, <item:quark:limestone_bricks>],
    [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:quark:limestone_bricks>]]);

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

//stoneCutter.addRecipe("gloomy_tiles_stonecutter", <item:kubejs:gloomy_tiles>, <item:minecraft:end_stone>);
//stoneCutter.addRecipe("gloomy_tiles_stairs_stonecutter", <item:kubejs:gloomy_tiles_stairs>, <item:minecraft:end_stone>);
//stoneCutter.addRecipe("gloomy_tiles_slab_stonecutter", <item:kubejs:gloomy_tiles_slab> * 2, <item:minecraft:end_stone>);
//stoneCutter.addRecipe("gloomy_tiles_wall_stonecutter", <item:kubejs:gloomy_tiles_wall>, <item:minecraft:end_stone>);

craftingTable.remove(<item:quark:ender_watcher>);
craftingTable.addShaped("ender_watcher", <item:quark:ender_watcher>, [
    [<item:minecraft:obsidian>, <item:minecraft:redstone>, <item:minecraft:obsidian>],
    [<item:minecraft:redstone>, <item:minecraft:ender_pearl>, <item:minecraft:redstone>],
    [<item:minecraft:obsidian>, <item:minecraft:redstone>, <item:minecraft:obsidian>]]);

craftingTable.remove(<item:minecraft:ender_chest>);
craftingTable.addShaped("ender_chest", <item:minecraft:ender_chest>, [
    [<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>],
    [<item:minecraft:obsidian>, <item:minecraft:ender_pearl>, <item:minecraft:obsidian>],
    [<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>]]);

//3.19:
craftingTable.addShaped("sponge", <item:minecraft:sponge> * 3, [
    [<tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>],
    [<tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>],
    [<tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>, <tag:items:gamma:coral_blocks>]]);

craftingTable.remove(<item:minecraft:fire_charge>);
craftingTable.addShaped("fire_charge", <item:minecraft:fire_charge> * 3, [
    [<item:minecraft:air>, <tag:items:minecraft:coals>, <item:minecraft:air>],
    [<tag:items:minecraft:coals>, <item:alexsmobs:lava_bottle>, <tag:items:minecraft:coals>],
    [<item:minecraft:air>, <tag:items:minecraft:coals>, <item:minecraft:air>]]);

craftingTable.remove(<item:upgrade_aquatic:music_disc_atlantis>);
craftingTable.addShaped("music_disc_atlantis", <item:upgrade_aquatic:music_disc_atlantis>, [
    [<item:minecraft:air>, <item:upgrade_aquatic:disc_fragment_atlantis>, <item:minecraft:air>], 
    [<item:upgrade_aquatic:disc_fragment_atlantis>, <item:minecraft:quartz>, <item:upgrade_aquatic:disc_fragment_atlantis>],
    [<item:minecraft:air>, <item:upgrade_aquatic:disc_fragment_atlantis>, <item:minecraft:air>]]);

craftingTable.remove(<item:etcetera:tidal_helmet>);
craftingTable.addShapeless("tidal_helmet", <item:etcetera:tidal_helmet>, [<item:minecraft:turtle_helmet>, <item:minecraft:heart_of_the_sea>]);

//4.0:
craftingTable.remove(<item:minecraft:tinted_glass>);
furnace.addRecipe("tinted_glass", <item:minecraft:tinted_glass>, <item:minecraft:gravel>, 0.35, 200);

furnace.addRecipe("brittle_packed_mud", <item:rediscovered:brittle_packed_mud>, <item:minecraft:packed_mud>, 0.35, 200);
furnace.addRecipe("brittle_mud_bricks", <item:rediscovered:brittle_mud_bricks>, <item:minecraft:mud_bricks>, 0.35, 200);

//stoneCutter.addRecipe("smooth_stone_slab_from_stone_slab", <item:minecraft:smooth_stone_slab>, <item:minecraft:stone_slab>);
//stoneCutter.addRecipe("stone_brick_stairs_from_stone_stairs", <item:minecraft:stone_brick_stairs>, <item:minecraft:stone_stairs>);
//stoneCutter.addRecipe("stone_brick_slab_from_stone_slab", <item:minecraft:stone_brick_slab>, <item:minecraft:stone_slab>);

//4.1:
craftingTable.remove(<item:snowyspirit:glow_lights_prismatic>);
craftingTable.addShapeless("garland", <item:snowyspirit:glow_lights_prismatic> * 8, [<item:minecraft:diamond>, <item:minecraft:amethyst_shard>, <item:minecraft:glowstone_dust>, <item:minecraft:string>]);

craftingTable.addShapeless("glow_paste_glow_ink_sac", <item:kubejs:glow_paste> * 3, [<item:minecraft:glow_ink_sac>]);

furnace.addRecipe("glow_paste_smelt", <item:kubejs:glow_paste>, <item:spelunkery:phosphor_shroomlight> | <item:minecraft:sculk> | <item:minecraft:sculk_vein> | <item:spelunkery:mushgloom_block> | <item:minecraft:glow_lichen> | <item:spelunkery:mushgloom>, 0.35, 200);

//4.2:
craftingTable.remove(<item:minecraft:granite>);
craftingTable.remove(<item:minecraft:andesite>);
craftingTable.remove(<item:minecraft:diorite>);

craftingTable.remove(<item:supplementaries:soap_block>);

craftingTable.remove(<item:rediscovered:studded_helmet>);
craftingTable.remove(<item:rediscovered:studded_chestplate>);
craftingTable.remove(<item:rediscovered:studded_leggings>);
craftingTable.remove(<item:rediscovered:studded_boots>);

craftingTable.addShaped("deepslate_stairs", <item:minecraft:cobbled_deepslate_stairs> * 4, [
    [<item:minecraft:deepslate>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:air>],
    [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:deepslate>]]);

craftingTable.addShaped("deepslate_slab", <item:minecraft:cobbled_deepslate_slab> * 6, [
    [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:deepslate>]]);

craftingTable.addShaped("deepslate_wall", <item:minecraft:cobbled_deepslate_wall> * 6, [
    [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:deepslate>],
    [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:deepslate>]]);

stoneCutter.addRecipe("deepslate_stairs_stonecutter", <item:minecraft:cobbled_deepslate_stairs>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("deepslate_slab_stonecutter", <item:minecraft:cobbled_deepslate_slab> * 2, <item:minecraft:deepslate>);
stoneCutter.addRecipe("deepslate_wall_stonecutter", <item:minecraft:cobbled_deepslate_wall>, <item:minecraft:deepslate>);

craftingTable.remove(<item:supplementaries:wrench>);
craftingTable.addShaped("magic_spoon", <item:supplementaries:wrench>, [
    [<item:minecraft:air>, <item:galosphere:silver_nugget>, <item:galosphere:silver_nugget>], 
    [<item:minecraft:air>, <item:galosphere:silver_ingot>, <item:galosphere:silver_nugget>],
    [<item:galosphere:silver_ingot>, <item:minecraft:air>, <item:minecraft:air>]]);

craftingTable.remove(<item:supplementaries:lock_block>);
craftingTable.addShaped("lock_block", <item:supplementaries:lock_block>, [
    [<item:galosphere:silver_ingot>, <tag:items:minecraft:planks>, <item:galosphere:silver_ingot>], 
    [<tag:items:minecraft:planks>, <item:minecraft:redstone>, <tag:items:minecraft:planks>],
    [<item:galosphere:silver_ingot>, <tag:items:minecraft:planks>, <item:galosphere:silver_ingot>]]);

craftingTable.remove(<item:galosphere:spectre_flare>);
craftingTable.addShaped("spectre_flare", <item:galosphere:spectre_flare>, [
    [<item:galosphere:bottle_of_spectre>], 
    [<item:galosphere:silver_ingot>],
    [<item:minecraft:string>]]);

craftingTable.remove(<item:minecraft:beehive>);
craftingTable.addShaped("beehive", <item:minecraft:beehive>, [
    [<tag:items:minecraft:planks>, <item:minecraft:blue_dye>, <tag:items:minecraft:planks>],
    [<item:minecraft:blue_dye>, <item:minecraft:honeycomb>, <item:minecraft:blue_dye>],
    [<tag:items:minecraft:planks>, <item:minecraft:blue_dye>, <tag:items:minecraft:planks>]]);

furnace.addRecipe("cobalt_smelt", <item:kubejs:cobalt>, <item:alexsmobs:soul_heart>, 0.35, 200);

craftingTable.addShaped("spawner", <item:minecraft:spawner>, [
    [<item:kubejs:cobalt>, <item:kubejs:cobalt>, <item:kubejs:cobalt>],
    [<item:kubejs:cobalt>, <item:rediscovered:ruby>, <item:kubejs:cobalt>],
    [<item:kubejs:cobalt>, <item:kubejs:cobalt>, <item:kubejs:cobalt>]]);

//4.3:
craftingTable.remove(<item:minecraft:chest>);
craftingTable.addShaped("chest", <item:minecraft:chest>, [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>], 
    [<tag:items:minecraft:planks>, <item:minecraft:air>, <tag:items:minecraft:planks>], 
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

craftingTable.remove(<item:supplementaries:bomb>);
craftingTable.addShaped("silver_bomb", <item:supplementaries:bomb> * 3, [
    [<item:minecraft:air>, <item:galosphere:silver_nugget>, <item:minecraft:air>], 
    [<item:galosphere:silver_nugget>, <item:minecraft:gunpowder>, <item:galosphere:silver_nugget>], 
    [<item:minecraft:air>, <item:galosphere:silver_nugget>, <item:minecraft:air>]]);

craftingTable.addShaped("torch", <item:coraline_systems:torch> * 4, [
    [<tag:items:c:coal>], 
    [<item:minecraft:stick>]]);

//4.4:
craftingTable.remove(<item:alexsmobs:straddleboard>);
craftingTable.addShaped("straddleboard", <item:alexsmobs:straddleboard>, [
    [<item:minecraft:air>, <item:minecraft:string>, <item:minecraft:netherite_scrap>], 
    [<item:minecraft:string>, <item:minecraft:netherite_scrap>, <item:minecraft:string>], 
    [<item:minecraft:netherite_scrap>, <item:minecraft:string>, <item:minecraft:air>]]);

craftingTable.remove(<item:alexsmobs:straddle_helmet>);
craftingTable.addShaped("straddle_helmet", <item:alexsmobs:straddle_helmet>, [
    [<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:air>], 
    [<item:minecraft:netherite_scrap>, <item:minecraft:air>, <item:minecraft:netherite_scrap>], 
    [<item:minecraft:string>, <item:minecraft:air>, <item:minecraft:string>]]);

craftingTable.remove(<item:alexsmobs:straddle_saddle>);
craftingTable.addShaped("straddle_saddle", <item:alexsmobs:straddle_saddle>, [
    [<item:minecraft:saddle>, <item:minecraft:saddle>], 
    [<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>]]);

//4.6:
craftingTable.addShapeless("maple_to_oak", <item:minecraft:oak_planks> * 4, [<tag:items:autumnity:maple_logs>]);

craftingTable.remove(<item:autumnity:pumpkin_bread>);
craftingTable.addShapeless("pumpkin_bread", <item:autumnity:pumpkin_bread> * 2, [<item:kubejs:butter>, <item:farmersdelight:pumpkin_slice>, <item:autumnity:syrup_bottle>, <item:kubejs:dough>]);

stoneCutter.addRecipe("stonecutter_granite_tiles", <item:minecraft:polished_granite>, <item:minecraft:granite>);

craftingTable.remove(<item:upgrade_aquatic:bedroll>);
craftingTable.addShaped("bedroll", <item:upgrade_aquatic:bedroll>, [
    [<item:minecraft:leather>, <item:minecraft:leather>, <item:supplementaries:feather_block>],
    [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]]);

craftingTable.remove(<item:upgrade_aquatic:black_bedroll>);
craftingTable.addShapeless("black_bedroll_dye", <item:upgrade_aquatic:black_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:black_dye>]);

craftingTable.remove(<item:upgrade_aquatic:blue_bedroll>);
craftingTable.addShapeless("blue_bedroll_dye", <item:upgrade_aquatic:blue_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:blue_dye>]);

craftingTable.remove(<item:upgrade_aquatic:brown_bedroll>);
craftingTable.addShapeless("brown_bedroll_dye", <item:upgrade_aquatic:brown_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:brown_dye>]);

craftingTable.remove(<item:upgrade_aquatic:cyan_bedroll>);
craftingTable.addShapeless("cyan_bedroll_dye", <item:upgrade_aquatic:cyan_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:cyan_dye>]);

craftingTable.remove(<item:upgrade_aquatic:gray_bedroll>);
craftingTable.addShapeless("gray_bedroll_dye", <item:upgrade_aquatic:gray_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:gray_dye>]);

craftingTable.remove(<item:upgrade_aquatic:green_bedroll>);
craftingTable.addShapeless("green_bedroll_dye", <item:upgrade_aquatic:green_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:green_dye>]);

craftingTable.remove(<item:upgrade_aquatic:light_blue_bedroll>);
craftingTable.addShapeless("light_blue_bedroll_dye", <item:upgrade_aquatic:light_blue_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:light_blue_dye>]);

craftingTable.remove(<item:upgrade_aquatic:light_gray_bedroll>);
craftingTable.addShapeless("light_gray_bedroll_dye", <item:upgrade_aquatic:light_gray_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:light_gray_dye>]);

craftingTable.remove(<item:upgrade_aquatic:lime_bedroll>);
craftingTable.addShapeless("lime_bedroll_dye", <item:upgrade_aquatic:lime_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:lime_dye>]);

craftingTable.remove(<item:upgrade_aquatic:magenta_bedroll>);
craftingTable.addShapeless("magenta_bedroll_dye", <item:upgrade_aquatic:magenta_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:magenta_dye>]);

craftingTable.remove(<item:upgrade_aquatic:orange_bedroll>);
craftingTable.addShapeless("orange_bedroll_dye", <item:upgrade_aquatic:orange_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:orange_dye>]);

craftingTable.remove(<item:upgrade_aquatic:pink_bedroll>);
craftingTable.addShapeless("pink_bedroll_dye", <item:upgrade_aquatic:pink_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:pink_dye>]);

craftingTable.remove(<item:upgrade_aquatic:purple_bedroll>);
craftingTable.addShapeless("purple_bedroll_dye", <item:upgrade_aquatic:purple_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:purple_dye>]);

craftingTable.remove(<item:upgrade_aquatic:red_bedroll>);
craftingTable.addShapeless("red_bedroll_dye", <item:upgrade_aquatic:red_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:red_dye>]);

craftingTable.remove(<item:upgrade_aquatic:white_bedroll>);
craftingTable.addShapeless("white_bedroll_dye", <item:upgrade_aquatic:white_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:white_dye>]);

craftingTable.remove(<item:upgrade_aquatic:yellow_bedroll>);
craftingTable.addShapeless("yellow_bedroll_dye", <item:upgrade_aquatic:yellow_bedroll>, [<tag:items:upgrade_aquatic:bedrolls>, <item:minecraft:yellow_dye>]);

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

//4.10:
craftingTable.remove(<item:rediscovered:rotational_converter>);
craftingTable.addShaped("rotational_converter", <item:rediscovered:rotational_converter>, [
    [<item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>],
    [<item:rediscovered:gear>, <item:minecraft:redstone>, <item:rediscovered:gear>],
    [<item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>]]);

//4.11:
craftingTable.remove(<item:supplementaries:confetti_popper>);

craftingTable.addShapeless("tooth_to_bone_beal", <item:minecraft:bone_meal> * 3, [<item:kubejs:sharp_tooth>]);

//4.13:
craftingTable.remove(<item:autumnity:snail_goo_block>);
craftingTable.addShaped("snail_goo_block", <item:autumnity:snail_goo_block>, [
    [<item:spawn:mucus>, <item:spawn:mucus>, <item:spawn:mucus>],
    [<item:spawn:mucus>, <item:spawn:mucus>, <item:spawn:mucus>],
    [<item:spawn:mucus>, <item:spawn:mucus>, <item:spawn:mucus>]]);

craftingTable.addShapeless("mucus_from_block", <item:spawn:mucus> * 9, [<item:autumnity:snail_goo_block>]);

//4.14:
craftingTable.remove(<item:minecraft:stone_pickaxe>);
craftingTable.addShaped("stone_pickaxe", <item:minecraft:stone_pickaxe>, [
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

//craftingTable.remove(<item:sweety_garden:hepatica>);
//craftingTable.addShapeless("hepatica_dye", <item:minecraft:magenta_dye>, [<item:sweety_garden:hepatica>]);

//craftingTable.remove(<item:sweety_garden:passion_flower>);
//craftingTable.addShapeless("passion_flower_dye", <item:minecraft:purple_dye>, [<item:sweety_garden:passion_flower>]);

//craftingTable.remove(<item:sweety_garden:purple_shamrock>);
//craftingTable.addShapeless("purple_shamrock_dye", <item:minecraft:purple_dye>, [<item:sweety_garden:purple_shamrock>]);

//craftingTable.remove(<item:sweety_garden:wood_anemone>);
//craftingTable.addShapeless("wood_anemone_dye", <item:minecraft:pink_dye>, [<item:sweety_garden:wood_anemone>]);

craftingTable.addShaped("prismarine", <item:minecraft:prismarine>, [
    [<item:minecraft:prismarine_shard>, <item:minecraft:prismarine_shard>],
    [<item:minecraft:prismarine_shard>, <item:minecraft:prismarine_shard>]]);

craftingTable.remove(<item:alexsmobs:dimensional_carver>);
craftingTable.addShaped("dimensional_carver", <item:alexsmobs:dimensional_carver>, [
    [<item:kubejs:dimensional_shard>, <item:kubejs:dimensional_shard>, <item:kubejs:dimensional_shard>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

craftingTable.addShaped("cobalt_sword", <item:kubejs:cobalt_sword>, [
    [<item:kubejs:cobalt>],
    [<item:kubejs:cobalt>],
    [<item:minecraft:stick>]]);

craftingTable.remove(<item:minecraft:bamboo_raft>);
craftingTable.addShaped("bamboo_raft", <item:minecraft:bamboo_raft>, [ 
    [<item:minecraft:bamboo_planks>, <item:minecraft:wooden_shovel>, <item:minecraft:bamboo_planks>], 
    [<item:minecraft:bamboo_planks>, <item:minecraft:bamboo_planks>, <item:minecraft:bamboo_planks>]]);
