

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder; 

RecipeBuilder.newBuilder("circuit_0", "plate_bending_machine", 80)
    .addEnergyPerTickInput(800)
    .addItemInputs([
        <ore:ingotOsmium> * 8,
        <mekanism:compressedredstone> * 1,
    ])
    .addItemOutput(<mekanism:controlcircuit> * 8)
    .build();