
#priority 100
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;


var flint_clay_block = VanillaFactory.createBlock("flint_clay_block", <blockmaterial:Clay>);
    flint_clay_block.register();


var wood_fiber_cement = VanillaFactory.createBlock("wood_fiber_cement", <blockmaterial:Rock>);
    wood_fiber_cement.register();