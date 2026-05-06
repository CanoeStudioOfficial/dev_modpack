/* 
import mods.dropt.Dropt;

Dropt.list("stone_block")
    .add(Dropt.rule()
        .matchBlocks([
            "divergentunderground:hard_stone:*"
        ])
        .replaceStrategy("ADD")
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<divergentunderground:rock_stone>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(45))
            .items([<pyrotech:rock>*3])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
            .items([<pyrotech:rock> ])
        )
    );
*/