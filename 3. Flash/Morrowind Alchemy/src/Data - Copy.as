package
{
	
	import mx.collections.ArrayCollection;
	
	public class Data extends Object
	{
		
		public var reagents:ArrayCollection = null;
		
		private var object:Object;
		
		private var reagent:Reagent;
		
		public function Data()
		{
			
			generateData();
			
		}
		
		private function generateData():void
		{
			
			//cost ranges:
			//1, 2, 5, 10, 20, 23, 25, 30, 50, 75, 100, 150, 200, 250, 500
			//1: 150, 200, 250, 500 very expensive
			//2: 75, 100 expensive
			//3: 20, 23, 25, 30, 50 average
			//4: 5, 10 cheap
			//5: 1, 2 very cheap
			
			//weight ranges
			//0.1, 0.2, 0.5, 1, 2, 10
			//1: 10 very heavy
			//2: 2 heavy-ish
			//3: 1 somewhat heavy
			//4: 0.5 not very heavy
			//5: 0.1, 0.2 light
			
			if (reagents == null)
			{
				
				reagents = new ArrayCollection();
				
			}
			
			//1. Alit hide
			/*
			object = new Object();
			
			object.id = 1;
			object.label = object.id + ". Alit hide";
			object.type = "animal";
			object.cost = 5;
			object.weight = 1;
			object.rarity = 2; //a semi-rare animal
			object.costRange = 4;
			object.weightRange = 3;
			object.attribute1 = "resist poison";//p
			object.attribute2 = "drain intelligence";//N
			object.attribute3 = "detect animal";//p
			object.attribute4 = "telekinesis";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			*/
			reagent = new Reagent();
			
			reagent.id = 1;
			reagent.name = "Alit hide";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 5;
			reagent.weight = 1;
			reagent.rarity = 2; //a semi-rare animal
			reagent.costRange = 4;
			reagent.weightRange = 3;
			reagent.attributes.push("resist poison");//p
			reagent.attributes.push("drain intelligence");//N
			reagent.attributes.push("detect animal");//p
			reagent.attributes.push("telekinesis");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//2. Ampoule pod
			object = new Object();
			
			object.id = 2;
			object.label = object.id + ". Ampoule pod";
			object.type = "plant";
			object.cost = 2;
			object.weight = 0.1;
			object.rarity = 3;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "drain willpower";//N
			object.attribute2 = "detect animal";//p
			object.attribute3 = "water walking";//p
			object.attribute4 = "paralysis";//N
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//3. Ash salts
			object = new Object();
			
			object.id = 3;
			object.label = object.id + ". Ash salts"; 
			object.type = "animal";
			object.cost = 25;
			object.weight = 0.1;
			object.rarity = 2; //ash creatures, dangerous
			object.costRange = 3;
			object.weightRange = 5;
			object.attribute1 = "cure blight disease";//p
			object.attribute2 = "drain agility";//N
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//4. Ash yam
			object = new Object();
			
			object.id = 4;
			object.label = object.id + ". Ash yam";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.5;
			object.rarity = 2;
			object.costRange = 5;
			object.weightRange = 4;
			object.attribute1 = "fortify intelligence";//p
			object.attribute2 = "fortify strenght";//p
			object.attribute3 = "resist common disease";//p
			object.attribute4 = "detect key";//p
			object.hasNegative = false;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//5. Bittergreen petals
			object = new Object();
			
			object.id = 5;
			object.label = object.id + ". Bittergreen petals";
			object.type = "plant";
			object.cost = 5;
			object.weight = 0.1;
			object.rarity = 2;
			object.costRange = 4;
			object.weightRange = 5;
			object.attribute1 = "restore intelligence";//n
			object.attribute2 = "drain endurance";//N
			object.attribute3 = "drain magika";//N
			object.attribute4 = "invisibility";//p
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//6. Black anther
			object = new Object();
			
			object.id = 6;
			object.label = object.id + ". Black anther";
			object.type = "plant";
			object.cost = 2;
			object.weight = 0.1;
			object.rarity = 3;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "resist fire";//p
			object.attribute2 = "drain agility";//N
			object.attribute3 = "drain endurance";//N
			object.attribute4 = "light";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//7. Black lichen
			object = new Object();
			
			object.id = 7;
			object.label = object.id + ". Black lichen";
			object.type = "plant";
			object.cost = 2;
			object.weight = 0.1;
			object.rarity = 1;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "resist frost";//p
			object.attribute2 = "cure poison";//p
			object.attribute3 = "drain strenght";//N
			object.attribute4 = "drain speed";//N
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//8. Bloat
			object = new Object();
			
			object.id = 8;
			object.label = object.id + ". Bloat";
			object.type = "other";
			object.cost = 5;
			object.weight = 0.1;
			object.rarity = 1; //a restricted item
			object.costRange = 4;
			object.weightRange = 5;
			object.attribute1 = "fortify intelligence";//p
			object.attribute2 = "fortify willpower";//p
			object.attribute3 = "drain magika";//N
			object.attribute4 = "detect animal";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//9. Bonemeal
			object = new Object();
			
			object.id = 9;
			object.label = object.id + ". Bonemeal";
			object.type = "animal";
			object.cost = 2;
			object.weight = 0.2;
			object.rarity = 4; //undead are plentiful
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "restore agility";//n
			object.attribute2 = "drain stamina";//N
			object.attribute3 = "drain personality";//N
			object.attribute4 = "telekinesis";//p
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//10. Bread
			object = new Object();
			
			object.id = 10;
			object.label = object.id + ". Bread";
			object.type = "other";
			object.cost = 1;
			object.weight = 0.2;
			object.rarity = 1; //a restricted item
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "restore stamina";//n
			object.hasNegative = false;
			object.hasNeutral = true;
			object.hasPositive = false;
			
			reagents.addItem(object);
			
			//11. Bungler's bane
			object = new Object();
			
			object.id = 11;
			object.label = object.id + ". Bungler's bane";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.5;
			object.rarity = 3;
			object.costRange = 5;
			object.weightRange = 4;
			object.attribute1 = "drain speed";//N
			object.attribute2 = "drain endurance";//N
			object.attribute3 = "drain strenght";//N
			object.attribute4 = "dispell";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//12. Chockeweed
			object = new Object();
			
			object.id = 12;
			object.label = object.id + ". Chockeweed";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.1;
			object.rarity = 4;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "restore stamina";//n
			object.attribute2 = "cure common disease";//p
			object.attribute3 = "drain luck";//N
			object.attribute4 = "drain willpower";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//13. Coda flower
			object = new Object();
			
			object.id = 13;
			object.label = object.id + ". Coda flower";
			object.type = "plant";
			object.cost = 23;
			object.weight = 0.1;
			object.rarity = 2;
			object.costRange = 3;
			object.weightRange = 5;
			object.attribute1 = "drain personality";//N
			object.attribute2 = "drain intelligence";//N
			object.attribute3 = "drain health";//N
			object.attribute4 = "levitation";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//14. Comberry
			object = new Object();
			
			object.id = 14;
			object.label = object.id + ". Comberry";
			object.type = "plant";
			object.cost = 2;
			object.weight = 0.1;
			object.rarity = 2;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "drestore magika";//N
			object.attribute2 = "drain stamina";//N
			object.attribute3 = "fire shield";//p
			object.attribute4 = "reflect";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//15. Corckbulb root
			object = new Object();
			
			object.id = 15;
			object.label = object.id + ". Corckbulb root";
			object.type = "plant";
			object.cost = 5;
			object.weight = 0.1;
			object.rarity = 3;
			object.costRange = 4;
			object.weightRange = 5;
			object.attribute1 = "cure paralysis";//p
			object.attribute2 = "restore health";//n
			object.attribute3 = "fortify luck";//p
			object.attribute4 = "lightning shield";//p
			object.hasNegative = false;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//16. Corpus weepings
			object = new Object();
			
			object.id = 16;
			object.label = object.id + ". Corpus weepings";
			object.type = "animal";
			object.cost = 50;
			object.weight = 0.1;
			object.rarity = 2; //found on somewhat rare corpus walkers
			object.costRange = 3;
			object.weightRange = 5;
			object.attribute1 = "restore health";//n
			object.attribute2 = "fortify luck";//p
			object.attribute3 = "drain stamina";//N
			object.attribute4 = "drain willpower";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//17. Crab meat
			object = new Object();
			
			object.id = 17;
			object.label = object.id + ". Crab meat";
			object.type = "animal";
			object.cost = 1;
			object.weight = 0.5;
			object.rarity = 4; //crabs are somewhat abudant
			object.costRange = 5;
			object.weightRange = 4;
			object.attribute1 = "restore stamina";//n
			object.attribute2 = "restore luck";//n
			object.attribute3 = "resist shock";//p
			object.attribute4 = "lightning shield";//p
			object.hasNegative = false;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//18. Daedra skin
			object = new Object();
			
			object.id = 18;
			object.label = object.id + ". Daedra skin";
			object.type = "animal";
			object.cost = 200;
			object.weight = 0.2;
			object.rarity = 1; //deadras are rare and dangerous
			object.costRange = 1;
			object.weightRange = 5;
			object.attribute1 = "fortify strenght";//p
			object.attribute2 = "cure common disease";//p
			object.attribute3 = "swift swim";//p
			object.attribute4 = "paralysis";//N
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//19. Daedra's heart
			object = new Object();
			
			object.id = 19;
			object.label = object.id + ". Daedra's heart";
			object.type = "animal";
			object.cost = 200;
			object.weight = 1;
			object.rarity = 2; //deadras are rare and dangerous
			object.costRange = 1;
			object.weightRange = 3;
			object.attribute1 = "restore magika";//n
			object.attribute2 = "fortify endurance";//p
			object.attribute3 = "drain agility";//N
			object.attribute4 = "night eye";//p
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//20. Diamond
			object = new Object();
			
			object.id = 20;
			object.label = object.id + ". Diamond";
			object.type = "plant";
			object.cost = 250;
			object.weight = 0.2;
			object.rarity = 1;
			object.costRange = 1;
			object.weightRange = 5;
			object.attribute1 = "drain agility";//N
			object.attribute2 = "reflect";//p
			object.attribute3 = "detect key";//p
			object.attribute4 = "invisibility";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//21. Dreugh wax
			object = new Object();
			
			object.id = 21;
			object.label = object.id + ". Dreugh wax";
			object.type = "animal";
			object.cost = 100;
			object.weight = 0.2;
			object.rarity = 3; //dreugh are somewhat abudant
			object.costRange = 2;
			object.weightRange = 5;
			object.attribute1 = "fortify strenght";//p
			object.attribute2 = "restore strenght";//n
			object.attribute3 = "drain luck";//N
			object.attribute4 = "drain willpower";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//22. Ectoplasm
			object = new Object();
			
			object.id = 22;
			object.label = object.id + ". Ectoplasm";
			object.type = "animal";
			object.cost = 10;
			object.weight = 0.1;
			object.rarity = 2; //ghosts are somewhat rare
			object.costRange = 4;
			object.weightRange = 5;
			object.attribute1 = "fortify agility";//p
			object.attribute2 = "drain strenght";//N
			object.attribute3 = "drain health";//N
			object.attribute4 = "detect animal";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//23. Emerald
			object = new Object();
			
			object.id = 23;
			object.label = object.id + ". Emerald";
			object.type = "other";
			object.cost = 150;
			object.weight = 0.2;
			object.rarity = 1; //a restricted item
			object.costRange = 1;
			object.weightRange = 5;
			object.attribute1 = "fortify magika";//p
			object.attribute2 = "restore health";//n
			object.attribute3 = "drain agility";//N
			object.attribute4 = "drain endurance";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//24. Fire petal
			object = new Object();
			
			object.id = 24;
			object.label = object.id + ". Fire petal";
			object.type = "plant";
			object.cost = 2;
			object.weight = 0.1;
			object.rarity = 3;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "resist fire";//p
			object.attribute2 = "drain health";//N
			object.attribute3 = "spell absorbtion";//p
			object.attribute4 = "paralysis";//N
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//25. Fire salts
			object = new Object();
			
			object.id = 25;
			object.label = object.id + ". Fire salts";
			object.type = "animal";
			object.cost = 100;
			object.weight = 0.1;
			object.rarity = 2;
			object.costRange = 2; //atronachs are somewhat rare
			object.weightRange = 5;
			object.attribute1 = "fortify agility";//p
			object.attribute2 = "resist frost";//p
			object.attribute3 = "drain health";//N
			object.attribute4 = "fire shield";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//26. Frost salts
			object = new Object();
			
			object.id = 26;
			object.label = object.id + ". Frost salts";
			object.type = "animal";
			object.cost = 75;
			object.weight = 0.1;
			object.rarity = 2; //atronachs are somewhat rare
			object.costRange = 2;
			object.weightRange = 5;
			object.attribute1 = "restore magika";//n
			object.attribute2 = "resist fire";//p
			object.attribute3 = "drain speed";//N
			object.attribute4 = "frost shield";//p
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//27. Ghoul heart
			object = new Object();
			
			object.id = 27;
			object.label = object.id + ". Ghoul heart";
			object.type = "other";
			object.cost = 150;
			object.weight = 0.5;
			object.rarity = 1; //a restricted item
			object.costRange = 1;
			object.weightRange = 4;
			object.attribute1 = "cure poison";//p
			object.attribute2 = "paralysis";//N
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//28. Gold kanet
			object = new Object();
			
			object.id = 28;
			object.label = object.id + ". Gold kanet";
			object.type = "plant";
			object.cost = 5;
			object.weight = 0.1;
			object.rarity = 3;
			object.costRange = 4;
			object.weightRange = 5;
			object.attribute1 = "restore strenght";//n
			object.attribute2 = "drain health";//N
			object.attribute3 = "drain luck";//N
			object.attribute4 = "burden";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = false;
			
			reagents.addItem(object);
			
			//29. Gravedust
			object = new Object();
			
			object.id = 29;
			object.label = object.id + ". Gravedust";
			object.type = "other";
			object.cost = 1;
			object.weight = 0.1;
			object.rarity = 1; //a restricted item
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "cure common disease";//p
			object.attribute2 = "restore endurance";//n
			object.attribute3 = "drain intelligence";//N
			object.attribute4 = "drain magika";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//30. Green lichen
			object = new Object();
			
			object.id = 30;
			object.label = object.id + ". Green lichen";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.1;
			object.rarity = 1;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "fortify personality";//p
			object.attribute2 = "cure common disease";//p
			object.attribute3 = "drain strenght";//N
			object.attribute4 = "drain health";//N
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//31. Guar hide
			object = new Object();
			
			object.id = 31;
			object.label = object.id + ". Guar hide";
			object.type = "animal";
			object.cost = 5;
			object.weight = 1;
			object.rarity = 2; //guars are somewhat rare
			object.costRange = 4;
			object.weightRange = 3;
			object.attribute1 = "fortify endurance";//p
			object.attribute2 = "fortify luck";//p
			object.attribute3 = "restore personality";//n
			object.attribute4 = "drain stamina";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//32. Hack-lo leaf
			object = new Object();
			
			object.id = 32;
			object.label = object.id + ". Hack-lo leaf";
			object.type = "plant";
			object.cost = 30;
			object.weight = 0.1;
			object.rarity = 4;
			object.costRange = 3;
			object.weightRange = 5;
			object.attribute1 = "restore stamina";//n
			object.attribute2 = "restore luck";//n
			object.attribute3 = "water breathing";//p
			object.attribute4 = "paralysis";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//33. Heather
			object = new Object();
			
			object.id = 33;
			object.label = object.id + ". Heather";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.1;
			object.rarity = 3;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "restore personality";//n
			object.attribute2 = "drain speed";//N
			object.attribute3 = "drain personality";//N
			object.attribute4 = "feather";//p
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//34. Hound meat
			object = new Object();
			
			object.id = 34;
			object.label = object.id + ". Hound meat";
			object.type = "animal";
			object.cost = 2;
			object.weight = 1;
			object.rarity = 4; //hounds are somewhat abudant
			object.costRange = 5;
			object.weightRange = 3;
			object.attribute1 = "restore stamina";//n
			object.attribute2 = "fortify stamina";//p
			object.attribute3 = "reflect";//p
			object.attribute4 = "detect enchantment";//p
			object.hasNegative = false;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//35. Hypha facia
			object = new Object();
			
			object.id = 35;
			object.label = object.id + ". Hypha facia";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.1;
			object.rarity = 3;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "drain luck";//N
			object.attribute2 = "drain agility";//N
			object.attribute3 = "drain stamina";//N
			object.attribute4 = "detect enchantment";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//36. Kagouti hide
			object = new Object();
			
			object.id = 36;
			object.label = object.id + ". Kagouti hide";
			object.type = "animal";
			object.cost = 2;
			object.weight = 1;
			object.rarity = 2; //kagoutis are somewhat rare
			object.costRange = 5;
			object.weightRange = 3;
			object.attribute1 = "fortify speed";//p
			object.attribute2 = "resist common disease";//p
			object.attribute3 = "drain stamina";//N
			object.attribute4 = "night eye";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//37. Kresh fiber
			object = new Object();
			
			object.id = 37;
			object.label = object.id + ". Kresh fiber";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.1;
			object.rarity = 5;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "restore luck";//n
			object.attribute2 = "fortify personality";//p
			object.attribute3 = "drain magika";//N
			object.attribute4 = "drain speed";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//38. Kwama cuttle
			object = new Object();
			
			object.id = 38;
			object.label = object.id + ". Kwama cuttle";
			object.type = "animal";
			object.cost = 2;
			object.weight = 0.1;
			object.rarity = 3; //kwamas are somewhat abudant
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "resist poison";//p
			object.attribute2 = "drain stamina";//N
			object.attribute3 = "water walking";//p
			object.attribute4 = "water breathing";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//39. Kwama egg, large
			object = new Object();
			
			object.id = 39;
			object.label = object.id + ". Kwama egg, large";
			object.type = "plant";
			object.cost = 2;
			object.weight = 2;
			object.rarity = 5;
			object.costRange = 5;
			object.weightRange = 2;
			object.attribute1 = "restore stamina";//n
			object.attribute2 = "fortify health";//p
			object.attribute3 = "frost shield";//p
			object.attribute4 = "paralysis";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//40. Kwama egg, small
			object = new Object();
			
			object.id = 40;
			object.label = object.id + ". Kwama egg, small";
			object.type = "animal";
			object.cost = 1;
			object.weight = 0.5;
			object.rarity = 3; //kwamas are somewhat abudant
			object.costRange = 5;
			object.weightRange = 4;
			object.attribute1 = "restore stamina";//n
			object.hasNegative = false;
			object.hasNeutral = true;
			object.hasPositive = false;
			
			reagents.addItem(object);
			
			//41. Luminous russula
			object = new Object();
			
			object.id = 41;
			object.label = object.id + ". Luminous russula";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.2;
			object.rarity = 4;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "drain stamina";//N
			object.attribute2 = "poison";//N
			object.attribute3 = "water breathing";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//42. Marshmerrow
			object = new Object();
			
			object.id = 42;
			object.label = object.id + ". Marshmerrow";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.1;
			object.rarity = 5;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "restore health";//n
			object.attribute2 = "drain willpower";//N
			object.attribute3 = "drain stamina";//N
			object.attribute4 = "detect enchantment";//p
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//43. Moon sugar
			object = new Object();
			
			object.id = 43;
			object.label = object.id + ". Moon sugar";
			object.type = "other";
			object.cost = 50;
			object.weight = 0.1;
			object.rarity = 1; //a restricted item
			object.costRange = 3;
			object.weightRange = 5;
			object.attribute1 = "fortify speed";//p
			object.attribute2 = "drain endurance";//N
			object.attribute3 = "drain luck";//N
			object.attribute4 = "dispell";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//44. Muck
			object = new Object();
			
			object.id = 44;
			object.label = object.id + ". Muck";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.1;
			object.rarity = 4;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "cure common disease";//p
			object.attribute2 = "drain intelligence";//N
			object.attribute3 = "drain personality";//N
			object.attribute4 = "detect key";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//45. Netch lether
			object = new Object();
			
			object.id = 45;
			object.label = object.id + ". Netch lether";
			object.type = "animal";
			object.cost = 1;
			object.weight = 1;
			object.rarity = 2; //netch are somewhat rare
			object.costRange = 5;
			object.weightRange = 3;
			object.attribute1 = "fortify endurance";//p
			object.attribute2 = "fortify intelligence";//p
			object.attribute3 = "cure paralysis";//p
			object.attribute4 = "drain personality";//N
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//46. Pearl
			object = new Object();
			
			object.id = 46;
			object.label = object.id + ". Pearl";
			object.type = "plant";
			object.cost = 100;
			object.weight = 0.2;
			object.rarity = 5;
			object.costRange = 2;
			object.weightRange = 5;
			object.attribute1 = "resist common disease";//p
			object.attribute2 = "drain agility";//N
			object.attribute3 = "dispell";//p
			object.attribute4 = "water breathing";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//47. Racer plumes
			object = new Object();
			
			object.id = 47;
			object.label = object.id + ". Racer plumes";
			object.type = "animal";
			object.cost = 20;
			object.weight = 0.1;
			object.rarity = 5; //racers are very common
			object.costRange = 3;
			object.weightRange = 5;
			object.attribute1 = "drain willpower";//N
			object.attribute2 = "levitation";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//48. Rat meat
			object = new Object();
			
			object.id = 48;
			object.label = object.id + ". Rat meat";
			object.type = "animal";
			object.cost = 1;
			object.weight = 1;
			object.rarity = 4; //rats are quite common
			object.costRange = 5;
			object.weightRange = 3;
			object.attribute1 = "cure poison";//p
			object.attribute2 = "resist poison";//p
			object.attribute3 = "drain magika";//N
			object.attribute4 = "paralysis";//N
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//49. Raw ebony
			object = new Object();
			
			object.id = 49;
			object.label = object.id + ". Raw ebony";
			object.type = "plant";
			object.cost = 200;
			object.weight = 10;
			object.rarity = 2;
			object.costRange = 1;
			object.weightRange = 1;
			object.attribute1 = "cure poison";//p
			object.attribute2 = "restore speed";//n
			object.attribute3 = "drain agility";//N
			object.attribute4 = "frost shield";//p
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//50. Raw glass
			object = new Object();
			
			object.id = 50;
			object.label = object.id + ". Raw glass";
			object.type = "plant";
			object.cost = 200;
			object.weight = 2;
			object.rarity = 2;
			object.costRange = 1;
			object.weightRange = 2;
			object.attribute1 = "drain intelligence";//N
			object.attribute2 = "drain strenght";//N
			object.attribute3 = "drain speed";//N
			object.attribute4 = "fire shield";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//51. Red lichen
			object = new Object();
			
			object.id = 51;
			object.label = object.id + ". Red lichen";
			object.type = "plant";
			object.cost = 25;
			object.weight = 0.1;
			object.rarity = 1;
			object.costRange = 3;
			object.weightRange = 5;
			object.attribute1 = "cure common disease";//p
			object.attribute2 = "drain speed";//N
			object.attribute3 = "drain magika";//N
			object.attribute4 = "light";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//52. Resin
			object = new Object();
			
			object.id = 52;
			object.label = object.id + ". Resin";
			object.type = "other";
			object.cost = 10;
			object.weight = 0.1;
			object.rarity = 1; //a restricted item
			object.costRange = 4;
			object.weightRange = 5;
			object.attribute1 = "restore health";//n
			object.attribute2 = "restore speed";//n
			object.attribute3 = "resist common disease";//p
			object.attribute4 = "burden";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//53. Roobrush
			object = new Object();
			
			object.id = 53;
			object.label = object.id + ". Roobrush";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.1;
			object.rarity = 2;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "fortify agility";//p
			object.attribute2 = "cure poison";//p
			object.attribute3 = "drain willpower";//N
			object.attribute4 = "drain health";//N
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//54. Ruby
			object = new Object();
			
			object.id = 54;
			object.label = object.id + ". Ruby";
			object.type = "other";
			object.cost = 200;
			object.weight = 0.2;
			object.rarity = 3; //a restricted item
			object.costRange = 1; 
			object.weightRange = 5;
			object.attribute1 = "restore intelligence";//n
			object.attribute2 = "drain health";//N
			object.attribute3 = "drain agility";//N
			object.attribute4 = "feather";//p
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//55. Saltrice
			object = new Object();
			
			object.id = 55;
			object.label = object.id + ". Saltrice";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.1;
			object.rarity = 2;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "restore stamina";//n
			object.attribute2 = "fortify magika";//p
			object.attribute3 = "restore health";//n
			object.attribute4 = "drain strenght";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//56. Scales
			object = new Object();
			
			object.id = 56;
			object.label = object.id + ". Scales";
			object.type = "animal";
			object.cost = 2;
			object.weight = 0.2;
			object.rarity = 5; //slaughterfish are very common
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "restore endurance";//n
			object.attribute2 = "drain personality";//N
			object.attribute3 = "water walking";//p
			object.attribute4 = "swift swim";//p
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//57. Scamp skin
			object = new Object();
			
			object.id = 57;
			object.label = object.id + ". Scamp skin";
			object.type = "animal";
			object.cost = 10;
			object.weight = 0.1;
			object.rarity = 2; //scamps are somewhat rare
			object.costRange = 4;
			object.weightRange = 5;
			object.attribute1 = "cure paralysis";//p
			object.attribute2 = "restore personality";//n
			object.attribute3 = "restore strenght";//n
			object.attribute4 = "drain magika";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//58. Scatchecraw
			object = new Object();
			
			object.id = 58;
			object.label = object.id + ". Scatchecraw";
			object.type = "plant";
			object.cost = 2;
			object.weight = 0.1;
			object.rarity = 2;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "cure poison";//p
			object.attribute2 = "restore willpower";//n
			object.attribute3 = "drain strenght";//N
			object.attribute4 = "drain health";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//59. Scrap metal
			object = new Object();
			
			object.id = 59;
			object.label = object.id + ". Scrap metal";
			object.type = "animal";
			object.cost = 20;
			object.weight = 10;
			object.rarity = 2; //dwemer ruins and machines are somewhat rare
			object.costRange = 3;
			object.weightRange = 1;
			object.attribute1 = "resist shock";//p
			object.attribute2 = "restore intelligence";//n
			object.attribute3 = "drain health";//N
			object.attribute4 = "lightning shield";//p
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//60. Scrib jelly
			object = new Object();
			
			object.id = 60;
			object.label = object.id + ". Scrib jelly";
			object.type = "animal";
			object.cost = 10;
			object.weight = 0.1;
			object.rarity = 2; //scribs are somewhat rare
			object.costRange = 4;
			object.weightRange = 5;
			object.attribute1 = "fortify willpower";//p
			object.attribute2 = "cure poison";//p
			object.attribute3 = "cure blight disease";//p
			object.attribute4 = "restore willpower";//n
			object.hasNegative = false;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//61. Scrib jerky
			object = new Object();
			
			object.id = 61;
			object.label = object.id + ". Scrib jerky";
			object.type = "other";
			object.cost = 5;
			object.weight = 0.2;
			object.rarity = 1; //a restricted item
			object.costRange = 4;
			object.weightRange = 5;
			object.attribute1 = "restore stamina";//n
			object.attribute2 = "fortify stamina";//p
			object.attribute3 = "swift swim";//p
			object.attribute4 = "burden";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//62. Scuttle
			object = new Object();
			
			object.id = 62;
			object.label = object.id + ". Scuttle";
			object.type = "other";
			object.cost = 10;
			object.weight = 0.1;
			object.rarity = 1; //a restricted item
			object.costRange = 4;
			object.weightRange = 5;
			object.attribute1 = "restore stamina";//n
			object.attribute2 = "fortify stamina";//n
			object.attribute3 = "telekinesis";//p
			object.attribute4 = "feather";//p
			object.hasNegative = false;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//63. Shalk resin
			object = new Object();
			
			object.id = 63;
			object.label = object.id + ". Shalk resin";
			object.type = "animal";
			object.cost = 50;
			object.weight = 0.1;
			object.rarity = 2; //shalks are somewhat rare
			object.costRange = 3;
			object.weightRange = 5;
			object.attribute1 = "fortify health";//p
			object.attribute2 = "fortify speed";//p
			object.attribute3 = "drain stamina";//N
			object.attribute4 = "drain personality";//N
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//64. Sload soap
			object = new Object();
			
			object.id = 64;
			object.label = object.id + ". Sload soap";
			object.type = "other";
			object.cost = 50;
			object.weight = 0.1;
			object.rarity = 1; //a restricted item
			object.costRange = 3;
			object.weightRange = 5;
			object.attribute1 = "fortify agility";//p
			object.attribute2 = "restore agility";//n
			object.attribute3 = "drain personality";//N
			object.attribute4 = "fire shield";//p
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//65. Spore pod
			object = new Object();
			
			object.id = 65;
			object.label = object.id + ". Spore pod";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.1;
			object.rarity = 2;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "drain strenght";//N
			object.attribute2 = "drain stamina";//N
			object.attribute3 = "detect key";//p
			object.attribute4 = "paralysis";//N
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//66. Stoneflower petals
			object = new Object();
			
			object.id = 66;
			object.label = object.id + ". Stoneflower petals";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.1;
			object.rarity = 4;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "restore strenght";//n
			object.attribute2 = "fortify magika";//p
			object.attribute3 = "fortify personality";//p
			object.attribute4 = "drain luck";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//67. Trama root
			object = new Object();
			
			object.id = 67;
			object.label = object.id + ". Trama root";
			object.type = "plant";
			object.cost = 10;
			object.weight = 0.1;
			object.rarity = 5;
			object.costRange = 4;
			object.weightRange = 5;
			object.attribute1 = "restore willpower";//n
			object.attribute2 = "drain magika";//N
			object.attribute3 = "drain speed";//N
			object.attribute4 = "levitation";//p
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//68. Vampire dust
			object = new Object();
			
			object.id = 68;
			object.label = object.id + ". Vampire dust";
			object.type = "animal";
			object.cost = 500;
			object.weight = 0.1;
			object.rarity = 1; //vampires are very rare and dangerous
			object.costRange = 1;
			object.weightRange = 5;
			object.attribute1 = "fortify health";//p
			object.attribute2 = "fortify strenght";//p
			object.attribute3 = "spell absorbtion";//p
			object.hasNegative = false;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//69. Violet corpinus
			object = new Object();
			
			object.id = 69;
			object.label = object.id + ". Violet corpinus";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.5;
			object.rarity = 4;
			object.costRange = 5;
			object.weightRange = 4;
			object.attribute1 = "drain stamina";//N
			object.attribute2 = "poison";//N
			object.attribute3 = "water walking";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//70. Void salts
			object = new Object();
			
			object.id = 70;
			object.label = object.id + ". Void salts";
			object.type = "animal";
			object.cost = 100;
			object.weight = 0.1;
			object.rarity = 2; //void creatures are rare and dangerous
			object.costRange = 2;
			object.weightRange = 5;
			object.attribute1 = "restore magika";//n
			object.attribute2 = "drain endurance";//N
			object.attribute3 = "spell absorbtion";//p
			object.attribute4 = "paralysis";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//71. Wickwheat
			object = new Object();
			
			object.id = 71;
			object.label = object.id + ". Wickwheat";
			object.type = "plant";
			object.cost = 1;
			object.weight = 0.1;
			object.rarity = 5;
			object.costRange = 5;
			object.weightRange = 5;
			object.attribute1 = "restore health";//n
			object.attribute2 = "fortify willpower";//p
			object.attribute3 = "paralysis";//N
			object.hasNegative = true;
			object.hasNeutral = true;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
			//72. Willow anther
			object = new Object();
			
			object.id = 72;
			object.label = object.id + ". Willow anther";
			object.type = "plant";
			object.cost = 10;
			object.weight = 0.1;
			object.rarity = 3;
			object.costRange = 4;
			object.weightRange = 5;
			object.attribute1 = "cure common disease";//p
			object.attribute2 = "cure paralysis";//p
			object.attribute3 = "drain personality";//N
			object.attribute4 = "frost shield";//p
			object.hasNegative = true;
			object.hasNeutral = false;
			object.hasPositive = true;
			
			reagents.addItem(object);
			
		}
		
	}
	
}