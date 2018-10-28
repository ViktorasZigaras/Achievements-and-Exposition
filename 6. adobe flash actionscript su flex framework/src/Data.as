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
			reagent = new Reagent();
			
			reagent.id = 2;
			reagent.name = "Ampoule pod";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 2;
			reagent.weight = 0.1;
			reagent.rarity = 3;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("drain willpower");//N
			reagent.attributes.push("detect animal");//p
			reagent.attributes.push("water walking");//p
			reagent.attributes.push("paralysis");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//3. Ash salts
			reagent = new Reagent();
			
			reagent.id = 3;
			reagent.name = "Ash salts";
			reagent.label = reagent.id + ". " + reagent.name; 
			reagent.type = "animal";
			reagent.cost = 25;
			reagent.weight = 0.1;
			reagent.rarity = 2; //ash creatures, dangerous
			reagent.costRange = 3;
			reagent.weightRange = 5;
			reagent.attributes.push("cure blight disease");//p
			reagent.attributes.push("drain agility");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//4. Ash yam
			reagent = new Reagent();
			
			reagent.id = 4;
			reagent.name = "Ash yam";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.5;
			reagent.rarity = 2;
			reagent.costRange = 5;
			reagent.weightRange = 4;
			reagent.attributes.push("fortify intelligence");//p
			reagent.attributes.push("fortify strenght");//p
			reagent.attributes.push("resist common disease");//p
			reagent.attributes.push("detect key");//p
			reagent.hasNegative = false;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//5. Bittergreen petals
			reagent = new Reagent();
			
			reagent.id = 5;
			reagent.name = "Bittergreen petals";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 5;
			reagent.weight = 0.1;
			reagent.rarity = 2;
			reagent.costRange = 4;
			reagent.weightRange = 5;
			reagent.attributes.push("restore intelligence");//n
			reagent.attributes.push("drain endurance");//N
			reagent.attributes.push("drain magika");//N
			reagent.attributes.push("invisibility");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//6. Black anther
			reagent = new Reagent();
			
			reagent.id = 6;
			reagent.name = "Black anther";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 2;
			reagent.weight = 0.1;
			reagent.rarity = 3;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("resist fire");//p
			reagent.attributes.push("drain agility");//N
			reagent.attributes.push("drain endurance");//N
			reagent.attributes.push("light");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//7. Black lichen
			reagent = new Reagent();
			
			reagent.id = 7;
			reagent.name = "Black lichen";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 2;
			reagent.weight = 0.1;
			reagent.rarity = 1;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("resist frost");//p
			reagent.attributes.push("cure poison");//p
			reagent.attributes.push("drain strenght");//N
			reagent.attributes.push("drain speed");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//8. Bloat
			reagent = new Reagent();
			
			reagent.id = 8;
			reagent.name = "Bloat";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "other";
			reagent.cost = 5;
			reagent.weight = 0.1;
			reagent.rarity = 1; //a restricted item
			reagent.costRange = 4;
			reagent.weightRange = 5;
			reagent.attributes.push("fortify intelligence");//p
			reagent.attributes.push("fortify willpower");//p
			reagent.attributes.push("drain magika");//N
			reagent.attributes.push("detect animal");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//9. Bonemeal
			reagent = new Reagent();
			
			reagent.id = 9;
			reagent.name = "Bonemeal";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 2;
			reagent.weight = 0.2;
			reagent.rarity = 4; //undead are plentiful
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("restore agility");//n
			reagent.attributes.push("drain stamina");//N
			reagent.attributes.push("drain personality");//N
			reagent.attributes.push("telekinesis");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//10. Bread
			reagent = new Reagent();
			
			reagent.id = 10;
			reagent.name = "Bread";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "other";
			reagent.cost = 1;
			reagent.weight = 0.2;
			reagent.rarity = 1; //a restricted item
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("restore stamina");//n
			reagent.hasNegative = false;
			reagent.hasNeutral = true;
			reagent.hasPositive = false;
			
			reagents.addItem(reagent);
			
			//11. Bungler's bane
			reagent = new Reagent();
			
			reagent.id = 11;
			reagent.name = "Bungler's bane";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.5;
			reagent.rarity = 3;
			reagent.costRange = 5;
			reagent.weightRange = 4;
			reagent.attributes.push("drain speed");//N
			reagent.attributes.push("drain endurance");//N
			reagent.attributes.push("drain strenght");//N
			reagent.attributes.push("dispell");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//12. Chockeweed
			reagent = new Reagent();
			
			reagent.id = 12;
			reagent.name = "Chockeweed";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.1;
			reagent.rarity = 4;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("restore stamina");//n
			reagent.attributes.push("cure common disease");//p
			reagent.attributes.push("drain luck");//N
			reagent.attributes.push("drain willpower");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//13. Coda flower
			reagent = new Reagent();
			
			reagent.id = 13;
			reagent.name = "Coda flower";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 23;
			reagent.weight = 0.1;
			reagent.rarity = 2;
			reagent.costRange = 3;
			reagent.weightRange = 5;
			reagent.attributes.push("drain personality");//N
			reagent.attributes.push("drain intelligence");//N
			reagent.attributes.push("drain health");//N
			reagent.attributes.push("levitation");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//14. Comberry
			reagent = new Reagent();
			
			reagent.id = 14;
			reagent.name = "Comberry";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 2;
			reagent.weight = 0.1;
			reagent.rarity = 2;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("restore magika");//N
			reagent.attributes.push("drain stamina");//N
			reagent.attributes.push("fire shield");//p
			reagent.attributes.push("reflect");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//15. Corckbulb root
			reagent = new Reagent();
			
			reagent.id = 15;
			reagent.name = "Corckbulb root";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 5;
			reagent.weight = 0.1;
			reagent.rarity = 3;
			reagent.costRange = 4;
			reagent.weightRange = 5;
			reagent.attributes.push("cure paralysis");//p
			reagent.attributes.push("restore health");//n
			reagent.attributes.push("fortify luck");//p
			reagent.attributes.push("lightning shield");//p
			reagent.hasNegative = false;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//16. Corpus weepings
			reagent = new Reagent();
			
			reagent.id = 16;
			reagent.name = "Corpus weepings";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 50;
			reagent.weight = 0.1;
			reagent.rarity = 2; //found on somewhat rare corpus walkers
			reagent.costRange = 3;
			reagent.weightRange = 5;
			reagent.attributes.push("restore health");//n
			reagent.attributes.push("fortify luck");//p
			reagent.attributes.push("drain stamina");//N
			reagent.attributes.push("drain willpower");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//17. Crab meat
			reagent = new Reagent();
			
			reagent.id = 17;
			reagent.name = "Crab meat";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 1;
			reagent.weight = 0.5;
			reagent.rarity = 4; //crabs are somewhat abudant
			reagent.costRange = 5;
			reagent.weightRange = 4;
			reagent.attributes.push("restore stamina");//n
			reagent.attributes.push("restore luck");//n
			reagent.attributes.push("resist shock");//p
			reagent.attributes.push("lightning shield");//p
			reagent.hasNegative = false;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//18. Daedra skin
			reagent = new Reagent();
			
			reagent.id = 18;
			reagent.name = "Daedra skin";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 200;
			reagent.weight = 0.2;
			reagent.rarity = 1; //deadras are rare and dangerous
			reagent.costRange = 1;
			reagent.weightRange = 5;
			reagent.attributes.push("fortify strenght");//p
			reagent.attributes.push("cure common disease");//p
			reagent.attributes.push("swift swim");//p
			reagent.attributes.push("paralysis");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//19. Daedra's heart
			reagent = new Reagent();
			
			reagent.id = 19;
			reagent.name = "Daedra's heart";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 200;
			reagent.weight = 1;
			reagent.rarity = 2; //deadras are rare and dangerous
			reagent.costRange = 1;
			reagent.weightRange = 3;
			reagent.attributes.push("restore magika");//n
			reagent.attributes.push("fortify endurance");//p
			reagent.attributes.push("drain agility");//N
			reagent.attributes.push("night eye");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//20. Diamond
			reagent = new Reagent();
			
			reagent.id = 20;
			reagent.name = "Diamond";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 250;
			reagent.weight = 0.2;
			reagent.rarity = 1;
			reagent.costRange = 1;
			reagent.weightRange = 5;
			reagent.attributes.push("drain agility");//N
			reagent.attributes.push("reflect");//p
			reagent.attributes.push("detect key");//p
			reagent.attributes.push("invisibility");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//21. Dreugh wax
			reagent = new Reagent();
			
			reagent.id = 21;
			reagent.name = "Dreugh wax";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 100;
			reagent.weight = 0.2;
			reagent.rarity = 3; //dreugh are somewhat abudant
			reagent.costRange = 2;
			reagent.weightRange = 5;
			reagent.attributes.push("fortify strenght");//p
			reagent.attributes.push("restore strenght");//n
			reagent.attributes.push("drain luck");//N
			reagent.attributes.push("drain willpower");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//22. Ectoplasm
			reagent = new Reagent();
			
			reagent.id = 22;
			reagent.name = "Ectoplasm";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 10;
			reagent.weight = 0.1;
			reagent.rarity = 2; //ghosts are somewhat rare
			reagent.costRange = 4;
			reagent.weightRange = 5;
			reagent.attributes.push("fortify agility");//p
			reagent.attributes.push("drain strenght");//N
			reagent.attributes.push("drain health");//N
			reagent.attributes.push("detect animal");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//23. Emerald
			reagent = new Reagent();
			
			reagent.id = 23;
			reagent.name = "Emerald";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "other";
			reagent.cost = 150;
			reagent.weight = 0.2;
			reagent.rarity = 1; //a restricted item
			reagent.costRange = 1;
			reagent.weightRange = 5;
			reagent.attributes.push("fortify magika");//p
			reagent.attributes.push("restore health");//n
			reagent.attributes.push("drain agility");//N
			reagent.attributes.push("drain endurance");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//24. Fire petal
			reagent = new Reagent();
			
			reagent.id = 24;
			reagent.name = "Fire petal";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 2;
			reagent.weight = 0.1;
			reagent.rarity = 3;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("resist fire");//p
			reagent.attributes.push("drain health");//N
			reagent.attributes.push("spell absorbtion");//p
			reagent.attributes.push("paralysis");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//25. Fire salts
			reagent = new Reagent();
			
			reagent.id = 25;
			reagent.name = "Fire salts";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 100;
			reagent.weight = 0.1;
			reagent.rarity = 2;
			reagent.costRange = 2; //atronachs are somewhat rare
			reagent.weightRange = 5;
			reagent.attributes.push("fortify agility");//p
			reagent.attributes.push("resist frost");//p
			reagent.attributes.push("drain health");//N
			reagent.attributes.push("fire shield");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//26. Frost salts
			reagent = new Reagent();
			
			reagent.id = 26;
			reagent.name = "Frost salts";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 75;
			reagent.weight = 0.1;
			reagent.rarity = 2; //atronachs are somewhat rare
			reagent.costRange = 2;
			reagent.weightRange = 5;
			reagent.attributes.push("restore magika");//n
			reagent.attributes.push("resist fire");//p
			reagent.attributes.push("drain speed");//N
			reagent.attributes.push("frost shield");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//27. Ghoul heart
			reagent = new Reagent();
			
			reagent.id = 27;
			reagent.name = "Ghoul heart";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "other";
			reagent.cost = 150;
			reagent.weight = 0.5;
			reagent.rarity = 1; //a restricted item
			reagent.costRange = 1;
			reagent.weightRange = 4;
			reagent.attributes.push("cure poison");//p
			reagent.attributes.push("paralysis");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//28. Gold kanet
			reagent = new Reagent();
			
			reagent.id = 28;
			reagent.name = "Gold kanet";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 5;
			reagent.weight = 0.1;
			reagent.rarity = 3;
			reagent.costRange = 4;
			reagent.weightRange = 5;
			reagent.attributes.push("restore strenght");//n
			reagent.attributes.push("drain health");//N
			reagent.attributes.push("drain luck");//N
			reagent.attributes.push("burden");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = false;
			
			reagents.addItem(reagent);
			
			//29. Gravedust
			reagent = new Reagent();
			
			reagent.id = 29;
			reagent.name = "Gravedust";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "other";
			reagent.cost = 1;
			reagent.weight = 0.1;
			reagent.rarity = 1; //a restricted item
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("cure common disease");//p
			reagent.attributes.push("restore endurance");//n
			reagent.attributes.push("drain intelligence");//N
			reagent.attributes.push("drain magika");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//30. Green lichen
			reagent = new Reagent();
			
			reagent.id = 30;
			reagent.name = "Green lichen";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.1;
			reagent.rarity = 1;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("fortify personality");//p
			reagent.attributes.push("cure common disease");//p
			reagent.attributes.push("drain strenght");//N
			reagent.attributes.push("drain health");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//31. Guar hide
			reagent = new Reagent();
			
			reagent.id = 31;
			reagent.name = "Guar hide";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 5;
			reagent.weight = 1;
			reagent.rarity = 2; //guars are somewhat rare
			reagent.costRange = 4;
			reagent.weightRange = 3;
			reagent.attributes.push("fortify endurance");//p
			reagent.attributes.push("fortify luck");//p
			reagent.attributes.push("restore personality");//n
			reagent.attributes.push("drain stamina");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//32. Hack-lo leaf
			reagent = new Reagent();
			
			reagent.id = 32;
			reagent.name = "Hack-lo leaf";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 30;
			reagent.weight = 0.1;
			reagent.rarity = 4;
			reagent.costRange = 3;
			reagent.weightRange = 5;
			reagent.attributes.push("restore stamina");//n
			reagent.attributes.push("restore luck");//n
			reagent.attributes.push("water breathing");//p
			reagent.attributes.push("paralysis");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//33. Heather
			reagent = new Reagent();
			
			reagent.id = 33;
			reagent.name = "Heather";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.1;
			reagent.rarity = 3;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("restore personality");//n
			reagent.attributes.push("drain speed");//N
			reagent.attributes.push("drain personality");//N
			reagent.attributes.push("feather");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//34. Hound meat
			reagent = new Reagent();
			
			reagent.id = 34;
			reagent.name = "Hound meat";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 2;
			reagent.weight = 1;
			reagent.rarity = 4; //hounds are somewhat abudant
			reagent.costRange = 5;
			reagent.weightRange = 3;
			reagent.attributes.push("restore stamina");//n
			reagent.attributes.push("fortify stamina");//p
			reagent.attributes.push("reflect");//p
			reagent.attributes.push("detect enchantment");//p
			reagent.hasNegative = false;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//35. Hypha facia
			reagent = new Reagent();
			
			reagent.id = 35;
			reagent.name = "Hypha facia";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.1;
			reagent.rarity = 3;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("drain luck");//N
			reagent.attributes.push("drain agility");//N
			reagent.attributes.push("drain stamina");//N
			reagent.attributes.push("detect enchantment");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//36. Kagouti hide
			reagent = new Reagent();
			
			reagent.id = 36;
			reagent.name = "Kagouti hide";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 2;
			reagent.weight = 1;
			reagent.rarity = 2; //kagoutis are somewhat rare
			reagent.costRange = 5;
			reagent.weightRange = 3;
			reagent.attributes.push("fortify speed");//p
			reagent.attributes.push("resist common disease");//p
			reagent.attributes.push("drain stamina");//N
			reagent.attributes.push("night eye");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//37. Kresh fiber
			reagent = new Reagent();
			
			reagent.id = 37;
			reagent.name = "Kresh fiber";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.1;
			reagent.rarity = 5;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("restore luck");//n
			reagent.attributes.push("fortify personality");//p
			reagent.attributes.push("drain magika");//N
			reagent.attributes.push("drain speed");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//38. Kwama cuttle
			reagent = new Reagent();
			
			reagent.id = 38;
			reagent.name = "Kwama cuttle";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 2;
			reagent.weight = 0.1;
			reagent.rarity = 3; //kwamas are somewhat abudant
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("resist poison");//p
			reagent.attributes.push("drain stamina");//N
			reagent.attributes.push("water walking");//p
			reagent.attributes.push("water breathing");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//39. Kwama egg, large
			reagent = new Reagent();
			
			reagent.id = 39;
			reagent.name = " Kwama egg, large";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 2;
			reagent.weight = 2;
			reagent.rarity = 5;
			reagent.costRange = 5;
			reagent.weightRange = 2;
			reagent.attributes.push("restore stamina");//n
			reagent.attributes.push("fortify health");//p
			reagent.attributes.push("frost shield");//p
			reagent.attributes.push("paralysis");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//40. Kwama egg, small
			reagent = new Reagent();
			
			reagent.id = 40;
			reagent.name = "Kwama egg, small";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 1;
			reagent.weight = 0.5;
			reagent.rarity = 3; //kwamas are somewhat abudant
			reagent.costRange = 5;
			reagent.weightRange = 4;
			reagent.attributes.push("restore stamina");//n
			reagent.hasNegative = false;
			reagent.hasNeutral = true;
			reagent.hasPositive = false;
			
			reagents.addItem(reagent);
			
			//41. Luminous russula
			reagent = new Reagent();
			
			reagent.id = 41;
			reagent.name = "Luminous russula";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.2;
			reagent.rarity = 4;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("drain stamina");//N
			reagent.attributes.push("poison");//N
			reagent.attributes.push("water breathing");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//42. Marshmerrow
			reagent = new Reagent();
			
			reagent.id = 42;
			reagent.name = "Marshmerrow";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.1;
			reagent.rarity = 5;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("restore health");//n
			reagent.attributes.push("drain willpower");//N
			reagent.attributes.push("drain stamina");//N
			reagent.attributes.push("detect enchantment");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//43. Moon sugar
			reagent = new Reagent();
			
			reagent.id = 43;
			reagent.name = "Moon sugar";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "other";
			reagent.cost = 50;
			reagent.weight = 0.1;
			reagent.rarity = 1; //a restricted item
			reagent.costRange = 3;
			reagent.weightRange = 5;
			reagent.attributes.push("fortify speed");//p
			reagent.attributes.push("drain endurance");//N
			reagent.attributes.push("drain luck");//N
			reagent.attributes.push("dispell");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//44. Muck
			reagent = new Reagent();
			
			reagent.id = 44;
			reagent.name = "Muck";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.1;
			reagent.rarity = 4;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("cure common disease");//p
			reagent.attributes.push("drain intelligence");//N
			reagent.attributes.push("drain personality");//N
			reagent.attributes.push("detect key");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//45. Netch lether
			reagent = new Reagent();
			
			reagent.id = 45;
			reagent.name = "Netch lether";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 1;
			reagent.weight = 1;
			reagent.rarity = 2; //netch are somewhat rare
			reagent.costRange = 5;
			reagent.weightRange = 3;
			reagent.attributes.push("fortify endurance");//p
			reagent.attributes.push("fortify intelligence");//p
			reagent.attributes.push("cure paralysis");//p
			reagent.attributes.push("drain personality");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//46. Pearl
			reagent = new Reagent();
			
			reagent.id = 46;
			reagent.name = "Pearl";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 100;
			reagent.weight = 0.2;
			reagent.rarity = 5;
			reagent.costRange = 2;
			reagent.weightRange = 5;
			reagent.attributes.push("resist common disease");//p
			reagent.attributes.push("drain agility");//N
			reagent.attributes.push("dispell");//p
			reagent.attributes.push("water breathing");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//47. Racer plumes
			reagent = new Reagent();
			
			reagent.id = 47;
			reagent.name = "Racer plumes";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 20;
			reagent.weight = 0.1;
			reagent.rarity = 5; //racers are very common
			reagent.costRange = 3;
			reagent.weightRange = 5;
			reagent.attributes.push("drain willpower");//N
			reagent.attributes.push("levitation");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//48. Rat meat
			reagent = new Reagent();
			
			reagent.id = 48;
			reagent.name = "Rat meat";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 1;
			reagent.weight = 1;
			reagent.rarity = 4; //rats are quite common
			reagent.costRange = 5;
			reagent.weightRange = 3;
			reagent.attributes.push("cure poison");//p
			reagent.attributes.push("resist poison");//p
			reagent.attributes.push("drain magika");//N
			reagent.attributes.push("paralysis");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//49. Raw ebony
			reagent = new Reagent();
			
			reagent.id = 49;
			reagent.name = "Raw ebony";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 200;
			reagent.weight = 10;
			reagent.rarity = 2;
			reagent.costRange = 1;
			reagent.weightRange = 1;
			reagent.attributes.push("cure poison");//p
			reagent.attributes.push("restore speed");//n
			reagent.attributes.push("drain agility");//N
			reagent.attributes.push("frost shield");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//50. Raw glass
			reagent = new Reagent();
			
			reagent.id = 50;
			reagent.name = "Raw glass";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 200;
			reagent.weight = 2;
			reagent.rarity = 2;
			reagent.costRange = 1;
			reagent.weightRange = 2;
			reagent.attributes.push("drain intelligence");//N
			reagent.attributes.push("drain strenght");//N
			reagent.attributes.push("drain speed");//N
			reagent.attributes.push("fire shield");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//51. Red lichen
			reagent = new Reagent();
			
			reagent.id = 51;
			reagent.name = "Red lichen";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 25;
			reagent.weight = 0.1;
			reagent.rarity = 1;
			reagent.costRange = 3;
			reagent.weightRange = 5;
			reagent.attributes.push("cure common disease");//p
			reagent.attributes.push("drain speed");//N
			reagent.attributes.push("drain magika");//N
			reagent.attributes.push("light");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//52. Resin
			reagent = new Reagent();
			
			reagent.id = 52;
			reagent.name = "Resin";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "other";
			reagent.cost = 10;
			reagent.weight = 0.1;
			reagent.rarity = 1; //a restricted item
			reagent.costRange = 4;
			reagent.weightRange = 5;
			reagent.attributes.push("restore health");//n
			reagent.attributes.push("restore speed");//n
			reagent.attributes.push("resist common disease");//p
			reagent.attributes.push("burden");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//53. Roobrush
			reagent = new Reagent();
			
			reagent.id = 53;
			reagent.name = "Roobrush";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.1;
			reagent.rarity = 2;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("fortify agility");//p
			reagent.attributes.push("cure poison");//p
			reagent.attributes.push("drain willpower");//N
			reagent.attributes.push("drain health");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//54. Ruby
			reagent = new Reagent();
			
			reagent.id = 54;
			reagent.name = "Ruby";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "other";
			reagent.cost = 200;
			reagent.weight = 0.2;
			reagent.rarity = 3; //a restricted item
			reagent.costRange = 1; 
			reagent.weightRange = 5;
			reagent.attributes.push("restore intelligence");//n
			reagent.attributes.push("drain health");//N
			reagent.attributes.push("drain agility");//N
			reagent.attributes.push("feather");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//55. Saltrice
			reagent = new Reagent();
			
			reagent.id = 55;
			reagent.name = "Saltrice";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.1;
			reagent.rarity = 2;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("restore stamina");//n
			reagent.attributes.push("fortify magika");//p
			reagent.attributes.push("restore health");//n
			reagent.attributes.push("drain strenght");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//56. Scales
			reagent = new Reagent();
			
			reagent.id = 56;
			reagent.name = "Scales";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 2;
			reagent.weight = 0.2;
			reagent.rarity = 5; //slaughterfish are very common
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("restore endurance");//n
			reagent.attributes.push("drain personality");//N
			reagent.attributes.push("water walking");//p
			reagent.attributes.push("swift swim");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//57. Scamp skin
			reagent = new Reagent();
			
			reagent.id = 57;
			reagent.name = "Scamp skin";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 10;
			reagent.weight = 0.1;
			reagent.rarity = 2; //scamps are somewhat rare
			reagent.costRange = 4;
			reagent.weightRange = 5;
			reagent.attributes.push("cure paralysis");//p
			reagent.attributes.push("restore personality");//n
			reagent.attributes.push("restore strenght");//n
			reagent.attributes.push("drain magika");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//58. Scatchecraw
			reagent = new Reagent();
			
			reagent.id = 58;
			reagent.name = "Scatchecraw";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 2;
			reagent.weight = 0.1;
			reagent.rarity = 2;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("cure poison");//p
			reagent.attributes.push("restore willpower");//n
			reagent.attributes.push("drain strenght");//N
			reagent.attributes.push("drain health");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//59. Scrap metal
			reagent = new Reagent();
			
			reagent.id = 59;
			reagent.name = "Scrap metal";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 20;
			reagent.weight = 10;
			reagent.rarity = 2; //dwemer ruins and machines are somewhat rare
			reagent.costRange = 3;
			reagent.weightRange = 1;
			reagent.attributes.push("resist shock");//p
			reagent.attributes.push("restore intelligence");//n
			reagent.attributes.push("drain health");//N
			reagent.attributes.push("lightning shield");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//60. Scrib jelly
			reagent = new Reagent();
			
			reagent.id = 60;
			reagent.name = "Scrib jelly";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 10;
			reagent.weight = 0.1;
			reagent.rarity = 2; //scribs are somewhat rare
			reagent.costRange = 4;
			reagent.weightRange = 5;
			reagent.attributes.push("fortify willpower");//p
			reagent.attributes.push("cure poison");//p
			reagent.attributes.push("cure blight disease");//p
			reagent.attributes.push("restore willpower");//n
			reagent.hasNegative = false;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//61. Scrib jerky
			reagent = new Reagent();
			
			reagent.id = 61;
			reagent.name = "Scrib jerky";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "other";
			reagent.cost = 5;
			reagent.weight = 0.2;
			reagent.rarity = 1; //a restricted item
			reagent.costRange = 4;
			reagent.weightRange = 5;
			reagent.attributes.push("restore stamina");//n
			reagent.attributes.push("fortify stamina");//p
			reagent.attributes.push("swift swim");//p
			reagent.attributes.push("burden");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//62. Scuttle
			reagent = new Reagent();
			
			reagent.id = 62;
			reagent.name = "Scuttle";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "other";
			reagent.cost = 10;
			reagent.weight = 0.1;
			reagent.rarity = 1; //a restricted item
			reagent.costRange = 4;
			reagent.weightRange = 5;
			reagent.attributes.push("restore stamina");//n
			reagent.attributes.push("fortify stamina");//n
			reagent.attributes.push("telekinesis");//p
			reagent.attributes.push("feather");//p
			reagent.hasNegative = false;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//63. Shalk resin
			reagent = new Reagent();
			
			reagent.id = 63;
			reagent.name = "Shalk resin";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 50;
			reagent.weight = 0.1;
			reagent.rarity = 2; //shalks are somewhat rare
			reagent.costRange = 3;
			reagent.weightRange = 5;
			reagent.attributes.push("fortify health");//p
			reagent.attributes.push("fortify speed");//p
			reagent.attributes.push("drain stamina");//N
			reagent.attributes.push("drain personality");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//64. Sload soap
			reagent = new Reagent();
			
			reagent.id = 64;
			reagent.name = "Sload soap";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "other";
			reagent.cost = 50;
			reagent.weight = 0.1;
			reagent.rarity = 1; //a restricted item
			reagent.costRange = 3;
			reagent.weightRange = 5;
			reagent.attributes.push("fortify agility");//p
			reagent.attributes.push("restore agility");//n
			reagent.attributes.push("drain personality");//N
			reagent.attributes.push("fire shield");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//65. Spore pod
			reagent = new Reagent();
			
			reagent.id = 65;
			reagent.name = "Spore pod";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.1;
			reagent.rarity = 2;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("drain strenght");//N
			reagent.attributes.push("drain stamina");//N
			reagent.attributes.push("detect key");//p
			reagent.attributes.push("paralysis");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//66. Stoneflower petals
			reagent = new Reagent();
			
			reagent.id = 66;
			reagent.name = "Stoneflower petals";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.1;
			reagent.rarity = 4;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("restore strenght");//n
			reagent.attributes.push("fortify magika");//p
			reagent.attributes.push("fortify personality");//p
			reagent.attributes.push("drain luck");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//67. Trama root
			reagent = new Reagent();
			
			reagent.id = 67;
			reagent.name = "Trama root";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 10;
			reagent.weight = 0.1;
			reagent.rarity = 5;
			reagent.costRange = 4;
			reagent.weightRange = 5;
			reagent.attributes.push("restore willpower");//n
			reagent.attributes.push("drain magika");//N
			reagent.attributes.push("drain speed");//N
			reagent.attributes.push("levitation");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//68. Vampire dust
			reagent = new Reagent();
			
			reagent.id = 68;
			reagent.name = "Vampire dust";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 500;
			reagent.weight = 0.1;
			reagent.rarity = 1; //vampires are very rare and dangerous
			reagent.costRange = 1;
			reagent.weightRange = 5;
			reagent.attributes.push("fortify health");//p
			reagent.attributes.push("fortify strenght");//p
			reagent.attributes.push("spell absorbtion");//p
			reagent.hasNegative = false;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//69. Violet corpinus
			reagent = new Reagent();
			
			reagent.id = 69;
			reagent.name = "Violet corpinus";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.5;
			reagent.rarity = 4;
			reagent.costRange = 5;
			reagent.weightRange = 4;
			reagent.attributes.push("drain stamina");//N
			reagent.attributes.push("poison");//N
			reagent.attributes.push("water walking");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//70. Void salts
			reagent = new Reagent();
			
			reagent.id = 70;
			reagent.name = "Void salts";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "animal";
			reagent.cost = 100;
			reagent.weight = 0.1;
			reagent.rarity = 2; //void creatures are rare and dangerous
			reagent.costRange = 2;
			reagent.weightRange = 5;
			reagent.attributes.push("restore magika");//n
			reagent.attributes.push("drain endurance");//N
			reagent.attributes.push("spell absorbtion");//p
			reagent.attributes.push("paralysis");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//71. Wickwheat
			reagent = new Reagent();
			
			reagent.id = 71;
			reagent.name = "Wickwheat";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 1;
			reagent.weight = 0.1;
			reagent.rarity = 5;
			reagent.costRange = 5;
			reagent.weightRange = 5;
			reagent.attributes.push("restore health");//n
			reagent.attributes.push("fortify willpower");//p
			reagent.attributes.push("paralysis");//N
			reagent.hasNegative = true;
			reagent.hasNeutral = true;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
			//72. Willow anther
			reagent = new Reagent();
			
			reagent.id = 72;
			reagent.name = "Willow anther";
			reagent.label = reagent.id + ". " + reagent.name;
			reagent.type = "plant";
			reagent.cost = 10;
			reagent.weight = 0.1;
			reagent.rarity = 3;
			reagent.costRange = 4;
			reagent.weightRange = 5;
			reagent.attributes.push("cure common disease");//p
			reagent.attributes.push("cure paralysis");//p
			reagent.attributes.push("drain personality");//N
			reagent.attributes.push("frost shield");//p
			reagent.hasNegative = true;
			reagent.hasNeutral = false;
			reagent.hasPositive = true;
			
			reagents.addItem(reagent);
			
		}
		
	}
	
}