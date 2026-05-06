/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 

#loader contenttweaker 

#priority 2201

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;

import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;



val molten_ingot_of_pigeon_law = mods.contenttweaker.VanillaFactory.createFluid("ingot_of_pigeon_law", Color.fromHex("ffb6c1").getIntColor());
molten_ingot_of_pigeon_law.material = <blockmaterial:lava>;
molten_ingot_of_pigeon_law.viscosity = 3000;
molten_ingot_of_pigeon_law.density = 6500;
molten_ingot_of_pigeon_law.colorize = true;
molten_ingot_of_pigeon_law.temperature = 1200;
molten_ingot_of_pigeon_law.luminosity = 10;
molten_ingot_of_pigeon_law.color = Color.fromHex("ffb6c1").getIntColor();
molten_ingot_of_pigeon_law.stillLocation = "base:fluids/molten";
molten_ingot_of_pigeon_law.flowingLocation = "base:fluids/molten_flowing";
molten_ingot_of_pigeon_law.register();

val slaked_lime = mods.contenttweaker.VanillaFactory.createFluid("slaked_lime", Color.fromHex("7c8264").getIntColor());
slaked_lime.material = <blockmaterial:lava>;
slaked_lime.viscosity = 3000;
slaked_lime.density = 6500;
slaked_lime.colorize = true;
slaked_lime.temperature = 1200;
slaked_lime.luminosity = 10;
slaked_lime.color = Color.fromHex("7c8264").getIntColor();
slaked_lime.stillLocation = "base:fluids/molten";
slaked_lime.flowingLocation = "base:fluids/molten_flowing";
slaked_lime.register();

val molten_cooking_oil = mods.contenttweaker.VanillaFactory.createFluid("cooking_oil", Color.fromHex("ffd966").getIntColor());
molten_cooking_oil.material = <blockmaterial:water>;
molten_cooking_oil.viscosity = 3000;
molten_cooking_oil.density = 3500;
molten_cooking_oil.colorize = true;
molten_cooking_oil.temperature = 300;
molten_cooking_oil.luminosity = 0;
molten_cooking_oil.stillLocation = "base:fluids/liquid";
molten_cooking_oil.flowingLocation = "base:fluids/liquid_flow";
molten_cooking_oil.register();

val molten_soybean_oil = mods.contenttweaker.VanillaFactory.createFluid("soybean_oil", Color.fromHex("ffffe0").getIntColor());
molten_soybean_oil.material = <blockmaterial:water>;
molten_soybean_oil.viscosity = 3000;
molten_soybean_oil.density = 3500;
molten_soybean_oil.colorize = true;
molten_soybean_oil.temperature = 300;
molten_soybean_oil.luminosity = 0;
molten_soybean_oil.stillLocation = "base:fluids/liquid";
molten_soybean_oil.flowingLocation = "base:fluids/liquid_flow";
molten_soybean_oil.register();

val molten_vinegar = mods.contenttweaker.VanillaFactory.createFluid("vinegar", Color.fromHex("783f04").getIntColor());
molten_vinegar.material = <blockmaterial:water>;
molten_vinegar.viscosity = 3000;
molten_vinegar.density = 3500;
molten_vinegar.colorize = true;
molten_vinegar.temperature = 300;
molten_vinegar.luminosity = 0;
molten_vinegar.stillLocation = "base:fluids/liquid";
molten_vinegar.flowingLocation = "base:fluids/liquid_flow";
molten_vinegar.register();


val molten_vinegar_salt = mods.contenttweaker.VanillaFactory.createFluid("vinegar_salt", Color.fromHex("95693c").getIntColor());
molten_vinegar_salt.material = <blockmaterial:water>;
molten_vinegar_salt.viscosity = 3000;
molten_vinegar_salt.density = 3500;
molten_vinegar_salt.colorize = true;
molten_vinegar_salt.temperature = 300;
molten_vinegar_salt.luminosity = 0;
molten_vinegar_salt.stillLocation = "base:fluids/liquid";
molten_vinegar_salt.flowingLocation = "base:fluids/liquid_flow";
molten_vinegar_salt.register();
