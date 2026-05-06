
import crafttweaker.item.IItemStack;
import mods.pyrotech.Worktable;
import crafttweaker.item.IIngredient;



function RetroSophisticatedBackpacksrWorktableCreate(modid as string, name as string, output as IItemStack, inputs1 as IIngredient[], inputs2 as IIngredient[], inputs3 as IIngredient[]){
    Worktable.buildShaped(output, [inputs1, inputs2, inputs3])
    .setName(modid ~ name)
    .register();
}

RetroSophisticatedBackpacksrWorktableCreate("retrosophisticatedbackpacks", "_backpack_diamond",  <retro_sophisticated_backpacks:backpack_diamond>,
 [<minecraft:reeds>, null, <minecraft:reeds>],
 [null, <minecraft:reeds>, null], 
 [<minecraft:reeds>, null, <minecraft:reeds>]);

