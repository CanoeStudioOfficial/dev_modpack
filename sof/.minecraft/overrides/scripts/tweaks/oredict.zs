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
	<ore:RefractoryMud>: [
		<pyrotech:material:5>,
		<pyrotech:material:9>
	]

};

for oredict in oredictMap {
    var ingredients as IIngredient[] = oredictMap[oredict];
    OredictUtil.addOredictIngredients(oredict, ingredients);
}
