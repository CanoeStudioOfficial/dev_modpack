import crafttweaker.item.IItemStack;
import mods.exsartagine.ExSartagine;
import mods.pyrotech.SoakingPot;

var food = [
<minecraft:rabbit_stew>,
<harvestcraft:chikorollitem>,
<minecraft:baked_potato>,
<minecraft:cookie>,
<minecraft:beetroot_soup>,
<harvestcraft:beetsoupitem>,
<actuallyadditions:item_food:1>,
<harvestcraft:pickledonionsitem>,
<harvestcraft:pickledbeetsitem>,
<harvestcraft:gherkinitem>,
<harvestcraft:marinatedcucumbersitem>,
<harvestcraft:sweetpickleitem>,
<minecraft:pumpkin_pie>,
<harvestcraft:gourmetbeefpattyitem>,
<minecraft:mushroom_stew>,
<harvestcraft:gourmetvenisonpattyitem>,
<harvestcraft:gourmetmuttonpattyitem>,
<harvestcraft:gourmetporkpattyitem>,
<minecraft:cake>
] as IItemStack[];

for fooditem in food {
    recipes.remove(fooditem);
}


ExSartagine.addKettleRecipe(
    [ <ore:listAllveggie>,<ore:listAllveggie>,<ore:listAllrabbitraw>,<ore:listAllmushroom>],   
    <minecraft:bowl>,                 
    <liquid:water> * 100,                    
    [<minecraft:rabbit_stew>],                
    100                                       
);

ExSartagine.addWokRecipe([
    <ore:listAllchickencooked>, <ore:foodDough>,<ore:cropCabbage>,<ore:cropCarrot>,<ore:cropScallion>,<ore:cropOnion>
    ],
    <liquid:sakura.food_oil> * 100, 
    [<harvestcraft:chikorollitem> ], 2);


ExSartagine.addKettleRecipe(
    [ <ore:cropBeetroot>,<ore:cropBeetroot>],   
    <minecraft:bowl>,                 
    <liquid:water> * 100,                    
    [<minecraft:beetroot_soup>],                
    100                                       
);

ExSartagine.addKettleRecipe(
    [ <ore:cropBeet>,<ore:cropOnion>,<ore:foodBlackpepper>,<ore:listAllmushroom>],   
    <minecraft:bowl>,                 
    <liquid:milk> * 100,                    
    [<harvestcraft:beetsoupitem>],                
    100                                       
);

ExSartagine.addKettleRecipe(
    [ <ore:cropPumpkin>],   
    <minecraft:bowl>,                 
    <liquid:water> * 100,                    
    [<actuallyadditions:item_food:1>],                
    100                                       
);

SoakingPot.addRecipe(
    "cropOnion_Beest",        
    <harvestcraft:pickledonionsitem>,           
    <liquid:vinegar_salt>,                  
    <ore:cropOnion>,                    
    8 * 60 * 20                         
);

SoakingPot.addRecipe(
    "cropBeetroot_Beest",        
    <harvestcraft:pickledbeetsitem>,           
    <liquid:vinegar_salt>* 100,                  
    <ore:cropBeetroot>,                    
    8 * 60 * 20                         
);

SoakingPot.addRecipe(
    "gherkinitem_Beest",        
    <harvestcraft:gherkinitem>,           
    <liquid:vinegar_salt>* 100,                  
    <ore:cropCucumber>,                    
    8 * 60 * 20                         
);

ExSartagine.addWokRecipe([
    <ore:cropCucumber>, <ore:listAllsugar>,<ore:cropOnion>
    ],
    <liquid:vinegar_salt> * 100, 
    [<harvestcraft:marinatedcucumbersitem> ], 6);

ExSartagine.addWokRecipe([
    <ore:listAllsugar>,<ore:cropOnion>
    ],
    <liquid:vinegar_salt> * 100, 
    [<harvestcraft:sweetpickleitem> ], 1);

    
ExSartagine.addWokRecipe([
    <harvestcraft:groundbeefitem>,<ore:dustSalt>,<ore:cropSpiceleaf>,<harvestcraft:mustardseeditem>,<ore:foodBlackpepper>
    ], 
    [<harvestcraft:gourmetbeefpattyitem> ], 8);


ExSartagine.addKettleRecipe(
    [ <ore:listAllmushroom>,<ore:listAllmushroom>],   
    <minecraft:bowl>,                 
    <liquid:water> * 100,                    
    [<minecraft:mushroom_stew>],                
    100                                       
);

ExSartagine.addWokRecipe([
    <harvestcraft:groundporkitem>,<ore:dustSalt>,<ore:cropSpiceleaf>,<harvestcraft:mustardseeditem>,<ore:foodBlackpepper>
    ], 
    [<harvestcraft:gourmetporkpattyitem> ], 8);

ExSartagine.addWokRecipe([
    <harvestcraft:groundmuttonitem>,<ore:dustSalt>,<ore:cropSpiceleaf>,<harvestcraft:mustardseeditem>,<ore:foodBlackpepper>
    ], 
    [<harvestcraft:gourmetmuttonpattyitem> ], 8);

ExSartagine.addWokRecipe([
    <harvestcraft:groundvenisonitem>,<ore:dustSalt>,<ore:cropSpiceleaf>,<harvestcraft:mustardseeditem>,<ore:foodBlackpepper>
    ], 
    [<harvestcraft:gourmetvenisonpattyitem> ], 8);

mods.cfm.Oven.addRecipe(<minecraft:cake>,<contenttweaker:unbaked_cake>);

