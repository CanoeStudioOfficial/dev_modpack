#priority 99
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.IBlockAction;
import mods.contenttweaker.DropHandler;
import crafttweaker.item.IItemStack;

function oreRegister(id as string,hardness as float,toollevel as int,drops as IItemStack[]) {
    var ore = VanillaFactory.createBlock(id,<blockmaterial:rock>);
        ore.blockHardness = hardness;
        ore.blockResistance = 5.0f;
        ore.toolClass = "pickaxe";
        ore.toolLevel = toollevel;
        if (drops.length != 0) {
            for item in drops {
                ore.setDropHandler(function(drops, world, position, state, fortune) {
                        drops.clear();
                        drops.add(item);
                        return;
                    }
                );
            }
        }
        ore.register();
}

            //[id,显示名称，硬度，挖掘等级，[掉落物列表]]
oreRegister("deepslate_amber_ore",5.0f,1,[<item:biomesoplenty:gem:7>]);
oreRegister("deepslate_apatite_ore",5.0f,1,[<item:forestry:apatite> * 3]);
oreRegister("deepslate_black_quartz_ore",5.0f,1,[<item:contenttweaker:black_quartz_slag>]);
oreRegister("deepslate_certus_quartz_ore",5.0f,1,[<item:appliedenergistics2:material> * 2]);
oreRegister("deepslate_charged_quartz_ore",5.0f,1,[<item:appliedenergistics2:material:1> * 2]);
oreRegister("deepslate_cinnabar_ore",5.0f,2,[<item:contenttweaker:cinnabar_slag>]);
oreRegister("deepslate_copper_ore",5.0f,1,[<item:contenttweaker:copper_slag>]);
oreRegister("deepslate_crystal_ore",5.0f,2,[<item:ebwizardry:crystal_shard> * 2]);
oreRegister("deepslate_draconium_ore",5.0f,3,[<item:draconicevolution:draconium_dust> * 2]);
oreRegister("deepslate_fluorite_ore",5.0f,2,[<item:mekanism:fluoriteclump> * 2]);
oreRegister("deepslate_fossil_ore",5.0f,2,[<item:contenttweaker:fossil_slag>]);
oreRegister("deepslate_inferium_ore",5.0f,2,[<item:mysticalagriculture:crafting> * 3]);
oreRegister("deepslate_lead_ore",5.0f,2,[<item:contenttweaker:lead_slag>]);
oreRegister("deepslate_malachite_ore",5.0f,2,[<item:biomesoplenty:gem:5>]);
oreRegister("deepslate_nickel_ore",5.0f,2,[<item:contenttweaker:nickel_slag>]);
oreRegister("deepslate_niter_ore",5.0f,1,[<item:thermalfoundation:material:772> * 3]);
oreRegister("deepslate_osmium_ore",5.0f,2,[<item:contenttweaker:osmium_slag>]);
oreRegister("deepslate_peridot_ore",5.0f,2,[<item:biomesoplenty:gem:2>]);
oreRegister("deepslate_prosperity_ore",5.0f,1,[<item:mysticalagriculture:crafting:5> * 3]);
oreRegister("deepslate_quatz_ore",5.0f,2,[<item:minecraft:quartz> * 3]);
oreRegister("deepslate_ruby_ore",5.0f,2,[<item:biomesoplenty:gem:1>]);
oreRegister("deepslate_sakura_diamond_ore",5.0f,2,[<item:sakura:sakura_diamond>]);
oreRegister("deepslate_salt_ore",5.0f,1,[<item:cuisine:material:3> * 3]);
oreRegister("deepslate_sapphire_ore",5.0f,2,[<item:biomesoplenty:gem:6>]);
oreRegister("deepslate_silver_ore",5.0f,2,[<item:contenttweaker:silver_slag>]);
oreRegister("deepslate_soulium_ore",5.0f,2,[<item:contenttweaker:soulium_slag>]);
oreRegister("deepslate_sulfur_ore",5.0f,2,[<item:thermalfoundation:material:771> * 3]);
oreRegister("deepslate_tanzanite_ore",5.0f,2,[<item:biomesoplenty:gem:4>]);
oreRegister("deepslate_tin_ore",5.0f,1,[<item:contenttweaker:tin_slag>]);
oreRegister("deepslate_topaz_ore",5.0f,2,[<item:biomesoplenty:gem:3>]);
oreRegister("deepslate_uranium_ore",5.0f,2,[<item:contenttweaker:uranium_slag>]);
oreRegister("deepslate_aluminum_ore",5.0f,2,[]);
oreRegister("deepslate_iridium_ore",5.0f,3,[]);
oreRegister("deepslate_platinum_ore",5.0f,2,[]);