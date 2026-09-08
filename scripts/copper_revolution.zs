import crafttweaker.api.recipe.Brewing;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemDefinition;
import stdlib.List;

#priority 0

//Copper Revolution:
//Copper Buttons:
craftingTable.remove(<item:friendsandfoes:copper_button>);
craftingTable.addShapedMeta("copper_button", <item:friendsandfoes:copper_button> * 2, [
  [<item:minecraft:copper_ingot>], 
  [<item:minecraft:copper_ingot>]], "copper_buttons", <constant:minecraft:recipe/category/crafting:building>);

//Oxidized Buttons:
  craftingTable.remove(<item:friendsandfoes:exposed_copper_button>);
  craftingTable.addShapelessMeta("exposed_copper_button", <item:friendsandfoes:exposed_copper_button>, 
    [<item:friendsandfoes:copper_button>, 
    <item:coraline_systems:timedust>], "copper_buttons_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:friendsandfoes:weathered_copper_button>);
  craftingTable.addShapelessMeta("weathered_copper_button", <item:friendsandfoes:weathered_copper_button>, 
    [<item:friendsandfoes:exposed_copper_button>, 
    <item:coraline_systems:timedust>], "copper_buttons_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:friendsandfoes:oxidized_copper_button>);
  craftingTable.addShapelessMeta("oxidized_copper_button", <item:friendsandfoes:oxidized_copper_button>, 
    [<item:friendsandfoes:weathered_copper_button>, 
    <item:coraline_systems:timedust>], "copper_buttons_oxidize", <constant:minecraft:recipe/category/crafting:building>);

//Lightning Rods:
//Oxidized Lightning Rods:
  craftingTable.remove(<item:friendsandfoes:exposed_lightning_rod>);
  craftingTable.addShapelessMeta("exposed_lightning_rod", <item:friendsandfoes:exposed_lightning_rod>, 
    [<item:minecraft:lightning_rod>, 
    <item:coraline_systems:timedust>], "lightning_rods_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:friendsandfoes:weathered_lightning_rod>);
  craftingTable.addShapelessMeta("weathered_lightning_rod", <item:friendsandfoes:weathered_lightning_rod>, 
    [<item:friendsandfoes:exposed_lightning_rod>, 
    <item:coraline_systems:timedust>], "lightning_rods_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:friendsandfoes:oxidized_lightning_rod>);
  craftingTable.addShapelessMeta("oxidized_lightning_rod", <item:friendsandfoes:oxidized_lightning_rod>, 
    [<item:friendsandfoes:weathered_lightning_rod>, 
    <item:coraline_systems:timedust>], "lightning_rods_oxidize", <constant:minecraft:recipe/category/crafting:building>);

//Copper Trapdoors:
craftingTable.remove(<item:caverns_and_chasms:copper_trapdoor>);
craftingTable.addShapedMeta("copper_trapdoor", <item:caverns_and_chasms:copper_trapdoor>, [
  [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>], 
  [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>]], "copper_trapdoors", <constant:minecraft:recipe/category/crafting:building>);

  //Oxidized Trapdoors:
  craftingTable.remove(<item:caverns_and_chasms:exposed_copper_trapdoor>);
  craftingTable.addShapelessMeta("exposed_copper_trapdoor", <item:caverns_and_chasms:exposed_copper_trapdoor>, 
    [<item:caverns_and_chasms:copper_trapdoor>, 
    <item:coraline_systems:timedust>], "copper_trapdoors_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:weathered_copper_trapdoor>);
  craftingTable.addShapelessMeta("weathered_copper_trapdoor", <item:caverns_and_chasms:weathered_copper_trapdoor>, 
    [<item:caverns_and_chasms:exposed_copper_trapdoor>, 
    <item:coraline_systems:timedust>], "copper_trapdoors_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:oxidized_copper_trapdoor>);
  craftingTable.addShapelessMeta("oxidized_copper_trapdoor", <item:caverns_and_chasms:oxidized_copper_trapdoor>, 
    [<item:caverns_and_chasms:weathered_copper_trapdoor>, 
    <item:coraline_systems:timedust>], "copper_trapdoors_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  //Waxed Trapdoors:
  craftingTable.remove(<item:caverns_and_chasms:waxed_copper_trapdoor>);
  craftingTable.addShapelessMeta("waxed_copper_trapdoor", <item:caverns_and_chasms:waxed_copper_trapdoor>, 
    [<item:caverns_and_chasms:copper_trapdoor>, 
    <item:minecraft:honeycomb>], "copper_trapdoors_waxed", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:waxed_exposed_copper_trapdoor>);
  craftingTable.addShapelessMeta("waxed_exposed_copper_trapdoor", <item:caverns_and_chasms:waxed_exposed_copper_trapdoor>, 
    [<item:caverns_and_chasms:exposed_copper_trapdoor>, 
    <item:minecraft:honeycomb>], "copper_trapdoors_waxed", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:waxed_weathered_copper_trapdoor>);
  craftingTable.addShapelessMeta("waxed_weathered_copper_trapdoor", <item:caverns_and_chasms:waxed_weathered_copper_trapdoor>, 
    [<item:caverns_and_chasms:weathered_copper_trapdoor>, 
    <item:minecraft:honeycomb>], "copper_trapdoors_waxed", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:waxed_oxidized_copper_trapdoor>);
  craftingTable.addShapelessMeta("waxed_oxidized_copper_trapdoor", <item:caverns_and_chasms:waxed_oxidized_copper_trapdoor>, 
    [<item:caverns_and_chasms:oxidized_copper_trapdoor>, 
    <item:minecraft:honeycomb>], "copper_trapdoors_waxed", <constant:minecraft:recipe/category/crafting:building>);

//Copper Bulbs:
craftingTable.remove(<item:caverns_and_chasms:copper_bulb>);
craftingTable.addShapedMeta("copper_bulb", <item:caverns_and_chasms:copper_bulb>, [
  [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>],
  [<item:minecraft:copper_ingot>, <item:minecraft:glowstone_dust>, <item:minecraft:copper_ingot>],
  [<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>]], "copper_bulbs", <constant:minecraft:recipe/category/crafting:building>);

  //Oxidized Bulbs:
  craftingTable.remove(<item:caverns_and_chasms:exposed_copper_bulb>);
  craftingTable.addShapelessMeta("exposed_copper_bulb", <item:caverns_and_chasms:exposed_copper_bulb>, 
    [<item:caverns_and_chasms:copper_bulb>, 
    <item:coraline_systems:timedust>], "copper_bulbs_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:weathered_copper_bulb>);
  craftingTable.addShapelessMeta("weathered_copper_bulb", <item:caverns_and_chasms:weathered_copper_bulb>, 
    [<item:caverns_and_chasms:exposed_copper_bulb>, 
    <item:coraline_systems:timedust>], "copper_bulbs_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:oxidized_copper_bulb>);
  craftingTable.addShapelessMeta("oxidized_copper_bulb", <item:caverns_and_chasms:oxidized_copper_bulb>, 
    [<item:caverns_and_chasms:weathered_copper_bulb>, 
    <item:coraline_systems:timedust>], "copper_bulbs_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  //Waxed Bulbs:
  craftingTable.remove(<item:caverns_and_chasms:waxed_copper_bulb>);
  craftingTable.addShapelessMeta("waxed_copper_bulb", <item:caverns_and_chasms:waxed_copper_bulb>, 
    [<item:caverns_and_chasms:copper_bulb>, 
    <item:minecraft:honeycomb>], "copper_bulbs_waxed", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:waxed_exposed_copper_bulb>);
  craftingTable.addShapelessMeta("waxed_exposed_copper_bulb", <item:caverns_and_chasms:waxed_exposed_copper_bulb>, 
    [<item:caverns_and_chasms:exposed_copper_bulb>, 
    <item:minecraft:honeycomb>], "copper_bulbs_waxed", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:waxed_weathered_copper_bulb>);
  craftingTable.addShapelessMeta("waxed_weathered_copper_bulb", <item:caverns_and_chasms:waxed_weathered_copper_bulb>, 
    [<item:caverns_and_chasms:weathered_copper_bulb>, 
    <item:minecraft:honeycomb>], "copper_bulbs_waxed", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:waxed_oxidized_copper_bulb>);
  craftingTable.addShapelessMeta("waxed_oxidized_copper_bulb", <item:caverns_and_chasms:waxed_oxidized_copper_bulb>, 
    [<item:caverns_and_chasms:oxidized_copper_bulb>, 
    <item:minecraft:honeycomb>], "copper_bulbs_waxed", <constant:minecraft:recipe/category/crafting:building>);

//Copper Grates:
craftingTable.remove(<item:caverns_and_chasms:copper_grate>);
stoneCutter.remove(<item:caverns_and_chasms:copper_grate>);
craftingTable.addShapedMeta("copper_grate", <item:caverns_and_chasms:copper_grate> * 8, [
  [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>], 
  [<item:minecraft:copper_ingot>, <item:minecraft:air>, <item:minecraft:copper_ingot>],
  [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>]], "copper_grates", <constant:minecraft:recipe/category/crafting:building>);

  //Oxidized Grates:
  craftingTable.remove(<item:caverns_and_chasms:exposed_copper_grate>);
  stoneCutter.remove(<item:caverns_and_chasms:exposed_copper_grate>);
  craftingTable.addShapedMeta("exposed_copper_grate", <item:caverns_and_chasms:exposed_copper_grate> * 8, [
    [<item:caverns_and_chasms:copper_grate>, <item:caverns_and_chasms:copper_grate>, <item:caverns_and_chasms:copper_grate>],
    [<item:caverns_and_chasms:copper_grate>, <item:coraline_systems:timedust>, <item:caverns_and_chasms:copper_grate>],
    [<item:caverns_and_chasms:copper_grate>, <item:caverns_and_chasms:copper_grate>, <item:caverns_and_chasms:copper_grate>]], "copper_grates_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:weathered_copper_grate>);
  stoneCutter.remove(<item:caverns_and_chasms:weathered_copper_grate>);
  craftingTable.addShapedMeta("weathered_copper_grate", <item:caverns_and_chasms:weathered_copper_grate> * 8, [
    [<item:caverns_and_chasms:exposed_copper_grate>, <item:caverns_and_chasms:exposed_copper_grate>, <item:caverns_and_chasms:exposed_copper_grate>],
    [<item:caverns_and_chasms:exposed_copper_grate>, <item:coraline_systems:timedust>, <item:caverns_and_chasms:exposed_copper_grate>],
    [<item:caverns_and_chasms:exposed_copper_grate>, <item:caverns_and_chasms:exposed_copper_grate>, <item:caverns_and_chasms:exposed_copper_grate>]], "copper_grates_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:oxidized_copper_grate>);
  stoneCutter.remove(<item:caverns_and_chasms:oxidized_copper_grate>);
  craftingTable.addShapedMeta("oxidized_copper_grate", <item:caverns_and_chasms:oxidized_copper_grate> * 8, [
    [<item:caverns_and_chasms:weathered_copper_grate>, <item:caverns_and_chasms:weathered_copper_grate>, <item:caverns_and_chasms:weathered_copper_grate>],
    [<item:caverns_and_chasms:weathered_copper_grate>, <item:coraline_systems:timedust>, <item:caverns_and_chasms:weathered_copper_grate>],
    [<item:caverns_and_chasms:weathered_copper_grate>, <item:caverns_and_chasms:weathered_copper_grate>, <item:caverns_and_chasms:weathered_copper_grate>]], "copper_grates_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  //Waxed Grates:
  craftingTable.remove(<item:caverns_and_chasms:waxed_copper_grate>);
  stoneCutter.remove(<item:caverns_and_chasms:waxed_copper_grate>);
  craftingTable.addShapelessMeta("waxed_copper_grate", <item:caverns_and_chasms:waxed_copper_grate>, 
    [<item:caverns_and_chasms:copper_grate>, 
    <item:minecraft:honeycomb>], "copper_grates_waxed", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:waxed_exposed_copper_grate>);
  stoneCutter.remove(<item:caverns_and_chasms:waxed_exposed_copper_grate>);
  craftingTable.addShapelessMeta("waxed_exposed_copper_grate", <item:caverns_and_chasms:waxed_exposed_copper_grate>, 
    [<item:caverns_and_chasms:exposed_copper_grate>, 
    <item:minecraft:honeycomb>], "copper_grates_waxed", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:waxed_weathered_copper_grate>);
  stoneCutter.remove(<item:caverns_and_chasms:waxed_weathered_copper_grate>);
  craftingTable.addShapelessMeta("waxed_weathered_copper_grate", <item:caverns_and_chasms:waxed_weathered_copper_grate>, 
    [<item:caverns_and_chasms:weathered_copper_grate>, 
    <item:minecraft:honeycomb>], "copper_grates_waxed", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:waxed_oxidized_copper_grate>);
  stoneCutter.remove(<item:caverns_and_chasms:waxed_oxidized_copper_grate>);
  craftingTable.addShapelessMeta("waxed_oxidized_copper_grate", <item:caverns_and_chasms:waxed_oxidized_copper_grate>, 
    [<item:caverns_and_chasms:oxidized_copper_grate>, 
    <item:minecraft:honeycomb>], "copper_grates_waxed", <constant:minecraft:recipe/category/crafting:building>);

//Copper Doors:
craftingTable.remove(<item:caverns_and_chasms:copper_door>);
craftingTable.addShapedMeta("copper_door", <item:caverns_and_chasms:copper_door> * 3, [
  [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>], 
  [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
  [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>]], "copper_doors", <constant:minecraft:recipe/category/crafting:building>);

  //Oxidized Doors:
  craftingTable.remove(<item:caverns_and_chasms:exposed_copper_door>);
  craftingTable.addShapelessMeta("exposed_copper_door", <item:caverns_and_chasms:exposed_copper_door>, 
    [<item:caverns_and_chasms:copper_door>, 
    <item:coraline_systems:timedust>], "copper_doors_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:weathered_copper_door>);
  craftingTable.addShapelessMeta("weathered_copper_door", <item:caverns_and_chasms:weathered_copper_door>, 
    [<item:caverns_and_chasms:exposed_copper_door>, 
    <item:coraline_systems:timedust>], "copper_doors_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:oxidized_copper_door>);
  craftingTable.addShapelessMeta("oxidized_copper_door", <item:caverns_and_chasms:oxidized_copper_door>, 
    [<item:caverns_and_chasms:weathered_copper_door>, 
    <item:coraline_systems:timedust>], "copper_doors_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  //Waxed Doors:
  craftingTable.remove(<item:caverns_and_chasms:waxed_copper_door>);
  craftingTable.addShapelessMeta("waxed_copper_door", <item:caverns_and_chasms:waxed_copper_door>, 
    [<item:caverns_and_chasms:copper_door>, 
    <item:minecraft:honeycomb>], "copper_doors_waxed", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:waxed_exposed_copper_door>);
  craftingTable.addShapelessMeta("waxed_exposed_copper_door", <item:caverns_and_chasms:waxed_exposed_copper_door>, 
    [<item:caverns_and_chasms:exposed_copper_door>, 
    <item:minecraft:honeycomb>], "copper_doors_waxed", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:waxed_weathered_copper_door>);
  craftingTable.addShapelessMeta("waxed_weathered_copper_door", <item:caverns_and_chasms:waxed_weathered_copper_door>, 
    [<item:caverns_and_chasms:weathered_copper_door>, 
    <item:minecraft:honeycomb>], "copper_doors_waxed", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:caverns_and_chasms:waxed_oxidized_copper_door>);
  craftingTable.addShapelessMeta("waxed_oxidized_copper_door", <item:caverns_and_chasms:waxed_oxidized_copper_door>, 
    [<item:caverns_and_chasms:oxidized_copper_door>, 
    <item:minecraft:honeycomb>], "copper_doors_waxed", <constant:minecraft:recipe/category/crafting:building>);

//Copper Blocks:
//Oxidized Copper Blocks:
  craftingTable.remove(<item:minecraft:exposed_copper>);
  stoneCutter.remove(<item:minecraft:exposed_copper>);
  craftingTable.addShapedMeta("exposed_copper", <item:minecraft:exposed_copper> * 8, [
    [<item:minecraft:copper_block>, <item:minecraft:copper_block>, <item:minecraft:copper_block>],
    [<item:minecraft:copper_block>, <item:coraline_systems:timedust>, <item:minecraft:copper_block>],
    [<item:minecraft:copper_block>, <item:minecraft:copper_block>, <item:minecraft:copper_block>]], "copper_blocks_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:minecraft:weathered_copper>);
  stoneCutter.remove(<item:minecraft:weathered_copper>);
  craftingTable.addShapedMeta("weathered_copper", <item:minecraft:weathered_copper> * 8, [
    [<item:minecraft:exposed_copper>, <item:minecraft:exposed_copper>, <item:minecraft:exposed_copper>],
    [<item:minecraft:exposed_copper>, <item:coraline_systems:timedust>, <item:minecraft:exposed_copper>],
    [<item:minecraft:exposed_copper>, <item:minecraft:exposed_copper>, <item:minecraft:exposed_copper>]], "copper_blocks_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:minecraft:oxidized_copper>);
  stoneCutter.remove(<item:minecraft:oxidized_copper>);
  craftingTable.addShapedMeta("oxidized_copper", <item:minecraft:oxidized_copper> * 8, [
    [<item:minecraft:weathered_copper>, <item:minecraft:weathered_copper>, <item:minecraft:weathered_copper>],
    [<item:minecraft:weathered_copper>, <item:coraline_systems:timedust>, <item:minecraft:weathered_copper>],
    [<item:minecraft:weathered_copper>, <item:minecraft:weathered_copper>, <item:minecraft:weathered_copper>]], "copper_blocks_oxidize", <constant:minecraft:recipe/category/crafting:building>);

//Copper Tiles:
craftingTable.remove(<item:minecraft:cut_copper>);
craftingTable.addShapedMeta("cut_copper", <item:minecraft:cut_copper> * 4, [
  [<item:minecraft:copper_block>, <item:minecraft:copper_block>], 
  [<item:minecraft:copper_block>, <item:minecraft:copper_block>]], "", <constant:minecraft:recipe/category/crafting:building>);

stoneCutter.remove(<item:minecraft:cut_copper>);
stoneCutter.addRecipe("cut_copper_stonecutter", <item:minecraft:cut_copper>, <item:minecraft:copper_block>);

craftingTable.remove(<item:minecraft:cut_copper_stairs>);
craftingTable.addShapedMeta("cut_copper_stairs", <item:minecraft:cut_copper_stairs> * 4, [
  [<item:minecraft:cut_copper>, <item:minecraft:air>, <item:minecraft:air>],
  [<item:minecraft:cut_copper>, <item:minecraft:cut_copper>, <item:minecraft:air>],
  [<item:minecraft:cut_copper>, <item:minecraft:cut_copper>, <item:minecraft:cut_copper>]], "", <constant:minecraft:recipe/category/crafting:building>);

stoneCutter.remove(<item:minecraft:cut_copper_stairs>);
stoneCutter.addRecipe("cut_copper_stairs_stonecutter", <item:minecraft:cut_copper_stairs>, <item:minecraft:cut_copper>);

craftingTable.remove(<item:minecraft:cut_copper_slab>);
craftingTable.addShapedMeta("cut_copper_slab", <item:minecraft:cut_copper_slab> * 6, [
  [<item:minecraft:cut_copper>, <item:minecraft:cut_copper>, <item:minecraft:cut_copper>]], "", <constant:minecraft:recipe/category/crafting:building>);

stoneCutter.remove(<item:minecraft:cut_copper_slab>);
stoneCutter.addRecipe("cut_copper_slab_stonecutter", <item:minecraft:cut_copper_slab> * 2, <item:minecraft:cut_copper>);

  //Oxidized Copper Tiles:
  craftingTable.remove(<item:minecraft:exposed_cut_copper>);
  stoneCutter.remove(<item:minecraft:exposed_cut_copper>);
  craftingTable.addShapedMeta("exposed_cut_copper", <item:minecraft:exposed_cut_copper> * 8, [
    [<item:minecraft:cut_copper>, <item:minecraft:cut_copper>, <item:minecraft:cut_copper>],
    [<item:minecraft:cut_copper>, <item:coraline_systems:timedust>, <item:minecraft:cut_copper>],
    [<item:minecraft:cut_copper>, <item:minecraft:cut_copper>, <item:minecraft:cut_copper>]], "copper_cut_tiles_oxidize", <constant:minecraft:recipe/category/crafting:building>);

    stoneCutter.addRecipe("exposed_cut_copper_stonecutter", <item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_copper>);

    craftingTable.remove(<item:minecraft:exposed_cut_copper_stairs>);
    craftingTable.addShapedMeta("exposed_cut_copper_stairs", <item:minecraft:exposed_cut_copper_stairs> * 4, [
      [<item:minecraft:exposed_cut_copper>, <item:minecraft:air>, <item:minecraft:air>],
      [<item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>, <item:minecraft:air>],
      [<item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>]], "copper_cut_tiles_oxidize", <constant:minecraft:recipe/category/crafting:building>);

    craftingTable.addShapedMeta("exposed_cut_copper_stairs_timedust", <item:minecraft:exposed_cut_copper_stairs> * 8, [
      [<item:minecraft:cut_copper_stairs>, <item:minecraft:cut_copper_stairs>, <item:minecraft:cut_copper_stairs>],
      [<item:minecraft:cut_copper_stairs>, <item:coraline_systems:timedust>, <item:minecraft:cut_copper_stairs>],
      [<item:minecraft:cut_copper_stairs>, <item:minecraft:cut_copper_stairs>, <item:minecraft:cut_copper_stairs>]], "copper_cut_tiles_oxidize", <constant:minecraft:recipe/category/crafting:building>);

    stoneCutter.remove(<item:minecraft:exposed_cut_copper_stairs>);
    stoneCutter.addRecipe("exposed_cut_copper_stairs_stonecutter", <item:minecraft:exposed_cut_copper_stairs>, <item:minecraft:exposed_cut_copper>);

    craftingTable.remove(<item:minecraft:exposed_cut_copper_slab>);
    craftingTable.addShapedMeta("exposed_cut_copper_slab", <item:minecraft:exposed_cut_copper_slab> * 6, [
      [<item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>]], "copper_cut_tiles_oxidize", <constant:minecraft:recipe/category/crafting:building>);

    stoneCutter.remove(<item:minecraft:exposed_cut_copper_slab>);
    stoneCutter.addRecipe("exposed_cut_copper_slab_stonecutter", <item:minecraft:exposed_cut_copper_slab> * 2, <item:minecraft:exposed_cut_copper>);

    craftingTable.addShapedMeta("exposed_cut_copper_slab_timedust", <item:minecraft:exposed_cut_copper_slab> * 8, [
          [<item:minecraft:cut_copper_slab>, <item:minecraft:cut_copper_slab>, <item:minecraft:cut_copper_slab>],
          [<item:minecraft:cut_copper_slab>, <item:coraline_systems:timedust>, <item:minecraft:cut_copper_slab>],
          [<item:minecraft:cut_copper_slab>, <item:minecraft:cut_copper_slab>, <item:minecraft:cut_copper_slab>]], "copper_cut_tiles_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:minecraft:weathered_cut_copper>);
  stoneCutter.remove(<item:minecraft:weathered_cut_copper>);
  craftingTable.addShapedMeta("weathered_cut_copper", <item:minecraft:weathered_cut_copper> * 8, [
    [<item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>],
    [<item:minecraft:exposed_cut_copper>, <item:coraline_systems:timedust>, <item:minecraft:exposed_cut_copper>],
    [<item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>]], "copper_cut_tiles_oxidize", <constant:minecraft:recipe/category/crafting:building>);

    stoneCutter.addRecipe("weathered_cut_copper_stonecutter", <item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_copper>);

    craftingTable.remove(<item:minecraft:weathered_cut_copper_stairs>);
    craftingTable.addShapedMeta("weathered_cut_copper_stairs", <item:minecraft:weathered_cut_copper_stairs> * 4, [
      [<item:minecraft:weathered_cut_copper>, <item:minecraft:air>, <item:minecraft:air>],
      [<item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>, <item:minecraft:air>],
      [<item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>]], "copper_cut_tiles_oxidize", <constant:minecraft:recipe/category/crafting:building>);

    craftingTable.addShapedMeta("weathered_cut_copper_stairs_timedust", <item:minecraft:weathered_cut_copper_stairs> * 8, [
      [<item:minecraft:exposed_cut_copper_stairs>, <item:minecraft:exposed_cut_copper_stairs>, <item:minecraft:exposed_cut_copper_stairs>],
      [<item:minecraft:exposed_cut_copper_stairs>, <item:coraline_systems:timedust>, <item:minecraft:exposed_cut_copper_stairs>],
      [<item:minecraft:exposed_cut_copper_stairs>, <item:minecraft:exposed_cut_copper_stairs>, <item:minecraft:exposed_cut_copper_stairs>]], "copper_cut_tiles_oxidize", <constant:minecraft:recipe/category/crafting:building>);

    stoneCutter.remove(<item:minecraft:weathered_cut_copper_stairs>);
    stoneCutter.addRecipe("weathered_cut_copper_stairs_stonecutter", <item:minecraft:weathered_cut_copper_stairs>, <item:minecraft:weathered_cut_copper>);

    craftingTable.remove(<item:minecraft:weathered_cut_copper_slab>);
    craftingTable.addShapedMeta("weathered_cut_copper_slab", <item:minecraft:weathered_cut_copper_slab> * 6, [
      [<item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>]], "copper_cut_tiles_oxidize", <constant:minecraft:recipe/category/crafting:building>);

    stoneCutter.remove(<item:minecraft:weathered_cut_copper_slab>);
    stoneCutter.addRecipe("weathered_cut_copper_slab_stonecutter", <item:minecraft:weathered_cut_copper_slab> * 2, <item:minecraft:weathered_cut_copper>);

    craftingTable.addShapedMeta("weathered_cut_copper_slab_timedust", <item:minecraft:weathered_cut_copper_slab> * 8, [
          [<item:minecraft:exposed_cut_copper_slab>, <item:minecraft:exposed_cut_copper_slab>, <item:minecraft:exposed_cut_copper_slab>],
          [<item:minecraft:exposed_cut_copper_slab>, <item:coraline_systems:timedust>, <item:minecraft:exposed_cut_copper_slab>],
          [<item:minecraft:exposed_cut_copper_slab>, <item:minecraft:exposed_cut_copper_slab>, <item:minecraft:exposed_cut_copper_slab>]], "copper_cut_tiles_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  craftingTable.remove(<item:minecraft:oxidized_cut_copper>);
  stoneCutter.remove(<item:minecraft:oxidized_cut_copper>);
  craftingTable.addShapedMeta("oxidized_cut_copper", <item:minecraft:oxidized_cut_copper> * 8, [ 
    [<item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>],
    [<item:minecraft:weathered_cut_copper>, <item:coraline_systems:timedust>, <item:minecraft:weathered_cut_copper>],
    [<item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>]], "copper_cut_tiles_oxidize", <constant:minecraft:recipe/category/crafting:building>);

    stoneCutter.addRecipe("oxidized_cut_copper_stonecutter", <item:minecraft:oxidized_cut_copper>, <item:minecraft:oxidized_copper>);

    craftingTable.remove(<item:minecraft:oxidized_cut_copper_stairs>);
    craftingTable.addShapedMeta("oxidized_cut_copper_stairs", <item:minecraft:oxidized_cut_copper_stairs> * 4, [
      [<item:minecraft:oxidized_cut_copper>, <item:minecraft:air>, <item:minecraft:air>],
      [<item:minecraft:oxidized_cut_copper>, <item:minecraft:oxidized_cut_copper>, <item:minecraft:air>],
      [<item:minecraft:oxidized_cut_copper>, <item:minecraft:oxidized_cut_copper>, <item:minecraft:oxidized_cut_copper>]], "copper_cut_tiles_oxidize", <constant:minecraft:recipe/category/crafting:building>);

    craftingTable.addShapedMeta("oxidized_cut_copper_stairs_timedust", <item:minecraft:oxidized_cut_copper_stairs> * 8, [
      [<item:minecraft:weathered_cut_copper_stairs>, <item:minecraft:weathered_cut_copper_stairs>, <item:minecraft:weathered_cut_copper_stairs>],
      [<item:minecraft:weathered_cut_copper_stairs>, <item:coraline_systems:timedust>, <item:minecraft:weathered_cut_copper_stairs>],
      [<item:minecraft:weathered_cut_copper_stairs>, <item:minecraft:weathered_cut_copper_stairs>, <item:minecraft:weathered_cut_copper_stairs>]], "copper_cut_tiles_oxidize", <constant:minecraft:recipe/category/crafting:building>);

    stoneCutter.remove(<item:minecraft:oxidized_cut_copper_stairs>);
    stoneCutter.addRecipe("oxidized_cut_copper_stairs_stonecutter", <item:minecraft:oxidized_cut_copper_stairs>, <item:minecraft:oxidized_cut_copper>);

    craftingTable.remove(<item:minecraft:oxidized_cut_copper_slab>);
    craftingTable.addShapedMeta("oxidized_cut_copper_slab", <item:minecraft:oxidized_cut_copper_slab> * 6, [
      [<item:minecraft:oxidized_cut_copper>, <item:minecraft:oxidized_cut_copper>, <item:minecraft:oxidized_cut_copper>]], "copper_cut_tiles_oxidize", <constant:minecraft:recipe/category/crafting:building>);

    stoneCutter.remove(<item:minecraft:oxidized_cut_copper_slab>);
    stoneCutter.addRecipe("oxidized_cut_copper_slab_stonecutter", <item:minecraft:oxidized_cut_copper_slab> * 2, <item:minecraft:oxidized_cut_copper>);

    craftingTable.addShapedMeta("oxidized_cut_copper_slab_timedust", <item:minecraft:oxidized_cut_copper_slab> * 8, [
          [<item:minecraft:weathered_cut_copper_slab>, <item:minecraft:weathered_cut_copper_slab>, <item:minecraft:weathered_cut_copper_slab>],
          [<item:minecraft:weathered_cut_copper_slab>, <item:coraline_systems:timedust>, <item:minecraft:weathered_cut_copper_slab>],
          [<item:minecraft:weathered_cut_copper_slab>, <item:minecraft:weathered_cut_copper_slab>, <item:minecraft:weathered_cut_copper_slab>]], "copper_cut_tiles_oxidize", <constant:minecraft:recipe/category/crafting:building>);

  //Waxed Copper Tiles:
  craftingTable.remove(<item:minecraft:waxed_cut_copper>);
  stoneCutter.remove(<item:minecraft:waxed_cut_copper>);
  craftingTable.addShapelessMeta("waxed_cut_copper", <item:minecraft:waxed_cut_copper>, 
    [<item:minecraft:cut_copper>, 
    <item:minecraft:honeycomb>], "copper_cut_tiles_waxed", <constant:minecraft:recipe/category/crafting:building>);

    stoneCutter.remove(<item:minecraft:waxed_cut_copper_stairs>);
    stoneCutter.addRecipe("waxed_cut_copper_stairs_stonecutter", <item:minecraft:waxed_cut_copper_stairs>, <item:minecraft:waxed_cut_copper>);
    
    stoneCutter.remove(<item:minecraft:waxed_cut_copper_slab>);
    stoneCutter.addRecipe("waxed_cut_copper_slab_stonecutter", <item:minecraft:waxed_cut_copper_slab> * 2, <item:minecraft:waxed_cut_copper>);

  craftingTable.remove(<item:minecraft:waxed_exposed_cut_copper>);
  stoneCutter.remove(<item:minecraft:waxed_exposed_cut_copper>);
  craftingTable.addShapelessMeta("waxed_exposed_cut_copper", <item:minecraft:waxed_exposed_cut_copper>, 
    [<item:minecraft:exposed_cut_copper>, 
    <item:minecraft:honeycomb>], "copper_cut_tiles_waxed", <constant:minecraft:recipe/category/crafting:building>);

    stoneCutter.remove(<item:minecraft:waxed_exposed_cut_copper_stairs>);
    stoneCutter.addRecipe("waxed_exposed_cut_copper_stairs_stonecutter", <item:minecraft:waxed_exposed_cut_copper_stairs>, <item:minecraft:waxed_exposed_cut_copper>);
    
    stoneCutter.remove(<item:minecraft:waxed_exposed_cut_copper_slab>);
    stoneCutter.addRecipe("waxed_exposed_cut_copper_slab_stonecutter", <item:minecraft:waxed_exposed_cut_copper_slab> * 2, <item:minecraft:waxed_exposed_cut_copper>);

  craftingTable.remove(<item:minecraft:waxed_weathered_cut_copper>);
  stoneCutter.remove(<item:minecraft:waxed_weathered_cut_copper>);
  craftingTable.addShapelessMeta("waxed_weathered_cut_copper", <item:minecraft:waxed_weathered_cut_copper>, 
    [<item:minecraft:weathered_cut_copper>, 
    <item:minecraft:honeycomb>], "copper_cut_tiles_waxed", <constant:minecraft:recipe/category/crafting:building>);

    stoneCutter.remove(<item:minecraft:waxed_weathered_cut_copper_stairs>);
    stoneCutter.addRecipe("waxed_weathered_cut_copper_stairs_stonecutter", <item:minecraft:waxed_weathered_cut_copper_stairs>, <item:minecraft:waxed_weathered_cut_copper>);
    
    stoneCutter.remove(<item:minecraft:waxed_weathered_cut_copper_slab>);
    stoneCutter.addRecipe("waxed_weathered_cut_copper_slab_stonecutter", <item:minecraft:waxed_weathered_cut_copper_slab> * 2, <item:minecraft:waxed_weathered_cut_copper>);

  craftingTable.remove(<item:minecraft:waxed_oxidized_cut_copper>);
  stoneCutter.remove(<item:minecraft:waxed_oxidized_cut_copper>);
  craftingTable.addShapelessMeta("waxed_oxidized_cut_copper", <item:minecraft:waxed_oxidized_cut_copper>, 
    [<item:minecraft:oxidized_cut_copper>, 
    <item:minecraft:honeycomb>], "copper_cut_tiles_waxed", <constant:minecraft:recipe/category/crafting:building>);

    stoneCutter.remove(<item:minecraft:waxed_oxidized_cut_copper_stairs>);
    stoneCutter.addRecipe("waxed_oxidized_cut_copper_stairs_stonecutter", <item:minecraft:waxed_oxidized_cut_copper_stairs>, <item:minecraft:waxed_oxidized_cut_copper>);
    
    stoneCutter.remove(<item:minecraft:waxed_oxidized_cut_copper_slab>);
    stoneCutter.addRecipe("waxed_oxidized_cut_copper_slab_stonecutter", <item:minecraft:waxed_oxidized_cut_copper_slab> * 2, <item:minecraft:waxed_oxidized_cut_copper>);