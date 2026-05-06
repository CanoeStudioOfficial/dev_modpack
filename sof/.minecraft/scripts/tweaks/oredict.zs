#priority 24000


import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import crafttweaker.game.IGame;
import crafttweaker.oredict.IOreDictEntry;

import scripts.Utils.oredict as OredictUtil;

var oredictMap as IIngredient[][IOreDictEntry] = {
    <ore:IronChain> : [
        <quark:chain>,
        <rustic:chain>
        ],
    <ore:bamboo> : [
        <biomesoplenty:bamboo>,
        <futuremc:bamboo>
        ],
    <ore:artisanworkstumps> : [
        <artisanworkstumps:workstump_basic>,
        <artisanworkstumps:workstump_mage>,
        <artisanworkstumps:workstump_designer>,
        ],
    <ore:banned> : [
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
        <ftbquests:progress_screen>.withTag({BlockEntityTag: {Height: 3 as byte, id: "ftbquests:progress_screen_core", Width: 2 as byte}, display: {Lore: ["(+NBT)"]}}),
        <minecraft:iron_ore>,
        <minecraft:gold_ore>,
        <minecraft:coal_ore>,
        <minecraft:lapis_ore>,
        <minecraft:diamond_ore>,
        <minecraft:emerald_ore>,
        <minecraft:quartz_ore>,
        <minecraft:redstone_ore>,
        <immersiveengineering:ore>,

        <forestry:resources:1>,

        <forestry:resources:2>,
        <immersiveengineering:ore:3>,

        <immersiveengineering:ore:2>,

        <immersiveengineering:ore:1>,

        <immersiveengineering:ore:4>,

        <immersiveengineering:ore:5>,


        <tconstruct:ore>,

        <tconstruct:ore:1>,
        <appliedenergistics2:quartz_ore>,
        <appliedenergistics2:charged_quartz_ore>,

        <forestry:resources>,
        <artisanworktables:worktable>,
        <artisanworktables:worktable:1>,
        <artisanworktables:worktable:2>,
        <artisanworktables:worktable:4>,
        <artisanworktables:worktable:6>,
        <artisanworktables:worktable:11>,
        <artisanworktables:worktable:13>,
        <artisanworktables:worktable:3>,
        <artisanworktables:worktable:8>,
        <artisanworktables:worktable:9>,
        <artisanworktables:worktable:10>,
        <artisanworktables:worktable:14>,
        <artisanworktables:workstation:1>,
        <artisanworktables:workstation:2>,
        <artisanworktables:workstation:3>,
        <artisanworktables:workstation:4>,
        <artisanworktables:workstation:8>,
        <artisanworktables:workstation:9>,
        <artisanworktables:workstation:10>,
        <artisanworktables:workstation:11>,
        <artisanworktables:workstation:6>,
        <artisanworktables:workstation:14>,
        <artisanworktables:workstation>,
        <artisanworktables:workstation:13>,
        <artisanworktables:workshop>,
        <artisanworktables:workshop:1>,
        <artisanworktables:workshop:2>,
        <artisanworktables:workshop:3>,
        <artisanworktables:workshop:4>,
        <artisanworktables:workshop:6>,
        <artisanworktables:workshop:8>,
        <artisanworktables:workshop:9>,
        <artisanworktables:workshop:10>,
        <artisanworktables:workshop:11>,
        <artisanworktables:workshop:13>,
        <artisanworktables:workshop:14>,
        <artisanworkstumps:workstump_tailor>,
        <artisanworkstumps:workstump_carpenter>,
        <artisanworkstumps:workstump_mason>,
        <artisanworkstumps:workstump_jeweler>,
        <artisanworkstumps:workstump_engineer>,
        <artisanworkstumps:workstump_scribe>,
        <artisanworkstumps:workstump_chemist>,
        <artisanworkstumps:workstump_farmer>,
        <artisanworkstumps:workstump_chef>,
        <artisanworkstumps:workstump_tanner>,
        <artisanworkstumps:workstump_potter>,
		<artisanworkstumps:workstump_blacksmith>
         
        ]



};

for oredict in oredictMap {
    var ingredients as IIngredient[] = oredictMap[oredict];
    OredictUtil.addOredictIngredients(oredict, ingredients);
}
