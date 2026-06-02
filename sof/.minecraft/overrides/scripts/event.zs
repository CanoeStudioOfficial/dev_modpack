#
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.command.ICommandManager;
import crafttweaker.text.ITextComponent;
import crafttweaker.block.IBlock;
import crafttweaker.world.IWorld;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.WeightedItemStack;


static disabledBlocks as string[] = [
    "minecraft:furnace",
    "minecraft:crafting_table",
    "minecraft:lit_furnace",
    "mysticalagriculture:inferium_furnace",
    "mysticalagriculture:prudentium_furnace",
    "mysticalagriculture:intermedium_furnace",
    "mysticalagriculture:superium_furnace",
    "mysticalagriculture:supremium_furnace",
    "mysticalagriculture:ultimate_furnace"
];

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    if (event.player.world.isRemote()) return;
    
    var id = event.block.definition.id;
    var current = event.player.currentItem;
    
    if (disabledBlocks has id) {
        event.cancel();
        if (!isNull(event.player.data.wasGivenTip1)) return;
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.broken"));
        event.player.update({wasGivenTip1: true});
    }
});

events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent) {
    if (event.player.world.isRemote()) return;
    
    if (!isNull(event.fromWorld.getCustomWorldData().reachingStage)) {
        event.toWorld.updateCustomWorldData({reachingStage: true});
    }
    
    var ser = server.commandManager as ICommandManager;
    var currentItem = event.player.currentItem;
    
    if (event.toWorld.dimension == -1) {
        if (isNull(currentItem) || (!(currentItem in <ore:runeFireB>))) {
            ser.executeCommand(server, "tpd " + event.player.name + " 0");
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.nether"));
        }
    } else if (event.toWorld.dimension == 1) {
        if (isNull(currentItem) || (!(currentItem in <ore:runeLustB>))) {
            ser.executeCommand(server, "tpd " + event.player.name + " 0");
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.end"));
        }
    }
});