import mods.pyrotech.BrickKiln;
import mods.pyrotech.BrickOven;
import mods.pyrotech.Chopping;
import mods.pyrotech.MechanicalCompactor;



//BrickKiln.addRecipe("searedbrick_from_unfired", <tconstruct:materials>, <ercore:searedbrick_unfired>, 8000, 0.2, [<pyrotech:material:7> * 6]);
BrickKiln.addRecipe("netherbrick_from_netherrack", <minecraft:netherbrick>, <minecraft:netherrack>, 6000, 0.3, [<pyrotech:rock_netherrack> * 4]);
BrickOven.addRecipe("blaze_powder_from_blaze_rod", <minecraft:blaze_powder>, <minecraft:blaze_rod>);


Chopping.addRecipe("crafting_top", <contenttweaker:table_top>, <ore:workbench>);

MechanicalCompactor.addRecipe("iron_block_from_ingot", <minecraft:iron_block>, <ore:ingotIron>, 9);
MechanicalCompactor.addRecipe("gold_block_from_ingot", <minecraft:gold_block>, <ore:ingotGold>, 9);
MechanicalCompactor.addRecipe("diamond_block_from_diamond", <minecraft:diamond_block>, <ore:gemDiamond>, 9);
MechanicalCompactor.addRecipe("emerald_block_from_emerald", <minecraft:emerald_block>, <ore:gemEmerald>, 9);
MechanicalCompactor.addRecipe("slime_block_from_slimeball", <minecraft:slime>, <ore:slimeball>, 9);
MechanicalCompactor.addRecipe("steel_block_from_ingot", <immersiveengineering:storage:8>, <ore:ingotSteel>, 9);
MechanicalCompactor.addRecipe("quartz_block_from_ingot", <minecraft:quartz_block>, <ore:gemQuartz>, 9);
MechanicalCompactor.addRecipe("cobalt_block_from_ingot", <tconstruct:metal>, <ore:ingotCobalt>,9);
MechanicalCompactor.addRecipe("ardite_block_from_ingot", <tconstruct:metal:1>, <ore:blockArdite>,9);
MechanicalCompactor.addRecipe("manyullyn_block_from_ingot", <tconstruct:metal:2>, <ore:blockManyullyn>,9);
MechanicalCompactor.addRecipe("knightslime_block_from_ingot", <tconstruct:metal:3>, <ore:blockKnightslime>,9);
MechanicalCompactor.addRecipe("alubrass_block_from_ingot", <tconstruct:metal:5>, <ore:blockAlubrass>,9);
MechanicalCompactor.addRecipe("Electrum_block_from_ingot", <immersiveengineering:storage:7>, <ore:ingotElectrum>,9);
MechanicalCompactor.addRecipe("constantan_block_from_ingot", <immersiveengineering:storage:6>, <ore:blockConstantan>,9);
MechanicalCompactor.addRecipe("nickel_block_from_ingot", <immersiveengineering:storage:4>, <ore:blockNickel>,9);
MechanicalCompactor.addRecipe("silver_block_from_ingot", <immersiveengineering:storage:3>, <ore:blockSilver>,9);
MechanicalCompactor.addRecipe("uranium_block_from_ingot", <immersiveengineering:storage:5>, <ore:blockUranium>,9);
MechanicalCompactor.addRecipe("lead_block_from_ingot", <immersiveengineering:storage:2>, <ore:ingotLead>,9);
