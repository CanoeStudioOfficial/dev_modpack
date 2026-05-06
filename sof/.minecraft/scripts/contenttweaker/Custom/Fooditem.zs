

#loader contenttweaker
#priority 10000
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemColorSupplier;
import mods.contenttweaker.Color;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.CreativeTab;
import scripts.Utils.StringHelperCot;


val foodTab = <creativetab:food>;
//unripe
var regfooditem as string[]=[
"unbaked_pumpkin_pie",
"unbaked_cake",
"fish_fragrant_shredded_pork",
"wood_ear_mushroom"


];

for fooditem in regfooditem {
    var foodItem as ItemFood = VanillaFactory.createItemFood(fooditem, 4);
    
    foodItem.creativeTab = foodTab;

    foodItem.register();
}
   