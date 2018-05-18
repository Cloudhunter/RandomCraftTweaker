package uk.co.cloudhunter.randomcrafttweaker;

import crafttweaker.annotations.ZenRegister;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.WeightedItemStack;
import stanhebben.zenscript.annotations.ZenClass;
import stanhebben.zenscript.annotations.ZenMethod;

import java.util.Random;

@ZenRegister
@ZenClass("uk.co.cloudhunter.randomcrafttweaker.TweakStuff")
public class TweakStuff
{
    private static Random random = new Random();

/*    @ZenMethod
    public static IItemStack pickRandomDrop(WeightedItemStack[] items) {

        int total = 0;

        for(WeightedItemStack item : items) {
            total += (item.getChance() * 100);
        }

        double roll = random.nextDouble() * total;

        int ongoing = 0;
        WeightedItemStack last = null;
        for(WeightedItemStack item : items) {
            ongoing += (item.getChance() * 100);
            if (ongoing <= roll)
            {
                return last.getStack();
            }
            last = item;
        }
        return items[0].getStack();
    }*/

    @ZenMethod
    public static float randomFloat() {
        return random.nextFloat();
    }

    @ZenMethod
    public static int randomInt() {
        return random.nextInt();
    }

    @ZenMethod
    public static double randomDouble() {
        return random.nextDouble();
    }
}
