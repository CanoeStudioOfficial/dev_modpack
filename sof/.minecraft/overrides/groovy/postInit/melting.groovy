
mods.tconstruct.melting.removeByInput(ore('blockSeared'))

mods.tconstruct.melting.removeByInput(ore('stone'))

mods.tconstruct.melting.recipeBuilder()
    .input(item('pyrotech:material', 5))  
    .fluidOutput(fluid('refractory_mud') * 125)  
    .time(300)                         
    .register() 