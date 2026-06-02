import mods.pyrotech.Worktable;

Worktable.buildShaped(<artisanworktables:worktable:5>, [
  [<pyrotech:chopping_block>, <pyrotech:chopping_block>, <pyrotech:chopping_block>],
  [<ore:logWood>, <pyrotech:stash_stone>, <ore:logWood>],
  [<ore:logWood>, null, <ore:logWood>]])
  .setName("basic_worktable_recipe")
  .setTool(<ore:toolAxe>, 5)
  .register();
