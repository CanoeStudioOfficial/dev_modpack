import mods.dropt.Dropt;
import mods.dropt.Harvester;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val woods = [
<ore:logWood>,
<ore:plankWood>
] as IOreDictEntry[];

for wood in woods {
Dropt.list("list_woods")
    .add(Dropt.rule()
    .matchDrops([wood])
  	  .matchHarvester(Dropt.harvester()
         .type("NON_PLAYER")
      )
      .addDrop(Dropt.drop()
	     .selector(Dropt.weight(80))
	     .items([<pyrotech:rock:7>], Dropt.range(3))  
	  )
	   .addDrop(Dropt.drop()
        .selector(Dropt.weight(20))
	  )
	)
  .add(Dropt.rule()
     .matchDrops([wood])
      .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("BLACKLIST", [], "axe;0;-1")
      )
      .addDrop(Dropt.drop()
	      .force()
		  .items([<minecraft:stick>], Dropt.range(5))
	   )
      .addDrop(Dropt.drop()
	     .selector(Dropt.weight(90))
	     .items([<pyrotech:rock:7>], Dropt.range(7))  
	  )
	  .addDrop(Dropt.drop()
        .selector(Dropt.weight(10))
		  .items([<pyrotech:strange_tuber>], Dropt.range(1))  
	  )
  );
}

Dropt.list("bamboo")
    .add(Dropt.rule()
        .matchDrops([<ore:bamboo>])
        .matchHarvester(Dropt.harvester()
            .type("NON_PLAYER")
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(80))
            .items([<pyrotech:rock:7>], Dropt.range(3))
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(20))
        )
    )
    .add(Dropt.rule()
        .matchDrops([<ore:bamboo>])
        .matchHarvester(Dropt.harvester()
            .type("PLAYER")
            .mainHand("BLACKLIST", [], "axe;0;-1")
        )
        .addDrop(Dropt.drop()
            .force()
            .items([<minecraft:stick>], Dropt.range(5))
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(90))
            .items([<pyrotech:rock:7>], Dropt.range(7))
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(10))
            .items([<pyrotech:strange_tuber>], Dropt.range(1))
        )

    );