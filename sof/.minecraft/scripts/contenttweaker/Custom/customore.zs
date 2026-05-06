/*
 * All Rights Reserved: Canoe Studio (2020-2025)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 
#loader contenttweaker
#priority 10000
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemColorSupplier;
import mods.contenttweaker.Color;
import mods.contenttweaker.ResourceLocation;

function createOreItem(name as string) {
    var item = VanillaFactory.createItem(name);
    item.maxStackSize = 64;
    item.setCreativeTab(<creativetab:customcanoestudio>);
    item.beaconPayment = false;
    item.register(); 
}

//vanilla ores
var damaged_iron_ore = createOreItem("damaged_iron_ore");
var restored_iron_ore = createOreItem("restored_iron_ore");
var standard_iron_ore = createOreItem("standard_iron_ore");
var enhanced_iron_ore = createOreItem("enhanced_iron_ore");
var refined_iron_ore = createOreItem("refined_iron_ore");

var damaged_gold_ore = createOreItem("damaged_gold_ore");
var restored_gold_ore = createOreItem("restored_gold_ore");
var standard_gold_ore = createOreItem("standard_gold_ore");
var enhanced_gold_ore = createOreItem("enhanced_gold_ore");
var refined_gold_ore = createOreItem("refined_gold_ore");

var damaged_diamond_ore = createOreItem("damaged_diamond_ore");
var restored_diamond_ore = createOreItem("restored_diamond_ore");
var standard_diamond_ore = createOreItem("standard_diamond_ore");
var enhanced_diamond_ore = createOreItem("enhanced_diamond_ore");
var refined_diamond_ore = createOreItem("refined_diamond_ore");

var damaged_emerald_ore = createOreItem("damaged_emerald_ore");
var restored_emerald_ore = createOreItem("restored_emerald_ore");
var standard_emerald_ore = createOreItem("standard_emerald_ore");
var enhanced_emerald_ore = createOreItem("enhanced_emerald_ore");
var refined_emerald_ore = createOreItem("refined_emerald_ore");

var damaged_redstone_ore = createOreItem("damaged_redstone_ore");
var restored_redstone_ore = createOreItem("restored_redstone_ore");
var standard_redstone_ore = createOreItem("standard_redstone_ore");
var enhanced_redstone_ore = createOreItem("enhanced_redstone_ore");
var refined_redstone_ore = createOreItem("refined_redstone_ore");

//modded ores
var damaged_copper_ore = createOreItem("damaged_copper_ore");
var restored_copper_ore = createOreItem("restored_copper_ore");
var standard_copper_ore = createOreItem("standard_copper_ore");
var enhanced_copper_ore = createOreItem("enhanced_copper_ore");
var refined_copper_ore = createOreItem("refined_copper_ore");

var damaged_tin_ore = createOreItem("damaged_tin_ore");
var restored_tin_ore = createOreItem("restored_tin_ore");
var standard_tin_ore = createOreItem("standard_tin_ore");
var enhanced_tin_ore = createOreItem("enhanced_tin_ore");
var refined_tin_ore = createOreItem("refined_tin_ore");

var damaged_silver_ore = createOreItem("damaged_silver_ore");
var restored_silver_ore = createOreItem("restored_silver_ore");
var standard_silver_ore = createOreItem("standard_silver_ore");
var enhanced_silver_ore = createOreItem("enhanced_silver_ore");
var refined_silver_ore = createOreItem("refined_silver_ore");

var damaged_lead_ore = createOreItem("damaged_lead_ore");
var restored_lead_ore = createOreItem("restored_lead_ore");
var standard_lead_ore = createOreItem("standard_lead_ore");
var enhanced_lead_ore = createOreItem("enhanced_lead_ore");
var refined_lead_ore = createOreItem("refined_lead_ore");

var damaged_aluminum_ore = createOreItem("damaged_aluminum_ore");
var restored_aluminum_ore = createOreItem("restored_aluminum_ore");
var standard_aluminum_ore = createOreItem("standard_aluminum_ore");
var enhanced_aluminum_ore = createOreItem("enhanced_aluminum_ore");
var refined_aluminum_ore = createOreItem("refined_aluminum_ore");

var damaged_nickel_ore = createOreItem("damaged_nickel_ore");
var restored_nickel_ore = createOreItem("restored_nickel_ore");
var standard_nickel_ore = createOreItem("standard_nickel_ore");
var enhanced_nickel_ore = createOreItem("enhanced_nickel_ore");
var refined_nickel_ore = createOreItem("refined_nickel_ore");

var damaged_uranium_ore = createOreItem("damaged_uranium_ore");
var restored_uranium_ore = createOreItem("restored_uranium_ore");
var standard_uranium_ore = createOreItem("standard_uranium_ore");
var enhanced_uranium_ore = createOreItem("enhanced_uranium_ore");
var refined_uranium_ore = createOreItem("refined_uranium_ore");

var damaged_osmium_ore = createOreItem("damaged_osmium_ore");
var restored_osmium_ore = createOreItem("restored_osmium_ore");
var standard_osmium_ore = createOreItem("standard_osmium_ore");
var enhanced_osmium_ore = createOreItem("enhanced_osmium_ore");
var refined_osmium_ore = createOreItem("refined_osmium_ore");

var damaged_cobalt_ore = createOreItem("damaged_cobalt_ore");
var restored_cobalt_ore = createOreItem("restored_cobalt_ore");
var standard_cobalt_ore = createOreItem("standard_cobalt_ore");
var enhanced_cobalt_ore = createOreItem("enhanced_cobalt_ore");
var refined_cobalt_ore = createOreItem("refined_cobalt_ore");

var damaged_ardite_ore = createOreItem("damaged_ardite_ore");
var restored_ardite_ore = createOreItem("restored_ardite_ore");
var standard_ardite_ore = createOreItem("standard_ardite_ore");
var enhanced_ardite_ore = createOreItem("enhanced_ardite_ore");
var refined_ardite_ore = createOreItem("refined_ardite_ore");

