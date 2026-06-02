import mods.pyrotech.Burn;

Burn.createBuilder("wood_fiber_cement_slag", <pyrotech:slag>, "contenttweaker:wood_fiber_cement:*")
    .setBurnStages(10)
    .setTotalBurnTimeTicks(4 * 60 * 20)
    .setFluidProduced(<liquid:stone> * 50)
    .setFailureChance(0.50)
    .addFailureItem(<pyrotech:material:0>) 
    .addFailureItem(<pyrotech:material:0> * 2) 
    .addFailureItem(<pyrotech:material:0> * 4) 
    .addFailureItem(<pyrotech:material:15> * 4)
    .addFailureItem(<pyrotech:material:15> * 6) 
    .addFailureItem(<pyrotech:material:15> * 8)
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();