/*
 * All Rights Reserved: Canoe Studio (2020-2023)
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
import scripts.Utils.StringHelperCot;


var regItem as string[]=[
"twilight_gem",
"chaos_gem",
"angel_core",
"ingot_of_pigeon_law",
"ingot_of_pigeon_law_unr",
"dream_fall",
"dime",
"dollar_bill",
"five_dollar_bill",
"fifty_dollar_bill",
"hundred_dollar_bill",
"nickel",
"penny",
"quarter",
"ten_dollar_bill",
"twenty_dollar_bill",
"armor_core",
"tool_core",
"milk_powder"
];
for items in regItem {
    VanillaFactory.createItem(items).register();
}




