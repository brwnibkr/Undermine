
#Imports
import minetweaker.item.IItemStack;
import minetweaker.data.IData;
import mods.agricraft.SeedMutation;
import mods.agricraft.growing.Soil;
import mods.agricraft.growing.FertileSoils;
import mods.agricraft.growing.BaseBlock;
import mods.agricraft.CropProduct;

#Values
	#Magical Crops
	val Minicio = <magicalcrops:1MinicioEssence>;
	val Accio = <magicalcrops:2AccioEssence>;
	val Crucio = <magicalcrops:3CrucioEssence>;
	val Imperio = <magicalcrops:4ImperioEssence>;
	val Zivicio = <magicalcrops:5ZivicioEssence>;
	val CoalSeeds = <magicalcrops:CoalSeeds>;
	val DyeSeeds = <magicalcrops:DyeSeeds>;
	val EarthSeeds = <magicalcrops:EarthSeeds>;
	val FireSeeds = <magicalcrops:FireSeeds>;
	val MinicioSeeds = <magicalcrops:MinicioSeeds>;
	val NatureSeeds = <magicalcrops:NatureSeeds>;
	val WaterSeeds = <magicalcrops:WaterSeeds>;
	val RedstoneSeeds = <magicalcrops:RedstoneSeeds>;
	val GlowstoneSeeds = <magicalcrops:GlowstoneSeeds>;
	val ObsidianSeeds = <magicalcrops:ObsidianSeeds>;
	val NetherSeeds = <magicalcrops:NetherSeeds>;
	val IronSeeds = <magicalcrops:IronSeeds>;
	val GoldSeeds = <magicalcrops:GoldSeeds>;
	val LapisSeeds = <magicalcrops:LapisSeeds>;
	val ExperienceSeeds = <magicalcrops:ExperienceSeeds>;
	val DiamondSeeds = <magicalcrops:DiamondSeeds>;   
	val EmeraldSeeds = <magicalcrops:EmeraldSeeds>;
	val BlazeSeeds = <magicalcrops:BlazeSeeds>;
	val CreeperSeeds = <magicalcrops:CreeperSeeds>;
	val EndermanSeeds = <magicalcrops:EndermanSeeds>;
	val PigSeeds = <magicalcrops:PigSeeds>;
	val PigEssence = <magicalcrops:PigEssence>;
	val SheepEssence = <magicalcrops:SheepEssence>;
	val SheepSeeds = <magicalcrops:SheepSeeds>;
	val CowSeeds = <magicalcrops:CowSeeds>;
	val CowEssence = <magicalcrops:CowSeeds>;
	val GhastSeeds = <magicalcrops:GhastSeeds>;
	val SkeletonSeeds = <magicalcrops:SkeletonSeeds>;
	val SlimeSeeds = <magicalcrops:SlimeSeeds>;
	val SpiderSeeds = <magicalcrops:SpiderSeeds>;
	val WitherSeeds = <magicalcrops:WitherSeeds>;
	val ChickenSeeds = <magicalcrops:ChickenSeeds>;
	val ChickenEssence = <magicalcrops:ChickenEssence>;
	val LapisEssence = <magicalcrops:LapisSeeds>;
	val RedstoneEssence = <magicalcrops:RedstoneEssence>;
	val DiamondEssence = <magicalcrops:DiamondEssence>;
	val QuartzSeeds = <magicalcrops:QuartzSeeds>;

	#Tinkers Construct
	val CobaltSeeds = <magicalcrops:CobaltSeeds>;
	val ArditeSeeds = <magicalcrops:ArditeSeeds>;

	#AE2
	val CertusQuartzSeed = <magicalcrops:CertusQuartzSeeds>;
	val CertusQuartzEssence = <magicalcrops:CertusQuartzEssence>;

	#Agricraft
	val seedWheat = <minecraft:wheat_seeds>;
	val seedCarrot = <AgriCraft:seedCarrot>;
	val seedPotato = <AgriCraft:seedPotato>;

#Rename
seedWheat.displayName = "Wheat Seeds";

#Remove
recipes.remove(<magicalcrops:InfusionStoneWeak>);
recipes.remove(<magicalcrops:InfusionStoneRegular>);
recipes.remove(<magicalcrops:InfusionStoneStrong>);
recipes.remove(<magicalcrops:InfusionStoneExtreme>);
recipes.remove(<magicalcrops:InfusionStoneMaster>);
recipes.remove(CoalSeeds);
recipes.remove(CertusQuartzSeed);
recipes.remove(IronSeeds);
recipes.remove(RedstoneSeeds);
recipes.remove(GoldSeeds);
recipes.remove(DiamondSeeds);
recipes.remove(EmeraldSeeds);
recipes.remove(CobaltSeeds);
recipes.remove(ArditeSeeds);

#Add
recipes.addShaped(<magicalcrops:InfusionStoneWeak>, [
	[<magicalcrops:1MinicioEssence>, <magicalcrops:1MinicioEssence>, <magicalcrops:1MinicioEssence>],
	[<magicalcrops:1MinicioEssence>, <minecraft:cobblestone>, <magicalcrops:1MinicioEssence>],
	[<magicalcrops:1MinicioEssence>, <magicalcrops:1MinicioEssence>, <magicalcrops:1MinicioEssence>]
]);

recipes.addShaped(<magicalcrops:InfusionStoneRegular>, [
	[<magicalcrops:2AccioEssence>, <magicalcrops:2AccioEssence>, <magicalcrops:2AccioEssence>],
	[<magicalcrops:2AccioEssence>, <minecraft:cobblestone>, <magicalcrops:2AccioEssence>],
	[<magicalcrops:2AccioEssence>, <magicalcrops:2AccioEssence>, <magicalcrops:2AccioEssence>]
]);

recipes.addShaped(<magicalcrops:InfusionStoneStrong>, [
	[<magicalcrops:3CrucioEssence>, <magicalcrops:3CrucioEssence>, <magicalcrops:3CrucioEssence>],
	[<magicalcrops:3CrucioEssence>, <minecraft:cobblestone>, <magicalcrops:3CrucioEssence>],
	[<magicalcrops:3CrucioEssence>, <magicalcrops:3CrucioEssence>, <magicalcrops:3CrucioEssence>]
]);

recipes.addShaped(<magicalcrops:InfusionStoneExtreme>, [
	[<magicalcrops:4ImperioEssence>, <magicalcrops:4ImperioEssence>, <magicalcrops:4ImperioEssence>],
	[<magicalcrops:4ImperioEssence>, <minecraft:cobblestone>, <magicalcrops:4ImperioEssence>],
	[<magicalcrops:4ImperioEssence>, <magicalcrops:4ImperioEssence>, <magicalcrops:4ImperioEssence>]
]);

recipes.addShaped(<magicalcrops:InfusionStoneMaster>, [
	[<magicalcrops:5ZivicioEssence>, <magicalcrops:5ZivicioEssence>, <magicalcrops:5ZivicioEssence>],
	[<magicalcrops:5ZivicioEssence>, <minecraft:cobblestone>, <magicalcrops:5ZivicioEssence>],
	[<magicalcrops:5ZivicioEssence>, <magicalcrops:5ZivicioEssence>, <magicalcrops:5ZivicioEssence>]
]);

#Mutations
//Carrot Seeds
SeedMutation.add(seedCarrot, seedWheat, seedWheat);
//Coal Seeds
SeedMutation.add(CoalSeeds, MinicioSeeds, seedPotato);
//Certus Quartz Seeds
SeedMutation.add(CertusQuartzSeed, CoalSeeds, QuartzSeeds);
//Quartz Seeds
SeedMutation.add(QuartzSeeds, CoalSeeds, seedCarrot);
//Iron Seeds
SeedMutation.add(IronSeeds, CoalSeeds, QuartzSeeds);
//Lapis Seeds
SeedMutation.add(LapisSeeds, CertusQuartzSeed, IronSeeds);
//Redstone Seeds
SeedMutation.add(RedstoneSeeds, LapisSeeds, IronSeeds);
//Gold Seeds
SeedMutation.add(GoldSeeds, RedstoneSeeds, LapisSeeds);
//Diamond Seeds
SeedMutation.add(DiamondSeeds, GoldSeeds, RedstoneSeeds);
//Emerald Seeds
SeedMutation.add(EmeraldSeeds, DiamondSeeds, GoldSeeds);
//Cobalt Seeds
SeedMutation.add (CobaltSeeds, EmeraldSeeds, LapisSeeds);
//Ardite Seeds
SeedMutation.add (ArditeSeeds, EmeraldSeeds, DiamondSeeds);
