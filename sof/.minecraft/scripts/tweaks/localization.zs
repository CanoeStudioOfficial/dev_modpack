#priority 800


import crafttweaker.game.IGame;


val localizationMap as string[string][string] = {
    zh_cn: {
        "memorycleaner.gc.start": "§a[内存清理] §f正在清理内存，可能会导致卡顿！\n§7(如果这造成了较长时间的卡顿，请使用我们GitHub Wiki页面推荐的JVM参数。)"
    }, 
    en_us: {
        "memorycleaner.gc.start": "§a[MemoryCleaner] §fCleaning memory, this might cause some lag!\n§7(If your game pauses for a long time when this happens, please use the recommended JVM arguments in the installation guide which can be found on our GitHub wiki.)"
    }
};

val blueprintDesc as string[] = [
    "item.tconstruct.longsword.desc",
    "item.tconstruct.rapier.desc",
    "item.tconstruct.cleaver.desc",
    "item.tconstruct.shuriken.desc",
    "item.tconevo:tool_sceptre.desc",
    "item.katana.desc",
    "item.laser_gun.desc"
];

for lang, entries in localizationMap {
    for k, v in entries {
        game.setLocalization(lang, k, v);
    }
}

for key in blueprintDesc {
    game.setLocalization(key, game.localize(key) + "\n" + game.localize("greedycraft.tooltip.constant.blueprint_required"));
}
