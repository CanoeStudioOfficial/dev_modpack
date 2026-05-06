import mods.tabulator.Tabs;

Tabs.removeTab("ftbquests");

Tabs.create("custom_tab", <patchouli:guide_book>.withTag({"patchouli:book": "patchouli:survivaleracraft_guide_book"}))
    .addItem(<ftbquests:book>);

Tabs.create("banned_tab", <reccomplex:generic_solid:1>)
    .addIngredient(<ore:banned>);

Tabs.remove(<ore:campfire>);

Tabs.remove(<ore:banned>);

Tabs.create("campfire", <campfire:campfire>)
    .addIngredient(<ore:campfire>);
