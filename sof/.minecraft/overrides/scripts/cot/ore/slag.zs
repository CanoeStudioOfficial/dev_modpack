#priority 100
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.IBlockAction;
import mods.contenttweaker.DropHandler;
import crafttweaker.item.IItemStack;

function slagRegister(id as string) {
    var ore = VanillaFactory.createItem(id);
        ore.unlocalizedName = id + "_slag";
        ore.register();
}
    //"amber",
    //"apatite",
slagRegister("black_quartz");
    //"certus_quartz",
    //"charged_quartz",
slagRegister("cinnabar");
slagRegister("copper");
    //"crystal",
    //"draconium",
    //"fluorite",
slagRegister("fossil");
    //"inferium",
slagRegister("lead");
    //"malachite",
slagRegister("nickel");
    //"niter",
slagRegister("osmium");
    //"peridot",
    //"prosperity",
    //"quatz",
    //"ruby",
    //"sakura_diamond",
    //"salt",
    //"sapphire",
slagRegister("silver");
slagRegister("soulium");
    //"sulfur",
    //"tanzanite",
slagRegister("tin");
    //"topaz",
slagRegister("uranium");
slagRegister("iron");
slagRegister("gold");
slagRegister("aluminum");
slagRegister("iridium");
slagRegister("platinum");
slagRegister("cobalt");
slagRegister("ardite");