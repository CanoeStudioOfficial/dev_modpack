#
import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.data.IData;
import crafttweaker.command.ICommandManager;
import crafttweaker.text.ITextComponent;
import crafttweaker.event.PlayerSleepInBedEvent;
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.world.IWorld;
import crafttweaker.world.IWorldInfo;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerAdvancementEvent;
import crafttweaker.event.PortalSpawnEvent;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.entity.IEntityItem;
import crafttweaker.event.PlayerInteractEntityEvent;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.ItemTossEvent;
import crafttweaker.event.PlayerInteractEvent;
import crafttweaker.event.PlayerBreakSpeedEvent;
import crafttweaker.event.BlockPlaceEvent;
import crafttweaker.world.IBlockAccess;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IFacing;
import crafttweaker.event.PlayerCraftedEvent;
import crafttweaker.entity.IEntityMob;
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.event.PlayerCloneEvent;
import crafttweaker.event.PlayerFillBucketEvent;
import mods.zenutils.DataUpdateOperation.APPEND;
/* 
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
var id = event.block.definition.id;
var meta = event.block.meta;
if (!event.player.world.isRemote()) {
    var current = event.player.currentItem;
    if (
    (id == "minecraft:furnace") || (id == "minecraft:crafting_table") || (id == "minecraft:lit_furnace") ||
    (id == "mysticalagriculture:inferium_furnace") || (id == "mysticalagriculture:prudentium_furnace") || (id == "mysticalagriculture:intermedium_furnace") ||
    (id == "mysticalagriculture:superium_furnace") || (id == "mysticalagriculture:supremium_furnace") || (id == "mysticalagriculture:ultimate_furnace")
    ) {
        event.cancel();
        if(!isNull(event.player.data.wasGivenTip1)) return;
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.broken"));
        event.player.update({wasGivenTip1: true});
    } else if(((id == "immersiveengineering:wooden_device0") && (meta == 0)) || (id == "minecraft:dispenser")) {
        if(isNull(current)) {
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.locked"));
            event.cancel();
        } else if(!current.definition.id.contains("key")) {
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.locked"));
            event.cancel();
        } else if(current.definition.id != "locks:master_key") {
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.failed"));
            event.cancel();
        }
    }
}});
*/


events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent) {
    if(event.player.world.isRemote()) return;
    if(!isNull(event.fromWorld.getCustomWorldData().reachingStage)) {
        event.toWorld.updateCustomWorldData({reachingStage: true});
    }
    var ser = server.commandManager as ICommandManager;
    if(event.toWorld.dimension == -1) {
        if((isNull(event.player.currentItem)) || (!(event.player.currentItem in <ore:runeFireB>))) {
            ser.executeCommand(server, "tpd " + event.player.name + " 0");
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.nether"));
        }
    } else if(event.toWorld.dimension == 1) {
        if((isNull(event.player.currentItem)) || (!(event.player.currentItem in <ore:runeLustB>))) {
            ser.executeCommand(server, "tpd " + event.player.name + " 0");
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.end"));
        }
    }
});


var mobs = [
"Witch",
"Slime",
"tconstruct.blueslime",
"pyrotech.mud",
"Spider",
"Stray",
"Creeper",
"Enderman",
"CaveSpider",
"babycreeper",
"babyenderman",
"babyguardian",
"babyirongolem",
"babyocelot",
"babyshulker",
"babyshulkerbullet",
"babysnowman",
"babyspider",
"babycavespider",
"babysquid",
"babywitch",
"babywither",
"Skeleton",
"Zombie",
"Husk",
"ZombieVillager",
"ZombieHorse",
"SkeletonHorse",
"zombiechicken",
"zombiepig",
"mutantbeasts.body_part",
"mutantbeasts.chemical_x",
"mutantbeasts.creeper_minion",
"mutantbeasts.creeper_minion_egg",
"mutantbeasts.endersoul_clone",
"mutantbeasts.endersoul_fragment",
"mutantbeasts.mutant_arrow",
"mutantbeasts.mutant_creeper",
"mutantbeasts.mutant_enderman",
"mutantbeasts.mutant_skeleton",
"mutantbeasts.mutant_snow_golem",
"mutantbeasts.mutant_zombie",
"mutantbeasts.skull_spirit",
"mutantbeasts.spider_pig",
"mutantbeasts.throwable_block",
"babyskeleton",
"babyzombie",
"WitherSkeleton",
"Blaze",
"oe.drowned"
] as string[];

events.onEntityJoinWorld(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    if(isNull(entity.definition)) return;
    if(event.world.dimension != 0) return;
    if(event.world.isRemote()) return;
    if(isNull(event.world.getCustomWorldData().reachingStage)) {
        for mob in mobs {
            if(entity.definition.name == mob) {
                event.cancel();
                break;
            }
        }
        if(entity.definition.name == "Chicken") {
            if(entity.nbt.asString().contains("IsChickenJockey: 1")) {
                event.cancel();
            }
        }
    }
});


events.onBlockPlace(function(event as BlockPlaceEvent) {
var id = event.block.definition.id;
var player = event.player;
    if (id.contains("hopper")) {
        var pos as IBlockPos = event.position.getOffset(IFacing.down(), 1);
        var down = event.world.getBlockState(pos).block;
        if ((down.definition.id == "minecraft:furnace") || (id == "minecraft:lit_furnace"))  {
            event.world.destroyBlock(pos, false);
        }
    } else if (id == "tconstruct:smeltery_controller") {
        if (isNull(event.player.world.getCustomWorldData().reachingStage)) {
            event.player.world.updateCustomWorldData({reachingStage: true});
        }
    }
});

