
mods.pyrotech.barrel.recipeBuilder()
    .input(item('pyrotech:material', 31), item('pyrotech:material', 31), item('pyrotech:material', 31), item('pyrotech:material', 31))
    .fluidInput(fluid('liquid_clay') * 250)
    .fluidOutput(fluid('flint_clay') * 250)
    .duration(1000)
    .name('flint_clay_barrel_fluid')
    .register()

