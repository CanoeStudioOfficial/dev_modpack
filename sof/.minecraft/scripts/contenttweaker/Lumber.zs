#priority 15
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;


val lumbers as string[string] = {

    // Unfired things
    unfired_pot                   : "unfired_pot"                    ,
    unfired_lv_connector          : "unfired_lv_connector"           ,
    unfired_mv_connector          : "unfired_mv_connector"           ,
    unfired_hv_connector          : "unfired_hv_connector"           ,
    unfired_lv_relay              : "unfired_lv_relay"               ,
    unfired_mv_relay              : "unfired_mv_relay"               ,

    // Crafting Table
    table_top                     : "table_top"                      ,

    // Nails
    cast                          : "cast_nail"                      ,
    mold                          : "mold_nail"                      ,
    woodenNail                    : "nail_wooden"                    ,
    ironNail                      : "nail_iron"                      ,



};

for x, y in lumbers {
    var x = VanillaFactory.createItem(y);
    x.register();
}
