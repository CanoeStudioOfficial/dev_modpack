#priority 99999
import crafttweaker.item.IItemStack;

recipes.removeByMod("waystones");
recipes.removeByMod("cfm");
recipes.removeByMod("ftbquests");
recipes.removeByMod("railcraft");
recipes.removeByMod("mekanism");
recipes.removeByMod("mekanismgenerators");
recipes.removeByMod("mekanismtools");
recipes.removeByMod("mekanismmultiblockmachine");
recipes.removeByMod("ironchest");

var removedRecipes as IItemStack[] =[
 <minecraft:crafting_table>,
 <actuallyadditions:item_crafter_on_a_stick>,
 <minecraft:book>,
 <minecraft:golden_apple>

];


for ingredient in removedRecipes {
    recipes.remove(ingredient);
}

var block = [
<minecraft:iron_block>,
<minecraft:gold_block>,
<minecraft:diamond_block>,
<minecraft:emerald_block>,
<minecraft:slime>,
<tconstruct:soil>,
<immersiveengineering:storage:8>,
<minecraft:quartz_block>,
<tconstruct:metal>,
<tconstruct:metal:1>,
<tconstruct:metal:2>,
<tconstruct:metal:3>,
<tconstruct:metal:5>,
<immersiveengineering:storage:7>,
<immersiveengineering:storage:6>,
<immersiveengineering:storage:4>,
<immersiveengineering:storage:3>,
<immersiveengineering:storage:5>,
<immersiveengineering:storage:2>,
<tconstruct:slime:1>,
<tconstruct:slime:2>,
<tconstruct:slime:4>

] as IItemStack[];

for items in block {
    recipes.remove(items);
}

var ingot = [
<immersiveengineering:metal:7>,
<immersiveengineering:metal:8>,
//<ercore:tungsten_steel_ingot>,
<immersiveengineering:material:19>,
<immersiveengineering:metal:1>,
<immersiveengineering:metal:3>,
<immersiveengineering:metal:2>,
<immersiveengineering:metal:4>,
<immersiveengineering:metal:5>,
<botania:manaresource>,
<botania:manaresource:4>,
<botania:manaresource:7>,
<tconstruct:ingots>,
<tconstruct:ingots:1>,
<tconstruct:ingots:2>,
<tconstruct:ingots:3>,
<tconstruct:ingots:4>,
<tconstruct:ingots:5>
] as IItemStack[];

for items in ingot {
    recipes.remove(items);
}

var nugget = [
<minecraft:gold_nugget>,
<minecraft:iron_nugget>,
<immersiveengineering:metal:20>,
<immersiveengineering:metal:21>,
<immersiveengineering:metal:22>,
<immersiveengineering:metal:24>,
<immersiveengineering:metal:23>,
<immersiveengineering:metal:25>,
<immersiveengineering:metal:26>,
<immersiveengineering:metal:27>,
<immersiveengineering:metal:28>,
<immersiveengineering:metal:29>,
<botania:manaresource:17>,
<botania:manaresource:18>,
<botania:manaresource:19>,
<tconstruct:nuggets>,
<tconstruct:nuggets:1>,
<tconstruct:nuggets:2>,
<tconstruct:nuggets:3>,
<tconstruct:nuggets:4>,
<tconstruct:nuggets:5>
] as IItemStack[];

for items in nugget {
    recipes.remove(items);
}

var game_recipes = [
<minecraft:wool>,
<minecraft:torch>,
<minecraft:bread>,
<minecraft:ladder>,
<minecraft:blaze_powder>,
<minecraft:crafting_table>,
<minecraft:bucket>,
<minecraft:furnace>,
<minecraft:light_weighted_pressure_plate>,
<minecraft:stone_pickaxe>,
<minecraft:heavy_weighted_pressure_plate>,
<minecraft:flint>,
<minecraft:wool:*>,
<minecraft:brewing_stand>,
<minecraft:sugar>,
<minecraft:gunpowder>,
<tconstruct:materials>,
<minecraft:glass_pane>
] as IItemStack[];

for items in game_recipes {
    recipes.remove(items);
}


