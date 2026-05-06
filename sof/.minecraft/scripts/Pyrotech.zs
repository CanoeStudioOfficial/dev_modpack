import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<pyrotech:igniter>);


recipes.remove(<pyrotech:igniter:1>);


recipes.remove(<minecraft:iron_sword>);
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:19>],
    [<pyrotech:material:19>],
    [<ore:stickWood>]])
  .addTool(<ore:toolHammer>, 5)
  .addOutput(<minecraft:iron_sword>)
  .setFluid(<liquid:lava>* 100)
  .setExtraOutputOne(<minecraft:iron_nugget>, 0.1)
  .create();

recipes.remove(<minecraft:stone_sword>);
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:16>],
    [<pyrotech:material:16>],
    [<ore:stickWood>]])
  .addTool(<ore:toolHammer>, 5)
  .addOutput(<minecraft:stone_sword>)
  .setExtraOutputOne(<pyrotech:rock>, 0.1)
  .create();

recipes.remove(<minecraft:diamond_sword>);
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:18>],
    [<pyrotech:material:18>],
    [<ore:stickWood>]])
  .addTool(<ore:toolHammer>, 5)
  .addOutput(<minecraft:diamond_sword>)
  .setFluid(<liquid:lava>* 100)
  .setExtraOutputOne(<thermalfoundation:material:16>, 0.1)
  .create();

recipes.remove(<minecraft:stone_sword>);
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:16>],
    [<pyrotech:material:16>],
    [<ore:stickWood>]])
  .addTool(<ore:toolHammer>, 5)
  .addOutput(<minecraft:stone_sword>)
  .setExtraOutputOne(<pyrotech:rock>, 0.1)
  .create();

recipes.remove(<minecraft:wooden_sword>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>],
    [<ore:plankWood>],
    [<ore:stickWood>]])
  .addTool(<ore:toolHammer>, 5)
  .addOutput(<minecraft:wooden_sword>)
  .setExtraOutputOne(<pyrotech:rock:7>, 0.1)
  .setExtraOutputOne(<pyrotech:material:20>, 0.1)
  .create();