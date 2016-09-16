// Imports
	import minetweaker.item.IItemStack;
	import minetweaker.item.IIngredient;

// Variables
	# Blocks
		var chest = <minecraft:chest>;
		var chestIron = <IronChest:BlockIronChest>;
		var chestGold = <IronChest:BlockIronChest:1>;
		var chestDiamond = <IronChest:BlockIronChest:2>;
		var chestCopper = <IronChest:BlockIronChest:3>;
		var chestSilver = <IronChest:BlockIronChest:4>;
		var chestCrystal = <IronChest:BlockIronChest:5>;
		var chestObsidian = <IronChest:BlockIronChest:6>;
		var chestDirt = <IronChest:BlockIronChest:7>;
		var glass = <ore:blockGlassColorless>;
		var glassAny = <ore:blockGlass>;
		var obsidian = <minecraft:obsidian>;
		var dirt = <minecraft:dirt:*>;
	# Items
		var plankWood = <ore:plankWood>;
		var ingotIron = <ore:ingotIron>;
		var ingotGold = <ore:ingotGold>;
		var gemDiamond = <ore:gemDiamond>;
		var ingotCopper = <ore:ingotCopper>;
		var ingotSilver = <ore:ingotSilver>;
		var diamond = <ore:gemDiamond>;
		var cartEmpty = <minecraft:minecart>;
		var cartChest = <minecraft:chest_minecart>;
		var cartChestIron = <extracarts:extracarts_null>;
		var cartChestGold = <extracarts:extracarts_null:1>;
		var cartChestDiamond = <extracarts:extracarts_null:2>;
		var cartChestCopper = <extracarts:extracarts_null:3>;
		var cartChestSilver = <extracarts:extracarts_null:4>;
		var cartChestCrystal = <extracarts:extracarts_null:5>;
		var cartChestObsidian = <extracarts:extracarts_null:6>;
		var cartChestDirt = <extracarts:extracarts_null:7>;
	# Arrays
		var cartsAndContents = [
				# Contents
				chest, chestIron, chestGold, chestDiamond, chestCopper, chestSilver, chestCrystal, chestObsidian, chestDirt, <minecraft:furnace>, <minecraft:tnt>, <minecraft:hopper>, <minecraft:command_block>, <minecraft:ender_chest>,
				
				# Carts
				cartChest, cartChestIron, cartChestGold, cartChestDiamond, cartChestCopper, cartChestSilver, cartChestCrystal, cartChestObsidian, cartChestDirt, <minecraft:furnace_minecart>, <minecraft:tnt_minecart>, <minecraft:hopper_minecart>, <minecraft:command_block_minecart>, <extracarts:extracarts_EnderChestCart>
			] as IItemStack[];
		var cartUpgradeFull = [
			# From Cart:
				cartChest, cartChestIron, cartChest, cartChestCopper, cartChestDiamond, cartChestDiamond, cartChest,
				
			# To Cart:
			cartChestIron, cartChestGold, cartChestCopper, cartChestSilver, cartChestCrystal, cartChestObsidian, cartChestDirt
		] as IItemStack[];
		var cartUpgradeHalf = [
			# From Cart:
				cartChestCopper, cartChestIron, cartChestSilver,
				
			# To Cart:
				cartChestIron, cartChestSilver, cartChestGold
		] as IItemStack[];
		var cartUpgradeMatFull = [ingotIron, ingotGold, ingotCopper, ingotSilver, glass, obsidian, dirt] as IIngredient[];
		var cartUpgradeMatHalf = [ingotIron, ingotSilver, ingotGold] as IIngredient[];
		var fourteen = [0,0,0,0,0,0,0,0,0,0,0,0,0,0] as int[];
		
// Array Iteration
	# Retrieve chests from their cart variant, removes all content-holding cart recipes, re-adds cart-content recipes as shapeless recipes
		for i, num in fourteen {
			var chest = cartsAndContents[i];
			var carts = cartsAndContents[i+14];
			var cart = carts.transformReplace(cartEmpty);
			
			recipes.addShapeless(chest, [cart]);
			recipes.remove(carts);
			recipes.addShapeless(carts, [cartEmpty, chest]);
		}
	# Cart chest conversions (8 material pieces)
		for i, mat in cartUpgradeMatFull {
			var from = cartUpgradeFull[i];
			var to = cartUpgradeFull[i+7];
			
			recipes.addShaped(to, [[mat,mat,mat],[mat,from,mat],[mat,mat,mat]]);
		}
		for i, mat in cartUpgradeMatHalf {
			var from = cartUpgradeHalf[i];
			var to = cartUpgradeHalf[i+3];
			
			recipes.addShaped(to, [[mat,glass,mat],[glass,from,glass],[mat,glass,mat]]);
		}

// Recipe changes
	# Additions
		recipes.addShaped(cartChestCrystal,[[glass,glass,glass],[glass,cartChestObsidian.transformReplace(obsidian * 8),glass],[glass,glass,glass]]);
		recipes.addShaped(cartChestObsidian,[[obsidian,obsidian,obsidian],[obsidian,cartChestCrystal.transformReplace(<minecraft:glass> * 8),obsidian],[obsidian,obsidian,obsidian]]);
		recipes.addShaped(cartChestDiamond, [[glassAny, glassAny, glassAny], [diamond, cartChestGold, diamond], [glassAny, glassAny, glassAny]]);
		recipes.addShaped(cartChestDiamond, [[glassAny, glassAny, glassAny], [glassAny, cartChestSilver, glassAny], [diamond, diamond, diamond]]);