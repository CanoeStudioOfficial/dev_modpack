

mods.pyrotech.crude_drying_rack.removeAll()


mods.pyrotech.crude_drying_rack.recipeBuilder()
    .input(ore('listAllgrain'))
    .output(item('pyrotech:material', 13))
    .dryTime(260)
    .name('allgrain_crude_drying_rack')
    .register()