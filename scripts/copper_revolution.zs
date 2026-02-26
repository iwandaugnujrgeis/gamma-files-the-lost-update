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
craftingTable.addShaped("copper_button", <item:friendsandfoes:copper_button> * 2, [
    [<item:minecraft:copper_ingot>], 
    [<item:minecraft:copper_ingot>]]);

//Oxidized Buttons:
    craftingTable.remove(<item:friendsandfoes:exposed_copper_button>);
    craftingTable.addShapeless("exposed_copper_button", <item:friendsandfoes:exposed_copper_button>, 
        [<item:friendsandfoes:copper_button>, 
        <item:kubejs:soul_dust>]);

    craftingTable.remove(<item:friendsandfoes:weathered_copper_button>);
    craftingTable.addShapeless("weathered_copper_button", <item:friendsandfoes:weathered_copper_button>, 
        [<item:friendsandfoes:exposed_copper_button>, 
        <item:kubejs:soul_dust>]);

    craftingTable.remove(<item:friendsandfoes:oxidized_copper_button>);
    craftingTable.addShapeless("oxidized_copper_button", <item:friendsandfoes:oxidized_copper_button>, 
        [<item:friendsandfoes:weathered_copper_button>, 
        <item:kubejs:soul_dust>]);

//Lightning Rods:
//Oxidized Lightning Rods:
    craftingTable.remove(<item:friendsandfoes:exposed_lightning_rod>);
    craftingTable.addShapeless("exposed_lightning_rod", <item:friendsandfoes:exposed_lightning_rod>, 
        [<item:minecraft:lightning_rod>, 
        <item:kubejs:soul_dust>]);

    craftingTable.remove(<item:friendsandfoes:weathered_lightning_rod>);
    craftingTable.addShapeless("weathered_lightning_rod", <item:friendsandfoes:weathered_lightning_rod>, 
        [<item:friendsandfoes:exposed_lightning_rod>, 
        <item:kubejs:soul_dust>]);

    craftingTable.remove(<item:friendsandfoes:oxidized_lightning_rod>);
    craftingTable.addShapeless("oxidized_lightning_rod", <item:friendsandfoes:oxidized_lightning_rod>, 
        [<item:friendsandfoes:weathered_lightning_rod>, 
        <item:kubejs:soul_dust>]);

//Copper Trapdoors:
craftingTable.remove(<item:copperandtuffbackport:copper_trapdoor>);
craftingTable.addShaped("copper_trapdoor", <item:copperandtuffbackport:copper_trapdoor>, [
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>], 
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>]]);

    //Oxidized Trapdoors:
    craftingTable.remove(<item:copperandtuffbackport:exposed_copper_trapdoor>);
    craftingTable.addShapeless("exposed_copper_trapdoor", <item:copperandtuffbackport:exposed_copper_trapdoor>, 
        [<item:copperandtuffbackport:copper_trapdoor>, 
        <item:kubejs:soul_dust>]);

    craftingTable.remove(<item:copperandtuffbackport:weathered_copper_trapdoor>);
    craftingTable.addShapeless("weathered_copper_trapdoor", <item:copperandtuffbackport:weathered_copper_trapdoor>, 
        [<item:copperandtuffbackport:exposed_copper_trapdoor>, 
        <item:kubejs:soul_dust>]);

    craftingTable.remove(<item:copperandtuffbackport:oxidized_copper_trapdoor>);
    craftingTable.addShapeless("oxidized_copper_trapdoor", <item:copperandtuffbackport:oxidized_copper_trapdoor>, 
        [<item:copperandtuffbackport:weathered_copper_trapdoor>, 
        <item:kubejs:soul_dust>]);

    //Waxed Trapdoors:
    craftingTable.remove(<item:copperandtuffbackport:waxed_copper_trapdoor>);
    craftingTable.addShapeless("waxed_copper_trapdoor", <item:copperandtuffbackport:waxed_copper_trapdoor>, 
        [<item:copperandtuffbackport:copper_trapdoor>, 
        <item:minecraft:honeycomb>]);

    craftingTable.remove(<item:copperandtuffbackport:waxed_exposed_copper_trapdoor>);
    craftingTable.addShapeless("waxed_exposed_copper_trapdoor", <item:copperandtuffbackport:waxed_exposed_copper_trapdoor>, 
        [<item:copperandtuffbackport:exposed_copper_trapdoor>, 
        <item:minecraft:honeycomb>]);

    craftingTable.remove(<item:copperandtuffbackport:waxed_weathered_copper_trapdoor>);
    craftingTable.addShapeless("waxed_weathered_copper_trapdoor", <item:copperandtuffbackport:waxed_weathered_copper_trapdoor>, 
        [<item:copperandtuffbackport:weathered_copper_trapdoor>, 
        <item:minecraft:honeycomb>]);

    craftingTable.remove(<item:copperandtuffbackport:waxed_oxidized_copper_trapdoor>);
    craftingTable.addShapeless("waxed_oxidized_copper_trapdoor", <item:copperandtuffbackport:waxed_oxidized_copper_trapdoor>, 
        [<item:copperandtuffbackport:oxidized_copper_trapdoor>, 
        <item:minecraft:honeycomb>]);

//Copper Bulbs:
craftingTable.remove(<item:copperandtuffbackport:copper_bulb>);
craftingTable.addShaped("copper_bulb", <item:copperandtuffbackport:copper_bulb>, [
    [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>],
    [<item:minecraft:copper_ingot>, <item:minecraft:glowstone_dust>, <item:minecraft:copper_ingot>],
    [<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>]]);

    //Oxidized Bulbs:
    craftingTable.remove(<item:copperandtuffbackport:exposed_copper_bulb>);
    craftingTable.addShapeless("exposed_copper_bulb", <item:copperandtuffbackport:exposed_copper_bulb>, 
        [<item:copperandtuffbackport:copper_bulb>, 
        <item:kubejs:soul_dust>]);

    craftingTable.remove(<item:copperandtuffbackport:weathered_copper_bulb>);
    craftingTable.addShapeless("weathered_copper_bulb", <item:copperandtuffbackport:weathered_copper_bulb>, 
        [<item:copperandtuffbackport:exposed_copper_bulb>, 
        <item:kubejs:soul_dust>]);

    craftingTable.remove(<item:copperandtuffbackport:oxidized_copper_bulb>);
    craftingTable.addShapeless("oxidized_copper_bulb", <item:copperandtuffbackport:oxidized_copper_bulb>, 
        [<item:copperandtuffbackport:weathered_copper_bulb>, 
        <item:kubejs:soul_dust>]);

    //Waxed Bulbs:
    craftingTable.remove(<item:copperandtuffbackport:waxed_copper_bulb>);
    craftingTable.addShapeless("waxed_copper_bulb", <item:copperandtuffbackport:waxed_copper_bulb>, 
        [<item:copperandtuffbackport:copper_bulb>, 
        <item:minecraft:honeycomb>]);

    craftingTable.remove(<item:copperandtuffbackport:waxed_exposed_copper_bulb>);
    craftingTable.addShapeless("waxed_exposed_copper_bulb", <item:copperandtuffbackport:waxed_exposed_copper_bulb>, 
        [<item:copperandtuffbackport:exposed_copper_bulb>, 
        <item:minecraft:honeycomb>]);

    craftingTable.remove(<item:copperandtuffbackport:waxed_weathered_copper_bulb>);
    craftingTable.addShapeless("waxed_weathered_copper_bulb", <item:copperandtuffbackport:waxed_weathered_copper_bulb>, 
        [<item:copperandtuffbackport:weathered_copper_bulb>, 
        <item:minecraft:honeycomb>]);

    craftingTable.remove(<item:copperandtuffbackport:waxed_oxidized_copper_bulb>);
    craftingTable.addShapeless("waxed_oxidized_copper_bulb", <item:copperandtuffbackport:waxed_oxidized_copper_bulb>, 
        [<item:copperandtuffbackport:oxidized_copper_bulb>, 
        <item:minecraft:honeycomb>]);

//Copper Grates:
craftingTable.remove(<item:copperandtuffbackport:copper_grate>);
stoneCutter.remove(<item:copperandtuffbackport:copper_grate>);
craftingTable.addShaped("copper_grate", <item:copperandtuffbackport:copper_grate> * 2, [
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>], 
    [<item:minecraft:copper_ingot>, <item:minecraft:air>, <item:minecraft:copper_ingot>],
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>]]);

    //Oxidized Grates:
    craftingTable.remove(<item:copperandtuffbackport:exposed_copper_grate>);
    stoneCutter.remove(<item:copperandtuffbackport:exposed_copper_grate>);
    craftingTable.addShaped("exposed_copper_grate", <item:copperandtuffbackport:exposed_copper_grate> * 8, [
        [<item:copperandtuffbackport:copper_grate>, <item:copperandtuffbackport:copper_grate>, <item:copperandtuffbackport:copper_grate>],
        [<item:copperandtuffbackport:copper_grate>, <item:kubejs:soul_dust>, <item:copperandtuffbackport:copper_grate>],
        [<item:copperandtuffbackport:copper_grate>, <item:copperandtuffbackport:copper_grate>, <item:copperandtuffbackport:copper_grate>]]);

    craftingTable.remove(<item:copperandtuffbackport:weathered_copper_grate>);
    stoneCutter.remove(<item:copperandtuffbackport:weathered_copper_grate>);
    craftingTable.addShaped("weathered_copper_grate", <item:copperandtuffbackport:weathered_copper_grate> * 8, [
        [<item:copperandtuffbackport:exposed_copper_grate>, <item:copperandtuffbackport:exposed_copper_grate>, <item:copperandtuffbackport:exposed_copper_grate>],
        [<item:copperandtuffbackport:exposed_copper_grate>, <item:kubejs:soul_dust>, <item:copperandtuffbackport:exposed_copper_grate>],
        [<item:copperandtuffbackport:exposed_copper_grate>, <item:copperandtuffbackport:exposed_copper_grate>, <item:copperandtuffbackport:exposed_copper_grate>]]);

    craftingTable.remove(<item:copperandtuffbackport:oxidized_copper_grate>);
    stoneCutter.remove(<item:copperandtuffbackport:oxidized_copper_grate>);
    craftingTable.addShaped("oxidized_copper_grate", <item:copperandtuffbackport:oxidized_copper_grate> * 8, [
        [<item:copperandtuffbackport:weathered_copper_grate>, <item:copperandtuffbackport:weathered_copper_grate>, <item:copperandtuffbackport:weathered_copper_grate>],
        [<item:copperandtuffbackport:weathered_copper_grate>, <item:kubejs:soul_dust>, <item:copperandtuffbackport:weathered_copper_grate>],
        [<item:copperandtuffbackport:weathered_copper_grate>, <item:copperandtuffbackport:weathered_copper_grate>, <item:copperandtuffbackport:weathered_copper_grate>]]);

    //Waxed Grates:
    craftingTable.remove(<item:copperandtuffbackport:waxed_copper_grate>);
    stoneCutter.remove(<item:copperandtuffbackport:waxed_copper_grate>);
    craftingTable.addShapeless("waxed_copper_grate", <item:copperandtuffbackport:waxed_copper_grate>, 
        [<item:copperandtuffbackport:copper_grate>, 
        <item:minecraft:honeycomb>]);

    craftingTable.remove(<item:copperandtuffbackport:waxed_exposed_copper_grate>);
    stoneCutter.remove(<item:copperandtuffbackport:waxed_exposed_copper_grate>);
    craftingTable.addShapeless("waxed_exposed_copper_grate", <item:copperandtuffbackport:waxed_exposed_copper_grate>, 
        [<item:copperandtuffbackport:exposed_copper_grate>, 
        <item:minecraft:honeycomb>]);

    craftingTable.remove(<item:copperandtuffbackport:waxed_weathered_copper_grate>);
    stoneCutter.remove(<item:copperandtuffbackport:waxed_weathered_copper_grate>);
    craftingTable.addShapeless("waxed_weathered_copper_grate", <item:copperandtuffbackport:waxed_weathered_copper_grate>, 
        [<item:copperandtuffbackport:weathered_copper_grate>, 
        <item:minecraft:honeycomb>]);

    craftingTable.remove(<item:copperandtuffbackport:waxed_oxidized_copper_grate>);
    stoneCutter.remove(<item:copperandtuffbackport:waxed_oxidized_copper_grate>);
    craftingTable.addShapeless("waxed_oxidized_copper_grate", <item:copperandtuffbackport:waxed_oxidized_copper_grate>, 
        [<item:copperandtuffbackport:oxidized_copper_grate>, 
        <item:minecraft:honeycomb>]);

//Copper Doors:
craftingTable.remove(<item:copperandtuffbackport:copper_door>);
craftingTable.addShaped("copper_door", <item:copperandtuffbackport:copper_door> * 3, [
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>], 
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>]]);

    //Oxidized Doors:
    craftingTable.remove(<item:copperandtuffbackport:exposed_copper_door>);
    craftingTable.addShapeless("exposed_copper_door", <item:copperandtuffbackport:exposed_copper_door>, 
        [<item:copperandtuffbackport:copper_door>, 
        <item:kubejs:soul_dust>]);

    craftingTable.remove(<item:copperandtuffbackport:weathered_copper_door>);
    craftingTable.addShapeless("weathered_copper_door", <item:copperandtuffbackport:weathered_copper_door>, 
        [<item:copperandtuffbackport:exposed_copper_door>, 
        <item:kubejs:soul_dust>]);

    craftingTable.remove(<item:copperandtuffbackport:oxidized_copper_door>);
    craftingTable.addShapeless("oxidized_copper_door", <item:copperandtuffbackport:oxidized_copper_door>, 
        [<item:copperandtuffbackport:weathered_copper_door>, 
        <item:kubejs:soul_dust>]);

    //Waxed Doors:
    craftingTable.remove(<item:copperandtuffbackport:waxed_copper_door>);
    craftingTable.addShapeless("waxed_copper_door", <item:copperandtuffbackport:waxed_copper_door>, 
        [<item:copperandtuffbackport:copper_door>, 
        <item:minecraft:honeycomb>]);

    craftingTable.remove(<item:copperandtuffbackport:waxed_exposed_copper_door>);
    craftingTable.addShapeless("waxed_exposed_copper_door", <item:copperandtuffbackport:waxed_exposed_copper_door>, 
        [<item:copperandtuffbackport:exposed_copper_door>, 
        <item:minecraft:honeycomb>]);

    craftingTable.remove(<item:copperandtuffbackport:waxed_weathered_copper_door>);
    craftingTable.addShapeless("waxed_weathered_copper_door", <item:copperandtuffbackport:waxed_weathered_copper_door>, 
        [<item:copperandtuffbackport:weathered_copper_door>, 
        <item:minecraft:honeycomb>]);

    craftingTable.remove(<item:copperandtuffbackport:waxed_oxidized_copper_door>);
    craftingTable.addShapeless("waxed_oxidized_copper_door", <item:copperandtuffbackport:waxed_oxidized_copper_door>, 
        [<item:copperandtuffbackport:oxidized_copper_door>, 
        <item:minecraft:honeycomb>]);

//Copper Blocks:
//Oxidized Copper Blocks:
    craftingTable.remove(<item:minecraft:exposed_copper>);
    stoneCutter.remove(<item:minecraft:exposed_copper>);
    craftingTable.addShaped("exposed_copper", <item:minecraft:exposed_copper> * 8, [
        [<item:minecraft:copper_block>, <item:minecraft:copper_block>, <item:minecraft:copper_block>],
        [<item:minecraft:copper_block>, <item:kubejs:soul_dust>, <item:minecraft:copper_block>],
        [<item:minecraft:copper_block>, <item:minecraft:copper_block>, <item:minecraft:copper_block>]]);

    craftingTable.remove(<item:minecraft:weathered_copper>);
    stoneCutter.remove(<item:minecraft:weathered_copper>);
    craftingTable.addShaped("weathered_copper", <item:minecraft:weathered_copper> * 8, [
        [<item:minecraft:exposed_copper>, <item:minecraft:exposed_copper>, <item:minecraft:exposed_copper>],
        [<item:minecraft:exposed_copper>, <item:kubejs:soul_dust>, <item:minecraft:exposed_copper>],
        [<item:minecraft:exposed_copper>, <item:minecraft:exposed_copper>, <item:minecraft:exposed_copper>]]);

    craftingTable.remove(<item:minecraft:oxidized_copper>);
    stoneCutter.remove(<item:minecraft:oxidized_copper>);
    craftingTable.addShaped("oxidized_copper", <item:minecraft:oxidized_copper> * 8, [
        [<item:minecraft:weathered_copper>, <item:minecraft:weathered_copper>, <item:minecraft:weathered_copper>],
        [<item:minecraft:weathered_copper>, <item:kubejs:soul_dust>, <item:minecraft:weathered_copper>],
        [<item:minecraft:weathered_copper>, <item:minecraft:weathered_copper>, <item:minecraft:weathered_copper>]]);

//Copper Tiles:
craftingTable.remove(<item:minecraft:cut_copper>);
craftingTable.addShaped("cut_copper", <item:minecraft:cut_copper> * 4, [
    [<item:minecraft:copper_block>, <item:minecraft:copper_block>], 
    [<item:minecraft:copper_block>, <item:minecraft:copper_block>]]);

stoneCutter.remove(<item:minecraft:cut_copper>);
stoneCutter.addRecipe("cut_copper_stonecutter", <item:minecraft:cut_copper>, <item:minecraft:copper_block>);

craftingTable.remove(<item:minecraft:cut_copper_stairs>);
craftingTable.addShaped("cut_copper_stairs", <item:minecraft:cut_copper_stairs> * 4, [
    [<item:minecraft:cut_copper>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:cut_copper>, <item:minecraft:cut_copper>, <item:minecraft:air>],
    [<item:minecraft:cut_copper>, <item:minecraft:cut_copper>, <item:minecraft:cut_copper>]]);

stoneCutter.remove(<item:minecraft:cut_copper_stairs>);
stoneCutter.addRecipe("cut_copper_stairs_stonecutter", <item:minecraft:cut_copper_stairs>, <item:minecraft:cut_copper>);

craftingTable.remove(<item:minecraft:cut_copper_slab>);
craftingTable.addShaped("cut_copper_slab", <item:minecraft:cut_copper_slab> * 6, [
    [<item:minecraft:cut_copper>, <item:minecraft:cut_copper>, <item:minecraft:cut_copper>]]);

stoneCutter.remove(<item:minecraft:cut_copper_slab>);
stoneCutter.addRecipe("cut_copper_slab_stonecutter", <item:minecraft:cut_copper_slab> * 2, <item:minecraft:cut_copper>);

    //Oxidized Copper Tiles:
    craftingTable.remove(<item:minecraft:exposed_cut_copper>);
    stoneCutter.remove(<item:minecraft:exposed_cut_copper>);
    craftingTable.addShaped("exposed_cut_copper", <item:minecraft:exposed_cut_copper> * 8, [
        [<item:minecraft:cut_copper>, <item:minecraft:cut_copper>, <item:minecraft:cut_copper>],
        [<item:minecraft:cut_copper>, <item:kubejs:soul_dust>, <item:minecraft:cut_copper>],
        [<item:minecraft:cut_copper>, <item:minecraft:cut_copper>, <item:minecraft:cut_copper>]]);

        stoneCutter.addRecipe("exposed_cut_copper_stonecutter", <item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_copper>);

        craftingTable.remove(<item:minecraft:exposed_cut_copper_stairs>);
        craftingTable.addShaped("exposed_cut_copper_stairs", <item:minecraft:exposed_cut_copper_stairs> * 4, [
            [<item:minecraft:exposed_cut_copper>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>, <item:minecraft:air>],
            [<item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>]]);

        craftingTable.addShaped("exposed_cut_copper_stairs_timedust", <item:minecraft:exposed_cut_copper_stairs> * 8, [
            [<item:minecraft:cut_copper_stairs>, <item:minecraft:cut_copper_stairs>, <item:minecraft:cut_copper_stairs>],
            [<item:minecraft:cut_copper_stairs>, <item:kubejs:soul_dust>, <item:minecraft:cut_copper_stairs>],
            [<item:minecraft:cut_copper_stairs>, <item:minecraft:cut_copper_stairs>, <item:minecraft:cut_copper_stairs>]]);

        stoneCutter.remove(<item:minecraft:exposed_cut_copper_stairs>);
        stoneCutter.addRecipe("exposed_cut_copper_stairs_stonecutter", <item:minecraft:exposed_cut_copper_stairs>, <item:minecraft:exposed_cut_copper>);

        craftingTable.remove(<item:minecraft:exposed_cut_copper_slab>);
        craftingTable.addShaped("exposed_cut_copper_slab", <item:minecraft:exposed_cut_copper_slab> * 6, [
            [<item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>]]);

        stoneCutter.remove(<item:minecraft:exposed_cut_copper_slab>);
        stoneCutter.addRecipe("exposed_cut_copper_slab_stonecutter", <item:minecraft:exposed_cut_copper_slab> * 2, <item:minecraft:exposed_cut_copper>);

    craftingTable.remove(<item:minecraft:weathered_cut_copper>);
    stoneCutter.remove(<item:minecraft:weathered_cut_copper>);
    craftingTable.addShaped("weathered_cut_copper", <item:minecraft:weathered_cut_copper> * 8, [
        [<item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>],
        [<item:minecraft:exposed_cut_copper>, <item:kubejs:soul_dust>, <item:minecraft:exposed_cut_copper>],
        [<item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>, <item:minecraft:exposed_cut_copper>]]);

        stoneCutter.addRecipe("weathered_cut_copper_stonecutter", <item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_copper>);

        craftingTable.remove(<item:minecraft:weathered_cut_copper_stairs>);
        craftingTable.addShaped("weathered_cut_copper_stairs", <item:minecraft:weathered_cut_copper_stairs> * 4, [
            [<item:minecraft:weathered_cut_copper>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>, <item:minecraft:air>],
            [<item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>]]);

        craftingTable.addShaped("weathered_cut_copper_stairs_timedust", <item:minecraft:weathered_cut_copper_stairs> * 8, [
            [<item:minecraft:exposed_cut_copper_stairs>, <item:minecraft:exposed_cut_copper_stairs>, <item:minecraft:exposed_cut_copper_stairs>],
            [<item:minecraft:exposed_cut_copper_stairs>, <item:kubejs:soul_dust>, <item:minecraft:exposed_cut_copper_stairs>],
            [<item:minecraft:exposed_cut_copper_stairs>, <item:minecraft:exposed_cut_copper_stairs>, <item:minecraft:exposed_cut_copper_stairs>]]);

        stoneCutter.remove(<item:minecraft:weathered_cut_copper_stairs>);
        stoneCutter.addRecipe("weathered_cut_copper_stairs_stonecutter", <item:minecraft:weathered_cut_copper_stairs>, <item:minecraft:weathered_cut_copper>);

        craftingTable.remove(<item:minecraft:weathered_cut_copper_slab>);
        craftingTable.addShaped("weathered_cut_copper_slab", <item:minecraft:weathered_cut_copper_slab> * 6, [
            [<item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>]]);

        stoneCutter.remove(<item:minecraft:weathered_cut_copper_slab>);
        stoneCutter.addRecipe("weathered_cut_copper_slab_stonecutter", <item:minecraft:weathered_cut_copper_slab> * 2, <item:minecraft:weathered_cut_copper>);

    craftingTable.remove(<item:minecraft:oxidized_cut_copper>);
    stoneCutter.remove(<item:minecraft:oxidized_cut_copper>);
    craftingTable.addShaped("oxidized_cut_copper", <item:minecraft:oxidized_cut_copper> * 8, [ 
        [<item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>],
        [<item:minecraft:weathered_cut_copper>, <item:kubejs:soul_dust>, <item:minecraft:weathered_cut_copper>],
        [<item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>, <item:minecraft:weathered_cut_copper>]]);

        stoneCutter.addRecipe("oxidized_cut_copper_stonecutter", <item:minecraft:oxidized_cut_copper>, <item:minecraft:oxidized_copper>);

        craftingTable.remove(<item:minecraft:oxidized_cut_copper_stairs>);
        craftingTable.addShaped("oxidized_cut_copper_stairs", <item:minecraft:oxidized_cut_copper_stairs> * 4, [
            [<item:minecraft:oxidized_cut_copper>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:minecraft:oxidized_cut_copper>, <item:minecraft:oxidized_cut_copper>, <item:minecraft:air>],
            [<item:minecraft:oxidized_cut_copper>, <item:minecraft:oxidized_cut_copper>, <item:minecraft:oxidized_cut_copper>]]);

        craftingTable.addShaped("oxidized_cut_copper_stairs_timedust", <item:minecraft:oxidized_cut_copper_stairs> * 8, [
            [<item:minecraft:weathered_cut_copper_stairs>, <item:minecraft:weathered_cut_copper_stairs>, <item:minecraft:weathered_cut_copper_stairs>],
            [<item:minecraft:weathered_cut_copper_stairs>, <item:kubejs:soul_dust>, <item:minecraft:weathered_cut_copper_stairs>],
            [<item:minecraft:weathered_cut_copper_stairs>, <item:minecraft:weathered_cut_copper_stairs>, <item:minecraft:weathered_cut_copper_stairs>]]);

        stoneCutter.remove(<item:minecraft:oxidized_cut_copper_stairs>);
        stoneCutter.addRecipe("oxidized_cut_copper_stairs_stonecutter", <item:minecraft:oxidized_cut_copper_stairs>, <item:minecraft:oxidized_cut_copper>);

        craftingTable.remove(<item:minecraft:oxidized_cut_copper_slab>);
        craftingTable.addShaped("oxidized_cut_copper_slab", <item:minecraft:oxidized_cut_copper_slab> * 6, [
            [<item:minecraft:oxidized_cut_copper>, <item:minecraft:oxidized_cut_copper>, <item:minecraft:oxidized_cut_copper>]]);

        stoneCutter.remove(<item:minecraft:oxidized_cut_copper_slab>);
        stoneCutter.addRecipe("oxidized_cut_copper_slab_stonecutter", <item:minecraft:oxidized_cut_copper_slab> * 2, <item:minecraft:oxidized_cut_copper>);

        craftingTable.addShaped("exposed_cut_copper_slab_timedust", <item:minecraft:exposed_cut_copper_slab> * 8, [
                    [<item:minecraft:cut_copper_slab>, <item:minecraft:cut_copper_slab>, <item:minecraft:cut_copper_slab>],
                    [<item:minecraft:cut_copper_slab>, <item:kubejs:soul_dust>, <item:minecraft:cut_copper_slab>],
                    [<item:minecraft:cut_copper_slab>, <item:minecraft:cut_copper_slab>, <item:minecraft:cut_copper_slab>]]);

        craftingTable.addShaped("weathered_cut_copper_slab_timedust", <item:minecraft:weathered_cut_copper_slab> * 8, [
                    [<item:minecraft:exposed_cut_copper_slab>, <item:minecraft:exposed_cut_copper_slab>, <item:minecraft:exposed_cut_copper_slab>],
                    [<item:minecraft:exposed_cut_copper_slab>, <item:kubejs:soul_dust>, <item:minecraft:exposed_cut_copper_slab>],
                    [<item:minecraft:exposed_cut_copper_slab>, <item:minecraft:exposed_cut_copper_slab>, <item:minecraft:exposed_cut_copper_slab>]]);
        
        craftingTable.addShaped("oxidized_cut_copper_slab_timedust", <item:minecraft:oxidized_cut_copper_slab> * 8, [
                    [<item:minecraft:weathered_cut_copper_slab>, <item:minecraft:weathered_cut_copper_slab>, <item:minecraft:weathered_cut_copper_slab>],
                    [<item:minecraft:weathered_cut_copper_slab>, <item:kubejs:soul_dust>, <item:minecraft:weathered_cut_copper_slab>],
                    [<item:minecraft:weathered_cut_copper_slab>, <item:minecraft:weathered_cut_copper_slab>, <item:minecraft:weathered_cut_copper_slab>]]);

    //Waxed Copper Tiles:
    craftingTable.remove(<item:minecraft:waxed_cut_copper>);
    stoneCutter.remove(<item:minecraft:waxed_cut_copper>);
    craftingTable.addShapeless("waxed_cut_copper", <item:minecraft:waxed_cut_copper>, 
        [<item:minecraft:cut_copper>, 
        <item:minecraft:honeycomb>]);

        stoneCutter.remove(<item:minecraft:waxed_cut_copper_stairs>);
        stoneCutter.addRecipe("waxed_cut_copper_stairs_stonecutter", <item:minecraft:waxed_cut_copper_stairs>, <item:minecraft:waxed_cut_copper>);
        
        stoneCutter.remove(<item:minecraft:waxed_cut_copper_slab>);
        stoneCutter.addRecipe("waxed_cut_copper_slab_stonecutter", <item:minecraft:waxed_cut_copper_slab> * 2, <item:minecraft:waxed_cut_copper>);

    craftingTable.remove(<item:minecraft:waxed_exposed_cut_copper>);
    stoneCutter.remove(<item:minecraft:waxed_exposed_cut_copper>);
    craftingTable.addShapeless("waxed_exposed_cut_copper", <item:minecraft:waxed_exposed_cut_copper>, 
        [<item:minecraft:exposed_cut_copper>, 
        <item:minecraft:honeycomb>]);

        stoneCutter.remove(<item:minecraft:waxed_exposed_cut_copper_stairs>);
        stoneCutter.addRecipe("waxed_exposed_cut_copper_stairs_stonecutter", <item:minecraft:waxed_exposed_cut_copper_stairs>, <item:minecraft:waxed_exposed_cut_copper>);
        
        stoneCutter.remove(<item:minecraft:waxed_exposed_cut_copper_slab>);
        stoneCutter.addRecipe("waxed_exposed_cut_copper_slab_stonecutter", <item:minecraft:waxed_exposed_cut_copper_slab> * 2, <item:minecraft:waxed_exposed_cut_copper>);

    craftingTable.remove(<item:minecraft:waxed_weathered_cut_copper>);
    stoneCutter.remove(<item:minecraft:waxed_weathered_cut_copper>);
    craftingTable.addShapeless("waxed_weathered_cut_copper", <item:minecraft:waxed_weathered_cut_copper>, 
        [<item:minecraft:weathered_cut_copper>, 
        <item:minecraft:honeycomb>]);

        stoneCutter.remove(<item:minecraft:waxed_weathered_cut_copper_stairs>);
        stoneCutter.addRecipe("waxed_weathered_cut_copper_stairs_stonecutter", <item:minecraft:waxed_weathered_cut_copper_stairs>, <item:minecraft:waxed_weathered_cut_copper>);
        
        stoneCutter.remove(<item:minecraft:waxed_weathered_cut_copper_slab>);
        stoneCutter.addRecipe("waxed_weathered_cut_copper_slab_stonecutter", <item:minecraft:waxed_weathered_cut_copper_slab> * 2, <item:minecraft:waxed_weathered_cut_copper>);

    craftingTable.remove(<item:minecraft:waxed_oxidized_cut_copper>);
    stoneCutter.remove(<item:minecraft:waxed_oxidized_cut_copper>);
    craftingTable.addShapeless("waxed_oxidized_cut_copper", <item:minecraft:waxed_oxidized_cut_copper>, 
        [<item:minecraft:oxidized_cut_copper>, 
        <item:minecraft:honeycomb>]);

        stoneCutter.remove(<item:minecraft:waxed_oxidized_cut_copper_stairs>);
        stoneCutter.addRecipe("waxed_oxidized_cut_copper_stairs_stonecutter", <item:minecraft:waxed_oxidized_cut_copper_stairs>, <item:minecraft:waxed_oxidized_cut_copper>);
        
        stoneCutter.remove(<item:minecraft:waxed_oxidized_cut_copper_slab>);
        stoneCutter.addRecipe("waxed_oxidized_cut_copper_slab_stonecutter", <item:minecraft:waxed_oxidized_cut_copper_slab> * 2, <item:minecraft:waxed_oxidized_cut_copper>);

//4.13:
    //Oxidized Floodlights:
        craftingTable.remove(<item:caverns_and_chasms:exposed_floodlight>);
        craftingTable.addShapeless("exposed_floodlight", <item:caverns_and_chasms:exposed_floodlight>, 
            [<item:caverns_and_chasms:floodlight>, 
            <item:kubejs:soul_dust>]);

        craftingTable.remove(<item:caverns_and_chasms:weathered_floodlight>);
        craftingTable.addShapeless("weathered_floodlight", <item:caverns_and_chasms:weathered_floodlight>, 
            [<item:caverns_and_chasms:exposed_floodlight>, 
            <item:kubejs:soul_dust>]);

        craftingTable.remove(<item:caverns_and_chasms:oxidized_floodlight>);
        craftingTable.addShapeless("oxidized_floodlight", <item:caverns_and_chasms:oxidized_floodlight>, 
            [<item:caverns_and_chasms:weathered_floodlight>, 
            <item:kubejs:soul_dust>]);
