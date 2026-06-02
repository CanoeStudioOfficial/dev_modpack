#priority 98
import mods.dropt.Dropt;

var index = ["0","1","2","3","4","5","6","7","8","9","10","11"];
var oredict = [
    <ore:oreCopper>,
    <ore:oreTin>,
    <ore:oreIron>,
    <ore:oreGold>,
    <ore:oreSilver>,
    <ore:orePlatinum>,
    <ore:oreNickel>,
    <ore:oreAluminum>,
    <ore:oreCobalt>,
    <ore:oreIridium>,
    <ore:oreOsmium>,
    <ore:oreArdite>,
    <ore:oreLead>
];
var drops = [
    <contenttweaker:copper_slag>,
    <contenttweaker:tin_slag>,
    <contenttweaker:iron_slag>,
    <contenttweaker:gold_slag>,
    <contenttweaker:silver_slag>,
    <contenttweaker:platinum_slag>,
    <contenttweaker:nickel_slag>,
    <contenttweaker:aluminum_slag>,
    <contenttweaker:cobalt_slag>,
    <contenttweaker:iridium_slag>,
    <contenttweaker:osmium_slag>,
    <contenttweaker:ardite_slag>,
    <contenttweaker:lead_slag>
];
for i in 0 to index.length - 1 {
    Dropt.list("drops_" + index[i])
    .add(
        Dropt.rule()
        .debug()
        .matchDrops([oredict[i]])
        // 50% 概率掉落圆石
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(100))
            .items([drops[i]])
        )
    );
}