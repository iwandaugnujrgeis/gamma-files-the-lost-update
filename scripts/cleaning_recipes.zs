import crafttweaker.api.recipe.Brewing;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemDefinition;
import stdlib.List;
import crafttweaker.api.recipe.MirrorAxis;

#priority 1

//Colored Wool to White Wool
craftingTable.addShapedMeta("wool_clean_bulk", <item:minecraft:white_wool> * 8, [
  [<tag:items:gamma:colored_wool>, <tag:items:gamma:colored_wool>, <tag:items:gamma:colored_wool>],
  [<tag:items:gamma:colored_wool>, <item:supplementaries:soap>, <tag:items:gamma:colored_wool>],
  [<tag:items:gamma:colored_wool>, <tag:items:gamma:colored_wool>, <tag:items:gamma:colored_wool>]], "wool_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("wool_clean_shapeless", <item:minecraft:white_wool>, [<tag:items:gamma:colored_wool>, <item:supplementaries:soap>], "wool_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Wool Carpets to White Carpet
craftingTable.addShapedMeta("wool_carpets_clean_bulk", <item:minecraft:white_carpet> * 8, [
  [<tag:items:gamma:colored_wool_carpets>, <tag:items:gamma:colored_wool_carpets>, <tag:items:gamma:colored_wool_carpets>],
  [<tag:items:gamma:colored_wool_carpets>, <item:supplementaries:soap>, <tag:items:gamma:colored_wool_carpets>],
  [<tag:items:gamma:colored_wool_carpets>, <tag:items:gamma:colored_wool_carpets>, <tag:items:gamma:colored_wool_carpets>]], "wool_carpets_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("wool_carpets_clean_shapeless", <item:minecraft:white_carpet>, [<tag:items:gamma:colored_wool_carpets>, <item:supplementaries:soap>], "wool_carpets_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Bricks to Bricks
craftingTable.addShapedMeta("bricks_clean_bulk", <item:minecraft:bricks> * 8, [
  [<tag:items:gamma:colored_bricks>, <tag:items:gamma:colored_bricks>, <tag:items:gamma:colored_bricks>],
  [<tag:items:gamma:colored_bricks>, <item:supplementaries:soap>, <tag:items:gamma:colored_bricks>],
  [<tag:items:gamma:colored_bricks>, <tag:items:gamma:colored_bricks>, <tag:items:gamma:colored_bricks>]], "bricks_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("bricks_clean_shapeless", <item:minecraft:bricks>, [<tag:items:gamma:colored_bricks>, <item:supplementaries:soap>], "bricks_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Brick Slabs to Brick Slab
craftingTable.addShapedMeta("brick_slabs_clean_bulk", <item:minecraft:brick_slab> * 8, [
  [<tag:items:gamma:colored_brick_slabs>, <tag:items:gamma:colored_brick_slabs>, <tag:items:gamma:colored_brick_slabs>],
  [<tag:items:gamma:colored_brick_slabs>, <item:supplementaries:soap>, <tag:items:gamma:colored_brick_slabs>],
  [<tag:items:gamma:colored_brick_slabs>, <tag:items:gamma:colored_brick_slabs>, <tag:items:gamma:colored_brick_slabs>]], "brick_slabs_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("brick_slabs_clean_shapeless", <item:minecraft:brick_slab>, [<tag:items:gamma:colored_brick_slabs>, <item:supplementaries:soap>], "brick_slabs_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Brick Stairs to Brick Stairs
craftingTable.addShapedMeta("brick_stairs_clean_bulk", <item:minecraft:brick_stairs> * 8, [
  [<tag:items:gamma:colored_brick_stairs>, <tag:items:gamma:colored_brick_stairs>, <tag:items:gamma:colored_brick_stairs>],
  [<tag:items:gamma:colored_brick_stairs>, <item:supplementaries:soap>, <tag:items:gamma:colored_brick_stairs>],
  [<tag:items:gamma:colored_brick_stairs>, <tag:items:gamma:colored_brick_stairs>, <tag:items:gamma:colored_brick_stairs>]], "brick_stairs_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("brick_stairs_clean_shapeless", <item:minecraft:brick_stairs>, [<tag:items:gamma:colored_brick_stairs>, <item:supplementaries:soap>], "brick_stairs_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Brick Walls to Brick Wall
craftingTable.addShapedMeta("brick_walls_clean_bulk", <item:minecraft:brick_wall> * 8, [
  [<tag:items:gamma:colored_brick_walls>, <tag:items:gamma:colored_brick_walls>, <tag:items:gamma:colored_brick_walls>],
  [<tag:items:gamma:colored_brick_walls>, <item:supplementaries:soap>, <tag:items:gamma:colored_brick_walls>],
  [<tag:items:gamma:colored_brick_walls>, <tag:items:gamma:colored_brick_walls>, <tag:items:gamma:colored_brick_walls>]], "brick_walls_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("brick_walls_clean_shapeless", <item:minecraft:brick_wall>, [<tag:items:gamma:colored_brick_walls>, <item:supplementaries:soap>], "brick_walls_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Terracotta to Terracotta
craftingTable.addShapedMeta("terracotta_clean_bulk", <item:minecraft:terracotta> * 8, [
  [<tag:items:gamma:colored_terracotta>, <tag:items:gamma:colored_terracotta>, <tag:items:gamma:colored_terracotta>],
  [<tag:items:gamma:colored_terracotta>, <item:supplementaries:soap>, <tag:items:gamma:colored_terracotta>],
  [<tag:items:gamma:colored_terracotta>, <tag:items:gamma:colored_terracotta>, <tag:items:gamma:colored_terracotta>]], "terracotta_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("terracotta_clean_shapeless", <item:minecraft:terracotta>, [<tag:items:gamma:colored_terracotta>, <item:supplementaries:soap>], "terracotta_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Terracotta Slabs to Terracotta Slab
craftingTable.addShapedMeta("terracotta_slabs_clean_bulk", <item:clayworks:terracotta_slab> * 8, [
  [<tag:items:gamma:colored_terracotta_slabs>, <tag:items:gamma:colored_terracotta_slabs>, <tag:items:gamma:colored_terracotta_slabs>],
  [<tag:items:gamma:colored_terracotta_slabs>, <item:supplementaries:soap>, <tag:items:gamma:colored_terracotta_slabs>],
  [<tag:items:gamma:colored_terracotta_slabs>, <tag:items:gamma:colored_terracotta_slabs>, <tag:items:gamma:colored_terracotta_slabs>]], "terracotta_slabs_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("terracotta_slabs_clean_shapeless", <item:clayworks:terracotta_slab>, [<tag:items:gamma:colored_terracotta_slabs>, <item:supplementaries:soap>], "terracotta_slabs_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Terracotta Stairs to Terracotta Stairs
craftingTable.addShapedMeta("terracotta_stairs_clean_bulk", <item:clayworks:terracotta_stairs> * 8, [
  [<tag:items:gamma:colored_terracotta_stairs>, <tag:items:gamma:colored_terracotta_stairs>, <tag:items:gamma:colored_terracotta_stairs>],
  [<tag:items:gamma:colored_terracotta_stairs>, <item:supplementaries:soap>, <tag:items:gamma:colored_terracotta_stairs>],
  [<tag:items:gamma:colored_terracotta_stairs>, <tag:items:gamma:colored_terracotta_stairs>, <tag:items:gamma:colored_terracotta_stairs>]], "terracotta_stairs_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("terracotta_stairs_clean_shapeless", <item:clayworks:terracotta_stairs>, [<tag:items:gamma:colored_terracotta_stairs>, <item:supplementaries:soap>], "terracotta_stairs_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Terracotta Walls to Terracotta Wall
craftingTable.addShapedMeta("terracotta_walls_clean_bulk", <item:clayworks:terracotta_wall> * 8, [
  [<tag:items:gamma:colored_terracotta_walls>, <tag:items:gamma:colored_terracotta_walls>, <tag:items:gamma:colored_terracotta_walls>],
  [<tag:items:gamma:colored_terracotta_walls>, <item:supplementaries:soap>, <tag:items:gamma:colored_terracotta_walls>],
  [<tag:items:gamma:colored_terracotta_walls>, <tag:items:gamma:colored_terracotta_walls>, <tag:items:gamma:colored_terracotta_walls>]], "terracotta_walls_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("terracotta_walls_clean_shapeless", <item:clayworks:terracotta_wall>, [<tag:items:gamma:colored_terracotta_walls>, <item:supplementaries:soap>], "terracotta_walls_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Glass to Glass
craftingTable.addShapedMeta("glass_clean_bulk", <item:minecraft:glass> * 8, [
  [<tag:items:gamma:colored_glass>, <tag:items:gamma:colored_glass>, <tag:items:gamma:colored_glass>],
  [<tag:items:gamma:colored_glass>, <item:supplementaries:soap>, <tag:items:gamma:colored_glass>],
  [<tag:items:gamma:colored_glass>, <tag:items:gamma:colored_glass>, <tag:items:gamma:colored_glass>]], "glass_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("glass_clean_shapeless", <item:minecraft:glass>, [<tag:items:gamma:colored_glass>, <item:supplementaries:soap>], "glass_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Glass Panes to Glass Pane
craftingTable.addShapedMeta("glass_panes_clean_bulk", <item:minecraft:glass_pane> * 8, [
  [<tag:items:gamma:colored_glass_panes>, <tag:items:gamma:colored_glass_panes>, <tag:items:gamma:colored_glass_panes>],
  [<tag:items:gamma:colored_glass_panes>, <item:supplementaries:soap>, <tag:items:gamma:colored_glass_panes>],
  [<tag:items:gamma:colored_glass_panes>, <tag:items:gamma:colored_glass_panes>, <tag:items:gamma:colored_glass_panes>]], "glass_panes_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("glass_panes_clean_shapeless", <item:minecraft:glass_pane>, [<tag:items:gamma:colored_glass_panes>, <item:supplementaries:soap>], "glass_panes_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Framed Glass to Framed Glass
craftingTable.addShapedMeta("framed_glass_clean_bulk", <item:quark:framed_glass> * 8, [
  [<tag:items:gamma:colored_framed_glass>, <tag:items:gamma:colored_framed_glass>, <tag:items:gamma:colored_framed_glass>],
  [<tag:items:gamma:colored_framed_glass>, <item:supplementaries:soap>, <tag:items:gamma:colored_framed_glass>],
  [<tag:items:gamma:colored_framed_glass>, <tag:items:gamma:colored_framed_glass>, <tag:items:gamma:colored_framed_glass>]], "framed_glass_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("framed_glass_clean_shapeless", <item:quark:framed_glass>, [<tag:items:gamma:colored_framed_glass>, <item:supplementaries:soap>], "framed_glass_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Framed Glass Panes to Framed Glass Pane
craftingTable.addShapedMeta("framed_glass_panes_clean_bulk", <item:quark:framed_glass_pane> * 8, [
  [<tag:items:gamma:colored_framed_glass_panes>, <tag:items:gamma:colored_framed_glass_panes>, <tag:items:gamma:colored_framed_glass_panes>],
  [<tag:items:gamma:colored_framed_glass_panes>, <item:supplementaries:soap>, <tag:items:gamma:colored_framed_glass_panes>],
  [<tag:items:gamma:colored_framed_glass_panes>, <tag:items:gamma:colored_framed_glass_panes>, <tag:items:gamma:colored_framed_glass_panes>]], "framed_glass_panes_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("framed_glass_panes_clean_shapeless", <item:quark:framed_glass_pane>, [<tag:items:gamma:colored_framed_glass_panes>, <item:supplementaries:soap>], "framed_glass_panes_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Candles to Candle
craftingTable.addShapedMeta("candles_clean_bulk", <item:minecraft:candle> * 8, [
  [<tag:items:gamma:colored_candles>, <tag:items:gamma:colored_candles>, <tag:items:gamma:colored_candles>],
  [<tag:items:gamma:colored_candles>, <item:supplementaries:soap>, <tag:items:gamma:colored_candles>],
  [<tag:items:gamma:colored_candles>, <tag:items:gamma:colored_candles>, <tag:items:gamma:colored_candles>]], "candles_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("candles_clean_shapeless", <item:minecraft:candle>, [<tag:items:gamma:colored_candles>, <item:supplementaries:soap>], "candles_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Flags to White Flag
craftingTable.addShapedMeta("flags_clean_bulk", <item:supplementaries:flag_white> * 8, [
  [<tag:items:gamma:colored_flags>, <tag:items:gamma:colored_flags>, <tag:items:gamma:colored_flags>],
  [<tag:items:gamma:colored_flags>, <item:supplementaries:soap>, <tag:items:gamma:colored_flags>],
  [<tag:items:gamma:colored_flags>, <tag:items:gamma:colored_flags>, <tag:items:gamma:colored_flags>]], "flags_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("flags_clean_shapeless", <item:supplementaries:flag_white>, [<tag:items:gamma:colored_flags>, <item:supplementaries:soap>], "flags_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Glowsticks to Glowstick
craftingTable.addShapedMeta("glowsticks_clean_bulk", <item:spelunkery:glowstick> * 8, [
  [<tag:items:gamma:colored_glowsticks>, <tag:items:gamma:colored_glowsticks>, <tag:items:gamma:colored_glowsticks>],
  [<tag:items:gamma:colored_glowsticks>, <item:supplementaries:soap>, <tag:items:gamma:colored_glowsticks>],
  [<tag:items:gamma:colored_glowsticks>, <tag:items:gamma:colored_glowsticks>, <tag:items:gamma:colored_glowsticks>]], "glowsticks_clean", <constant:minecraft:recipe/category/crafting:misc>);

craftingTable.addShapelessMeta("glowsticks_clean_shapeless", <item:spelunkery:glowstick>, [<tag:items:gamma:colored_glowsticks>, <item:supplementaries:soap>], "glowsticks_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Beds to White Bed
craftingTable.addShapelessMeta("beds_clean_shapeless", <item:minecraft:white_bed>, [<tag:items:gamma:colored_beds>, <item:supplementaries:soap>], "beds_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Bedrolls to Bedroll
craftingTable.addShapelessMeta("bedrolls_clean_shapeless", <item:upgrade_aquatic:bedroll>, [<tag:items:gamma:colored_bedrolls>, <item:supplementaries:soap>], "bedrolls_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Hats to White Hat
craftingTable.addShapelessMeta("hats_clean_shapeless", <item:etcetera:white_hat>, [<tag:items:gamma:colored_hats>, <item:supplementaries:soap>], "hats_clean", <constant:minecraft:recipe/category/crafting:misc>);

//Colored Sweaters to White Sweater
craftingTable.addShapelessMeta("sweaters_clean_shapeless", <item:etcetera:white_sweater>, [<tag:items:gamma:colored_sweaters>, <item:supplementaries:soap>], "sweaters_clean", <constant:minecraft:recipe/category/crafting:misc>);
