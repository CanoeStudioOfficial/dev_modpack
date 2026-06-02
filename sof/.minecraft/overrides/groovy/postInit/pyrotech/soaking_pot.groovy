
mods.pyrotech.soaking_pot.recipeBuilder()
    .input(item('minecraft:clay'))
    .fluidInput(fluid('refractory_mud') * 250)
    .output(item('pyrotech:material', 4)*8)
    .time(400)
    .campfireRequired(true)
    .name('refractory_clay_ball_soaking_pot')
    .register()