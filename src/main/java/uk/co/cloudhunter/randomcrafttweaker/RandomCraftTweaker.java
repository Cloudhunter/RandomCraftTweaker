package uk.co.cloudhunter.randomcrafttweaker;

import crafttweaker.CraftTweakerAPI;
import crafttweaker.annotations.ZenRegister;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.WeightedItemStack;
import net.minecraft.init.Blocks;
import net.minecraft.item.ItemStack;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.common.Mod.EventHandler;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import org.apache.logging.log4j.Logger;
import stanhebben.zenscript.annotations.ZenClass;
import stanhebben.zenscript.annotations.ZenMethod;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Mod(modid = RandomCraftTweaker.MODID, name = RandomCraftTweaker.NAME, version = RandomCraftTweaker.VERSION)
public class RandomCraftTweaker
{
    public static final String MODID = "randomcrafttweaker";
    public static final String NAME = "Random Craft Tweaker";
    public static final String VERSION = "1.0";

    private static Random random = new Random();


}
