

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import mods.tabulator.Tabs;

import mods.jei.JEI;


var removerecipes = [
	<minecraft:wool:*>,
	<minecraft:concrete_powder:*>,
	<minecraft:stained_hardened_clay:*>,
	<minecraft:concrete:*>,
	<minecraft:white_glazed_terracotta>,
	<minecraft:orange_glazed_terracotta>,
	<minecraft:magenta_glazed_terracotta>,
	<minecraft:light_blue_glazed_terracotta>,
	<minecraft:yellow_glazed_terracotta>,
	<minecraft:lime_glazed_terracotta>,
	<minecraft:pink_glazed_terracotta>,
	<minecraft:gray_glazed_terracotta>,
	<minecraft:silver_glazed_terracotta>,
	<minecraft:cyan_glazed_terracotta>,
	<minecraft:purple_glazed_terracotta>,
	<minecraft:blue_glazed_terracotta>,
	<minecraft:brown_glazed_terracotta>,
	<minecraft:green_glazed_terracotta>,
	<minecraft:red_glazed_terracotta>,
	<minecraft:black_glazed_terracotta>,
	<minecraft:stained_glass_pane:*>,
	<minecraft:stained_glass:*>,
	<minecraft:emerald_block>,
	<minecraft:diamond_block>,
	<minecraft:gold_block>,
	<minecraft:iron_block>,
	<minecraft:white_shulker_box>,
	<minecraft:orange_shulker_box>,
	<minecraft:magenta_shulker_box>,
	<minecraft:light_blue_shulker_box>,
	<minecraft:yellow_shulker_box>,
	<minecraft:lime_shulker_box>,
	<minecraft:pink_shulker_box>,
	<minecraft:gray_shulker_box>,
	<minecraft:silver_shulker_box>,
	<minecraft:cyan_shulker_box>,
	<minecraft:purple_shulker_box>,
	<minecraft:blue_shulker_box>,
	<minecraft:brown_shulker_box>,
	<minecraft:green_shulker_box>,
	<minecraft:red_shulker_box>,
	<minecraft:black_shulker_box>,
	<minecraft:bed:*>,
	<minecraft:banner:*>,
	<minecraft:iron_shovel:*>,
	<minecraft:iron_pickaxe:*>,
	<minecraft:iron_axe:*>,
	<minecraft:iron_sword:*>,
	<minecraft:stone_sword:*>,
	<minecraft:stone_shovel:*>,
	<minecraft:stone_pickaxe:*>,
	<minecraft:stone_axe:*>,
	<minecraft:diamond_sword:*>,
	<minecraft:diamond_shovel:*>,
	<minecraft:diamond_pickaxe:*>,
	<minecraft:diamond_axe:*>,
	<minecraft:golden_sword:*>,
	<minecraft:golden_shovel:*>,
	<minecraft:golden_pickaxe:*>,
	<minecraft:golden_axe:*>,
	<minecraft:stone_hoe:*>,
	<minecraft:iron_hoe:*>,
	<minecraft:diamond_hoe:*>,
	<minecraft:golden_hoe:*>,
	<minecraft:leather_helmet:*>,
	<minecraft:leather_chestplate:*>,
	<minecraft:leather_leggings:*>,
	<minecraft:leather_boots:*>,
	<minecraft:chainmail_helmet:*>,
	<minecraft:chainmail_chestplate:*>,
	<minecraft:chainmail_leggings:*>,
	<minecraft:chainmail_boots:*>,
	<minecraft:iron_chestplate:*>,
	<minecraft:iron_leggings:*>,
	<minecraft:iron_boots:*>,
	<minecraft:diamond_helmet:*>,
	<minecraft:diamond_chestplate:*>,
	<minecraft:diamond_leggings:*>,
	<minecraft:diamond_boots:*>,
	<minecraft:golden_helmet:*>,
	<minecraft:golden_chestplate:*>,
	<minecraft:golden_leggings:*>,
	<minecraft:golden_boots:*>




] as IIngredient[];

for reciperemove in removerecipes {
		recipes.remove(reciperemove);

}









var disabledbanned as IIngredient[] = [
	<immersiveengineering:ore>,
	<immersiveengineering:ore:1>,
	<immersiveengineering:ore:2>,
	<immersiveengineering:ore:3>,
	<immersiveengineering:ore:4>,
	<immersiveengineering:ore:5>,
	<forestry:resources:1>,
	<forestry:resources:2>,
	<tconstruct:common_ore>,
	<tconstruct:common_ore:2>,
	<tconstruct:common_ore:1>,
	<minecraft:wooden_sword:*>,
	<minecraft:wooden_shovel:*>,
	<minecraft:wooden_pickaxe:*>,
	<minecraft:wooden_axe>,
	<minecraft:wooden_hoe>,
	<minecraft:wooden_sword>,
	<minecraft:wooden_shovel>,
	<minecraft:wooden_pickaxe>,
	<minecraft:wooden_axe>,
	<minecraft:wooden_hoe>
] as IIngredient[];

for ingredient in disabledbanned {
    	JEI.removeAndHide(ingredient);
        ingredient.addTooltip(game.localize("sof.disabled_block.tooltip"));
		Tabs.remove(ingredient);
}


