import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.event.BlockHarvestDropsEvent;


static Items as IItemStack[] = [<minecraft:tnt>, <minecraft:wool>, <minecraft:wool>, <minecraft:stone>];
static Weights as int[] = [20, 20, 40, 20];

function getItem() as IItemStack
{
    var total as int = 0;

    for i, item in Items {
        val weight = Weights[i];
        total += weight;
    }

    var roll = uk.co.cloudhunter.randomcrafttweaker.TweakStuff.randomDouble() * total;

    var lastItem = Items[Items.length - 1];

    var ongoing = 0;

    for i, item in Items {
        val weight = Weights[i];
        ongoing += weight;

        if (ongoing >= roll)
        {
            return item;
        }
    }

    return lastItem;
}

events.onBlockHarvestDrops(function(event) {
    var blockEv as crafttweaker.event.BlockHarvestDropsEvent;
    blockEv = event;

    if ( blockEv.block.displayName == <minecraft:sand>.asBlock().displayName ) // I don't like this, but I can't work out a way of making it work properly
    {
    	//val IArray = [<minecraft:sand>] as IItemStack[];

        //var ourDrops;

    	//ourDrops = uk.co.cloudhunter.randomcrafttweaker.TweakStuff.pickRandomDrop(WeightedItems);

    	var ourDrops = [] as IItemStack[];

    	/*for drop in blockEv.drops {
    	    blockEv.drops.remove(drop);
    	}*/

    	val fortune = blockEv.fortuneLevel;

        for i in 0 .. fortune
        {
            ourDrops += getItem();
        }

        blockEv.drops = ourDrops;

        //blockEv.drops += uk.co.cloudhunter.randomcrafttweaker.TweakStuff.pickRandomDrop(WeightedItems);
    }
});