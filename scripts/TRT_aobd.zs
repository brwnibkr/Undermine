//Modifying AOBD research
 //Ore Purification
 mods.thaumcraft.Research.moveResearch("PUREORE", "ALCHEMY", -6, 7);
 mods.thaumcraft.Research.clearPrereqs("PUREORE");
 mods.thaumcraft.Research.addPrereq("PUREORE", "PUREGOLD", false);
  //mods.thaumcraft.Research.addPrereq("PUREORE", "PURECOPPER", false); //Delete "//" before "mods.thaumcraft" if you have this metal in your pack - Copper
  //mods.thaumcraft.Research.addPrereq("PUREORE", "PURETIN", false); //Delete "//" before "mods.thaumcraft" if you have this metal in your pack - Tin
  //mods.thaumcraft.Research.addPrereq("PUREORE", "PURESILVER", false); //Delete "//" before "mods.thaumcraft" if you have this metal in your pack - Silver
  //mods.thaumcraft.Research.addPrereq("PUREORE", "PURELEAD", false); //Delete "//" before "mods.thaumcraft" if you have this metal in your pack - Lead
 //Tab Removal
 mods.thaumcraft.Research.removeTab("AOBD");