
#modloaded pyrotech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.pyrotech.CrudeDryingRack;
import mods.pyrotech.DryingRack;

import scripts.Utils.RecipeUtils.getNameForRecipe;

CrudeDryingRack.removeAllRecipes();
DryingRack.removeAllRecipes();

// import mods.jei.JEI.removeAndHide as rh;
// rh(<pyrotech:drying_rack>);

val items_1 as IItemStack[IItemStack] = {
    // <pyrotech:material:2>   : <minecraft:wheat>,
    <pyrotech:material:13>  : <pyrotech:material:12>,
    <minecraft:sponge>      : <minecraft:sponge:1>,
    <minecraft:paper>       : <pyrotech:material:25>,
    <sakura:materials:48> : <sakura:bamboo>
};

for output, input in items_1 {

    DryingRack.addRecipe(
        getNameForRecipe([output]),   // recipe name
        output,                     // output
        input,                      // input
        600                         // duration in ticks
    );

}

val items_2 as IItemStack[IItemStack] = {
    // <pyrotech:material:2>   : <minecraft:wheat>,
    <pyrotech:material:13>  : <pyrotech:material:12>,
    <minecraft:sponge>      : <minecraft:sponge:1>,
    <minecraft:paper>       : <pyrotech:material:25>,
    <sakura:materials:48> : <sakura:bamboo>
};

for output, input in items_2 {

    CrudeDryingRack.addRecipe(
        getNameForRecipe([output]),   // recipe name
        output,                     // output
        input,                      // input
        1800                         // duration in ticks
    );

}
