import crafttweaker.item.IItemStack;

val Items = [<minecraft:tnt>, <minecraft:wool:10>, <minecraft:wool:5>, <minecraft:stone>] as IItemStack[];
val Weights = [20, 20, 40, 20];

val WeightedItems = [] as WeightedItemStack[];

/*for i, item in Items {
    val weight = Weights[i];
    WeightedItems += item.weight(weight);
}*/

events.onBlockHarvestDrops(function(event) {
    var blockEv as crafttweaker.event.BlockHarvestDropsEvent;
    blockEv = event;

    for item in Items {

    }

    if ( blockEv.block.displayName == <minecraft:sand>.asBlock().displayName ) // I don't like this, but I can't work out a way of making it work properly
    {
    	val IArray = [<minecraft:sand>] as IItemStack[];

    	//val ourDrops = uk.co.cloudhunter.randomcrafttweaker.RandomCraftTweaker.pickRandomDrops(WeightedArray);

    	/*for drop in ourDrops
    	{
    	    blockEv.drops += drop;
    	}*/
    }
});