


#priority 50

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.jei.JEI;

val disabledItems as IIngredient[] = [

<ftbquests:screen>,
<ftbquests:screen>.withTag({BlockEntityTag: {Size: 4 as byte, id: "ftbquests:screen_core"}, display: {Lore: ["(+NBT)"]}}),
<ftbquests:screen>.withTag({BlockEntityTag: {Size: 1 as byte, id: "ftbquests:screen_core"}, display: {Lore: ["(+NBT)"]}}),
<ftbquests:screen>.withTag({BlockEntityTag: {Size: 2 as byte, id: "ftbquests:screen_core"}, display: {Lore: ["(+NBT)"]}}),
<ftbquests:screen>.withTag({BlockEntityTag: {Size: 3 as byte, id: "ftbquests:screen_core"}, display: {Lore: ["(+NBT)"]}}),
<ftbquests:progress_detector>,
<ftbquests:detector>,
<ftbquests:detector:1>,
<ftbquests:progress_screen>.withTag({BlockEntityTag: {Height: 2 as byte, id: "ftbquests:progress_screen_core", Width: 1 as byte}, display: {Lore: ["(+NBT)"]}}),
<ftbquests:progress_screen>.withTag({BlockEntityTag: {Height: 4 as byte, id: "ftbquests:progress_screen_core", Width: 2 as byte}, display: {Lore: ["(+NBT)"]}}),
<ftbquests:progress_screen>.withTag({BlockEntityTag: {Height: 8 as byte, id: "ftbquests:progress_screen_core", Width: 4 as byte}, display: {Lore: ["(+NBT)"]}}),
<ftbquests:custom_icon>.withTag({icon: "ftblib:textures/icons/support.png"}),
<ftbquests:reward_collector>,
<ftbquests:barrier>,
<ftbquests:loot_crate_opener>,
<ftbquests:loot_crate_storage>,
<ftbquests:chest>,
<ftbquests:progress_screen>.withTag({BlockEntityTag: {Height: 6 as byte, id: "ftbquests:progress_screen_core", Width: 3 as byte}, display: {Lore: ["(+NBT)"]}}),
<ftbquests:progress_screen>,
<ftbquests:progress_screen>.withTag({BlockEntityTag: {Height: 3 as byte, id: "ftbquests:progress_screen_core", Width: 2 as byte}, display: {Lore: ["(+NBT)"]}})



] as IIngredient[];

for ingredient in disabledItems {
        JEI.removeAndHide(ingredient);
        ingredient.addTooltip(game.localize("greedycraft.stage.disabled_item.tooltip"));

}