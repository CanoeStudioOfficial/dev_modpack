import mods.dropt.Dropt;

// 规则1：石头破坏后随机掉落圆石或石子
Dropt.list("stone_drops")
    .add(
        Dropt.rule()
        .matchBlocks(["minecraft:stone"])
        // 50% 概率掉落圆石
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<minecraft:cobblestone>])
        )
        // 50% 概率掉落 1~12 个 Pyrotech 石子
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<pyrotech:rock>], Dropt.range(1, 12))
        )
    );

// 规则2：花岗岩破坏后随机掉落 Pyrotech 圆石或石子
Dropt.list("granite_drops")
    .add(
        Dropt.rule()
        .matchBlocks(["minecraft:stone:1"])
        // 50% 概率掉落 Pyrotech 圆石
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<pyrotech:cobblestone:2>])
        )
        // 50% 概率掉落 1~12 个 Pyrotech 石子
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<pyrotech:rock:1>], Dropt.range(1, 12))
        )
    );
	
Dropt.list("diorite_drops")
    .add(
        Dropt.rule()
        .matchBlocks(["minecraft:stone:3"])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<pyrotech:cobblestone:1>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<pyrotech:rock:2>], Dropt.range(1, 12))
        )
    );

Dropt.list("andesite_drops")
    .add(
        Dropt.rule()
        .matchBlocks(["minecraft:stone:2"])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<pyrotech:cobblestone>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<pyrotech:rock:3>], Dropt.range(1, 12))
        )
    );


	
Dropt.list("dirt_drops")
    .add(
        Dropt.rule()
        .matchBlocks([
		"minecraft:dirt",
		"minecraft:grass"
		])
        .addDrop(Dropt.drop()
            .force() 
            .items([<pyrotech:rock:4>], Dropt.range(1, 12))
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<pyrotech:strange_tuber>], Dropt.range(1, 4))
        )
    );

Dropt.list("clay_drops")
    .add(
        Dropt.rule()
        .matchBlocks(["minecraft:clay"])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<minecraft:clay_ball>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<pyrotech:material:17>], Dropt.range(1, 12))
        )
    );


Dropt.list("grass_drops")
    .add(
        Dropt.rule()
        .matchBlocks([
		"minecraft:tallgrass:1",
		"minecraft:tallgrass:2",
		"minecraft:double_plant:3",
		"minecraft:double_plant:2"
		])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<pyrotech:material:12>], Dropt.range(1, 3))
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<pyrotech:material:13>], Dropt.range(1, 3))
        )
    );


mods.primitivecrafting.addToolRecipe(<minecraft:wool>, <pyrotech:pelt_sheep_white>, <ore:toolShears>, 5);

mods.primitivecrafting.addToolRecipe(<minecraft:wool:1>, <pyrotech:pelt_sheep_orange>,<ore:toolShears>,5);

mods.primitivecrafting.addToolRecipe(<minecraft:wool:2>, <pyrotech:pelt_sheep_magenta>,<ore:toolShears>,5);

mods.primitivecrafting.addToolRecipe(<minecraft:wool:3>, <pyrotech:pelt_sheep_blue_light>,<ore:toolShears>,5);

mods.primitivecrafting.addToolRecipe(<minecraft:wool:4>, <pyrotech:pelt_sheep_yellow>,<ore:toolShears>,5);

mods.primitivecrafting.addToolRecipe(<minecraft:wool:5>, <pyrotech:pelt_sheep_lime>,<ore:toolShears>,5);

mods.primitivecrafting.addToolRecipe(<minecraft:wool:6>, <pyrotech:pelt_sheep_pink>,<ore:toolShears>,5);

mods.primitivecrafting.addToolRecipe(<minecraft:wool:7>, <pyrotech:pelt_sheep_gray>,<ore:toolShears>,5);

mods.primitivecrafting.addToolRecipe(<minecraft:wool:8>, <pyrotech:pelt_sheep_gray_light>,<ore:toolShears>,5);

mods.primitivecrafting.addToolRecipe(<minecraft:wool:9>, <pyrotech:pelt_sheep_cyan>,<ore:toolShears>,5);

mods.primitivecrafting.addToolRecipe(<minecraft:wool:10>, <pyrotech:pelt_sheep_purple>,<ore:toolShears>,5);

mods.primitivecrafting.addToolRecipe(<minecraft:wool:11>, <pyrotech:pelt_sheep_blue>,<ore:toolShears>,5);

mods.primitivecrafting.addToolRecipe(<minecraft:wool:12>, <pyrotech:pelt_sheep_brown>,<ore:toolShears>,5);

mods.primitivecrafting.addToolRecipe(<minecraft:wool:13>, <pyrotech:pelt_sheep_green>,<ore:toolShears>,5);

mods.primitivecrafting.addToolRecipe(<minecraft:wool:14>, <pyrotech:pelt_sheep_red>,<ore:toolShears>,5);

mods.primitivecrafting.addToolRecipe(<minecraft:wool:15>, <pyrotech:pelt_sheep_black>,<ore:toolShears>,5);

mods.primitivecrafting.addToolRecipe(<pyrotech:material:38>, <ore:leather>,<ore:toolSharp>,5);