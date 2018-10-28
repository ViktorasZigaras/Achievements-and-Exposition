package
{
	
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	import flashx.textLayout.formats.TextAlign;
	import flashx.textLayout.formats.VerticalAlign;
	
	import mx.collections.ArrayCollection;
	import mx.core.UIComponent;
	import mx.messaging.AbstractConsumer;
	
	import spark.components.Button;
	import spark.components.CheckBox;
	import spark.components.ComboBox;
	import spark.components.Label;
	import spark.components.List;

	public class Morrowind extends UIComponent
	{
		
		private var data:Data = null;
		
		private var generalList:List = null;
		private var combination2List:List = null;
		private var combination3List:List = null;
		private var combination4List:List = null;
		private var combination22List:List = null;
		private var list:List = null;
		
		private var array:Array = null;
		
		private var clickReagent:Reagent = null;
		private var reagent:Reagent = null;
		private var parent1:Reagent = null;
		private var parent2:Reagent = null;
		private var parent3:Reagent = null;
		private var parent4:Reagent = null;
		private var parent1a:Reagent = null;
		private var parent2a:Reagent = null;
		private var parent3a:Reagent = null;
		private var parent4a:Reagent = null;
		
		private var bgSprite:Sprite = null;
		private var circle1Sprite:Sprite = null;
		private var circle2Sprite:Sprite = null;
		private var circle3Sprite:Sprite = null;
		private var circle4Sprite:Sprite = null;
		private var circle5Sprite:Sprite = null;
		
		private var title11Label:Label = null;
		private var title12Label:Label = null;
		private var title22Label:Label = null;
		private var title13Label:Label = null;
		private var title23Label:Label = null;
		private var title33Label:Label = null;
		private var title14Label:Label = null;
		private var title24Label:Label = null;
		private var title34Label:Label = null;
		private var title44Label:Label = null;
		private var title15Label:Label = null;
		private var title25Label:Label = null;
		private var title35Label:Label = null;
		private var title45Label:Label = null;
		private var cost1Label:Label = null;
		private var cost2Label:Label = null;
		private var cost3Label:Label = null;
		private var cost4Label:Label = null;
		private var cost5Label:Label = null;
		private var weight1Label:Label = null;
		private var weight2Label:Label = null;
		private var weight3Label:Label = null;
		private var weight4Label:Label = null;
		private var weight5Label:Label = null;
		private var rarity1Label:Label = null;
		private var rarity2Label:Label = null;
		private var rarity3Label:Label = null;
		private var rarity4Label:Label = null;
		private var rarity5Label:Label = null;
		private var att11Label:Label = null;
		private var att21Label:Label = null;
		private var att31Label:Label = null;
		private var att41Label:Label = null;
		private var att12Label:Label = null;
		private var att22Label:Label = null;
		private var att32Label:Label = null;
		private var att42Label:Label = null;
		private var att13Label:Label = null;
		private var att23Label:Label = null;
		private var att33Label:Label = null;
		private var att43Label:Label = null;
		private var att53Label:Label = null;
		private var att63Label:Label = null;
		private var att14Label:Label = null;
		private var att24Label:Label = null;
		private var att34Label:Label = null;
		private var att44Label:Label = null;
		private var att54Label:Label = null;
		private var att64Label:Label = null;
		private var att74Label:Label = null;
		private var att84Label:Label = null;
		private var att15Label:Label = null;
		private var att25Label:Label = null;
		private var att35Label:Label = null;
		private var att45Label:Label = null;
		private var att55Label:Label = null;
		private var att65Label:Label = null;
		private var att75Label:Label = null;
		private var att85Label:Label = null;
		private var min11Label:Label = null;
		private var min21Label:Label = null;
		private var min31Label:Label = null;
		private var max11Label:Label = null;
		private var max21Label:Label = null;
		private var max31Label:Label = null;
		private var min12Label:Label = null;
		private var min22Label:Label = null;
		private var min32Label:Label = null;
		private var max12Label:Label = null;
		private var max22Label:Label = null;
		private var max32Label:Label = null;
		private var min13Label:Label = null;
		private var min23Label:Label = null;
		private var min33Label:Label = null;
		private var max13Label:Label = null;
		private var max23Label:Label = null;
		private var max33Label:Label = null;
		private var min14Label:Label = null;
		private var min24Label:Label = null;
		private var min34Label:Label = null;
		private var max14Label:Label = null;
		private var max24Label:Label = null;
		private var max34Label:Label = null;
		private var min15Label:Label = null;
		private var min25Label:Label = null;
		private var min35Label:Label = null;
		private var max15Label:Label = null;
		private var max25Label:Label = null;
		private var max35Label:Label = null;
		private var contains1Label:Label = null;
		private var contains2Label:Label = null;
		private var contains3Label:Label = null;
		private var contains4Label:Label = null;
		
		private var label:Label = null;
		
		private var i:int;
		private var j:int;
		private var k:int;
		private var l:int;
		private var m:int;
		private var count:int;
		
		private var filter11CheckBox:CheckBox = null;
		private var filter21CheckBox:CheckBox = null;
		private var filter31CheckBox:CheckBox = null;
		private var filter41CheckBox:CheckBox = null;
		private var filter51CheckBox:CheckBox = null;
		private var filter61CheckBox:CheckBox = null;
		private var filter12CheckBox:CheckBox = null;
		private var filter22CheckBox:CheckBox = null;
		private var filter32CheckBox:CheckBox = null;
		private var filter42CheckBox:CheckBox = null;
		private var filter52CheckBox:CheckBox = null;
		private var filter62CheckBox:CheckBox = null;
		private var filter13CheckBox:CheckBox = null;
		private var filter23CheckBox:CheckBox = null;
		private var filter33CheckBox:CheckBox = null;
		private var filter43CheckBox:CheckBox = null;
		private var filter53CheckBox:CheckBox = null;
		private var filter63CheckBox:CheckBox = null;
		private var filter14CheckBox:CheckBox = null;
		private var filter24CheckBox:CheckBox = null;
		private var filter34CheckBox:CheckBox = null;
		private var filter44CheckBox:CheckBox = null;
		private var filter54CheckBox:CheckBox = null;
		private var filter64CheckBox:CheckBox = null;
		private var filter15CheckBox:CheckBox = null;
		private var filter25CheckBox:CheckBox = null;
		private var filter35CheckBox:CheckBox = null;
		private var filter45CheckBox:CheckBox = null;
		private var filter55CheckBox:CheckBox = null;
		private var filter65CheckBox:CheckBox = null;
		private var andOr1CheckBox:CheckBox = null;
		private var andOr2CheckBox:CheckBox = null;
		private var andOr3CheckBox:CheckBox = null;
		private var andOr4CheckBox:CheckBox = null;
		private var andOr5CheckBox:CheckBox = null;
		
		private var filter11ComboBox:ComboBox = null;
		private var filter21ComboBox:ComboBox = null;
		private var filter31ComboBox:ComboBox = null;
		private var filter41ComboBox:ComboBox = null;
		private var filter51ComboBox:ComboBox = null;
		private var filter61ComboBox:ComboBox = null;
		private var filter12ComboBox:ComboBox = null;
		private var filter22ComboBox:ComboBox = null;
		private var filter32ComboBox:ComboBox = null;
		private var filter42ComboBox:ComboBox = null;
		private var filter52ComboBox:ComboBox = null;
		private var filter62ComboBox:ComboBox = null;
		private var filter13ComboBox:ComboBox = null;
		private var filter23ComboBox:ComboBox = null;
		private var filter33ComboBox:ComboBox = null;
		private var filter43ComboBox:ComboBox = null;
		private var filter53ComboBox:ComboBox = null;
		private var filter63ComboBox:ComboBox = null;
		private var filter14ComboBox:ComboBox = null;
		private var filter24ComboBox:ComboBox = null;
		private var filter34ComboBox:ComboBox = null;
		private var filter44ComboBox:ComboBox = null;
		private var filter54ComboBox:ComboBox = null;
		private var filter64ComboBox:ComboBox = null;
		private var filter15ComboBox:ComboBox = null;
		private var filter25ComboBox:ComboBox = null;
		private var filter35ComboBox:ComboBox = null;
		private var filter45ComboBox:ComboBox = null;
		private var filter55ComboBox:ComboBox = null;
		private var filter65ComboBox:ComboBox = null;
		private var contains1ComboBox:ComboBox = null;
		private var contains2ComboBox:ComboBox = null;
		private var contains3ComboBox:ComboBox = null;
		private var contains4ComboBox:ComboBox = null;
		
		private var costArray:Array = new Array(
			{label:"very expensive", data:1},
			{label:"expensive", data:2},
			{label:"average", data:3},
			{label:"cheap", data:4},
			{label:"very cheap", data:5}
		);
		private var weightArray:Array = new Array(
			{label:"very heavy", data:1},
			{label:"heavy", data:2},
			{label:"average", data:3},
			{label:"light", data:4},
			{label:"very light", data:5}
		);
		private var rarityArray:Array = new Array(
			{label:"very rare", data:1},
			{label:"rare", data:2},
			{label:"average", data:3},
			{label:"abudant", data:4},
			{label:"very abudant", data:5}
		);
		private var containsArray:Array = new Array(
			{label:"any", data:"any"},
			{label:"(5)n drain intelligence", data:"drain intelligence"},
			{label:"(9)n drain agility", data:"drain agility"},
			{label:"(13)n drain stamina", data:"drain stamina"},
			{label:"(9)n drain personality", data:"drain personality"},
			{label:"(7)n drain willpower", data:"drain willpower"},
			{label:"(6)n drain luck", data:"drain luck"},
			{label:"(8)n drain strenght", data:"drain strenght"},
			{label:"(11)n drain health", data:"drain health"},
			{label:"(8)n drain speed", data:"drain speed"},
			{label:"(8)n drain magika", data:"drain magika"},
			{label:"(6)n drain endurance", data:"drain endurance"},
			
			{label:"(3)P fortify luck", data:"fortify luck"},
			{label:"(4)P fortify strenght", data:"fortify strenght"},
			{label:"(3)P fortify endurance", data:"fortify endurance"},
			{label:"(4)P fortify agility", data:"fortify agility"},
			{label:"(3)P fortify stamina", data:"fortify stamina"},
			{label:"(3)P fortify speed", data:"fortify speed"},
			{label:"(3)P fortify intelligence", data:"fortify intelligence"},
			{label:"(3)P fortify willpower", data:"fortify willpower"},
			{label:"(3)P fortify health", data:"fortify health"},
			{label:"(3)P fortify magika", data:"fortify magika"},
			{label:"(3)P fortify personality", data:"fortify personality"},
			
			{label:"(3)P lightning shield", data:"lightning shield"},
			{label:"(4)P fire shield", data:"fire shield"},
			{label:"(4)P frost shield", data:"frost shield"},
			
			{label:"(3)P swift swim", data:"swift swim"},
			{label:"(4)P water walking", data:"water walking"},
			{label:"(4)P water breathing", data:"water breathing"},
			{label:"(3)P levitation", data:"levitation"},
			
			{label:"(10)n paralysis", data:"paralysis"},
			{label:"(2)P night eye", data:"night eye"},
			{label:"(2)P invisibility", data:"invisibility"},
			{label:"(2)P light", data:"light"},
			
			{label:"(3)P fortify luck", data:"fortify luck"},
			{label:"(4)P fortify strenght", data:"fortify strenght"},
			{label:"(3)P fortify endurance", data:"fortify endurance"},
			{label:"(4)P fortify agility", data:"fortify agility"},
			{label:"(3)P fortify stamina", data:"fortify stamina"},
			{label:"(3)P fortify speed", data:"fortify speed"},
			{label:"(3)P fortify intelligence", data:"fortify intelligence"},
			{label:"(3)P fortify willpower", data:"fortify willpower"},
			{label:"(3)P fortify health", data:"fortify health"},
			{label:"(3)P fortify magika", data:"fortify magika"},
			{label:"(3)P fortify personality", data:"fortify personality"},
			
			{label:"(2)N restore agility", data:"restore agility"},
			{label:"(7)N restore health", data:"restore health"},
			{label:"(10)N restore stamina", data:"restore stamina"},
			{label:"(3)N restore luck", data:"restore luck"},
			{label:"(4)N restore magika", data:"restore magika"},
			{label:"(4)N restore strenght", data:"restore strenght"},
			{label:"(3)N restore personality", data:"restore personality"},
			{label:"(2)N restore endurance", data:"restore endurance"},
			{label:"(3)N restore intelligence", data:"restore intelligence"},
			{label:"(3)N restore willpower", data:"restore willpower"},
			{label:"(2)N restore speed", data:"restore speed"},
			
			{label:"(4)P detect animal", data:"detect animal"},
			{label:"(3)P telekinesis", data:"telekinesis"},
			{label:"(2)P reflect", data:"reflect"},
			{label:"(3)P detect enchantment", data:"detect enchantment"},
			{label:"(3)P spell absorbtion", data:"spell absorbtion"},
			{label:"(3)P dispell", data:"dispell"},
			{label:"(4)P detect key", data:"detect key"},
			
			{label:"(2)P cure blight disease", data:"cure blight disease"},
			{label:"(7)P cure common disease", data:"cure common disease"},
			{label:"(4)P cure paralysis", data:"cure paralysis"},
			{label:"(6)P cure poison", data:"cure poison"},
			
			{label:"(2)P resist poison", data:"resist poison"},
			{label:"(2)P resist shock", data:"resist shock"},
			{label:"(2)P resist frost", data:"resist frost"},
			{label:"(3)P resist fire", data:"resist fire"},
			{label:"(4)P resist common disease", data:"resist common disease"},
			
			{label:"(3)n burden", data:"burden"},
			{label:"(3)P feather", data:"feather"},
			
			{label:"(2)n poison", data:"poison"}
		);
		
		private var filter1Button:Button = null;
		private var filter2Button:Button = null;
		private var filter3Button:Button = null;
		private var filter4Button:Button = null;
		private var filter5Button:Button = null;
		private var generate1Button:Button = null;
		private var generate2Button:Button = null;
		private var generate3Button:Button = null;
		private var generate4Button:Button = null;
		
		private var filtered1Reagents:ArrayCollection = null;
		private var filtered2Potions:ArrayCollection = null;
		private var filtered3Potions:ArrayCollection = null;
		private var filtered4Potions:ArrayCollection = null;
		private var filtered22Potions:ArrayCollection = null;
		private var potions1:ArrayCollection = null;
		private var potions2:ArrayCollection = null;
		private var potions3:ArrayCollection = null;
		private var potions4:ArrayCollection = null;
		
		private var potion:Potion;
		private var potion2:Potion;
		private var potion3:Potion;
		private var potion4:Potion;
		private var clickPotion:Potion;
		
		private var hasAttribute:Boolean;
		private var potionFormed:Boolean;
		private var uniqueAttribute:Boolean;
		private var unique:Boolean;
		
		private var attribute:String;
		private var attribute1:String;
		private var attribute2:String;
		private var attribute3:String;
		private var attribute4:String;
		private var tempAttribute:String;
		private var typeOfAttribute:String;
		
		public function Morrowind()
		{
			
			setUpScene();
			
		}
		
		private function setUpScene():void
		{
			
			if (bgSprite == null)
			{
				
				bgSprite = new Sprite();
				this.addChild(bgSprite);
				
			}
			else
			{
				
				bgSprite.graphics.clear();
				
			}
			
			bgSprite.graphics.lineStyle(2, 0x000000);
			bgSprite.graphics.beginFill(0xE7EAB4);
			bgSprite.graphics.drawRoundRect(2, 2, 275, 873, 5, 5);
			bgSprite.graphics.endFill();
			
			//
			
			bgSprite.graphics.lineStyle(2, 0x000000);
			bgSprite.graphics.beginFill(0xD3E8E7);
			bgSprite.graphics.drawRoundRect(280, 2, 998, 622, 5, 5);
			bgSprite.graphics.endFill();
			
			//
			
			bgSprite.graphics.lineStyle(2, 0x000000);
			bgSprite.graphics.beginFill(0xE5D5D8);
			bgSprite.graphics.drawRoundRect(280, 627, 998, 248, 5, 5);
			bgSprite.graphics.endFill();
			
			//
			
			bgSprite.graphics.lineStyle(1, 0x000000);
			bgSprite.graphics.beginFill(0xD396AB);
			bgSprite.graphics.drawRoundRect(25, 650, 225, 200, 5, 5);
			bgSprite.graphics.endFill();
			
			//
			
			if (circle1Sprite == null)
			{
				
				circle1Sprite = new Sprite();
				this.addChild(circle1Sprite);
				
			}
			else
			{
				
				circle1Sprite.graphics.clear();
				
			}
			
			//
			
			if (circle2Sprite == null)
			{
				
				circle2Sprite = new Sprite();
				this.addChild(circle2Sprite);
				
			}
			else
			{
				
				circle2Sprite.graphics.clear();
				
			}
			
			//
			
			if (circle3Sprite == null)
			{
				
				circle3Sprite = new Sprite();
				this.addChild(circle3Sprite);
				
			}
			else
			{
				
				circle3Sprite.graphics.clear();
				
			}
			
			//
			
			if (circle4Sprite == null)
			{
				
				circle4Sprite = new Sprite();
				this.addChild(circle4Sprite);
				
			}
			else
			{
				
				circle4Sprite.graphics.clear();
				
			}
			
			//
			
			if (circle5Sprite == null)
			{
				
				circle5Sprite = new Sprite();
				this.addChild(circle5Sprite);
				
			}
			else
			{
				
				circle5Sprite.graphics.clear();
				
			}
			
			//
			
			if (data == null)
			{
				
				data = new Data();
				
				filtered1Reagents = data.reagents;
				
			}
			
			if (generalList == null)
			{
				
				generalList = new List();
				this.addChild(generalList);
				
				generalList.addEventListener(MouseEvent.CLICK, list1ClickHandler);
				
			}
			
			generalList.x = 25;
			generalList.y = 250;
			generalList.width = 225;
			generalList.height = 350;
			generalList.dataProvider = data.reagents;
			
			//
			
			if (combination2List == null)
			{
				
				combination2List = new List();
				this.addChild(combination2List);
				
				combination2List.addEventListener(MouseEvent.CLICK, list2ClickHandler);
				
			}
			
			combination2List.x = generalList.x + generalList.width + 50;
			combination2List.y = generalList.y + 25;
			combination2List.width = generalList.width;
			combination2List.height = generalList.height - 25;
			
			//
			
			if (combination3List == null)
			{
				
				combination3List = new List();
				this.addChild(combination3List);
				
				combination3List.addEventListener(MouseEvent.CLICK, list3ClickHandler);
				
			}
			
			combination3List.x = combination2List.x + combination2List.width + 20;
			combination3List.y = combination2List.y;
			combination3List.width = generalList.width;
			combination3List.height = combination2List.height;
			
			//
			
			if (combination4List == null)
			{
				
				combination4List = new List();
				this.addChild(combination4List);
				
				combination4List.addEventListener(MouseEvent.CLICK, list4ClickHandler);
				
			}
			
			combination4List.x = combination3List.x + combination3List.width + 20;
			combination4List.y = combination2List.y;
			combination4List.width = generalList.width;
			combination4List.height = combination2List.height;
			
			//
			
			if (combination22List == null)
			{
				
				combination22List = new List();
				this.addChild(combination22List);
				
				combination22List.addEventListener(MouseEvent.CLICK, list22ClickHandler);
				
			}
			
			combination22List.x = combination4List.x + combination4List.width + 20;
			combination22List.y = combination2List.y;
			combination22List.width = generalList.width;
			combination22List.height = combination2List.height;
			
			//
			
			bgSprite.graphics.lineStyle(1, 0x000000);
			bgSprite.graphics.beginFill(0xD396AB);
			bgSprite.graphics.drawRoundRect(combination2List.x, 650, combination2List.width, 200, 5, 5);
			bgSprite.graphics.endFill();
			
			//
			
			bgSprite.graphics.lineStyle(1, 0x000000);
			bgSprite.graphics.beginFill(0xD396AB);
			bgSprite.graphics.drawRoundRect(combination3List.x, 650, combination3List.width, 200, 5, 5);
			bgSprite.graphics.endFill();
			
			//
			
			bgSprite.graphics.lineStyle(1, 0x000000);
			bgSprite.graphics.beginFill(0xD396AB);
			bgSprite.graphics.drawRoundRect(combination4List.x, 650, combination4List.width, 200, 5, 5);
			bgSprite.graphics.endFill();
			
			//
			
			bgSprite.graphics.lineStyle(1, 0x000000);
			bgSprite.graphics.beginFill(0xD396AB);
			bgSprite.graphics.drawRoundRect(combination22List.x, 650, combination22List.width, 200, 5, 5);
			bgSprite.graphics.endFill();
			
			//
			
			if (title11Label == null)
			{
				
				title11Label = new Label();
				
				title11Label.text = "";
				//title1Label.setStyle("color", 0x858585);
				//title1Label.setStyle("fontFamily", "Rockwell");
				title11Label.setStyle("fontSize", 14);
				title11Label.setStyle("textAlign", TextAlign.LEFT);
				title11Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				title11Label.setStyle("embedFonts", true);
				title11Label.height = 15;
				title11Label.width = 175;
				title11Label.maxDisplayedLines = 1;
				
				this.addChild(title11Label);
				
				title11Label.x = 70;
				title11Label.y = 655;
				
			}
			
			//
			
			if (cost1Label == null)
			{
				
				cost1Label = new Label();
				
				cost1Label.text = "";
				cost1Label.setStyle("fontSize", 14);
				cost1Label.setStyle("textAlign", TextAlign.LEFT);
				cost1Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				cost1Label.setStyle("embedFonts", true);
				cost1Label.height = 15;
				cost1Label.width = 100;
				cost1Label.maxDisplayedLines = 1;
				
				this.addChild(cost1Label);
				
				cost1Label.x = title11Label.x;
				cost1Label.y = title11Label.y + title11Label.height;
				
			}
			
			//
			
			if (weight1Label == null)
			{
				
				weight1Label = new Label();
				
				weight1Label.text = "";
				weight1Label.setStyle("fontSize", 14);
				weight1Label.setStyle("textAlign", TextAlign.LEFT);
				weight1Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				weight1Label.setStyle("embedFonts", true);
				weight1Label.height = 15;
				weight1Label.width = 100;
				weight1Label.maxDisplayedLines = 1;
				
				this.addChild(weight1Label);
				
				weight1Label.x = cost1Label.x;
				weight1Label.y = cost1Label.y + cost1Label.height;
				
			}
			
			//
			
			if (rarity1Label == null)
			{
				
				rarity1Label = new Label();
				
				rarity1Label.text = "";
				rarity1Label.setStyle("fontSize", 14);
				rarity1Label.setStyle("textAlign", TextAlign.LEFT);
				rarity1Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				rarity1Label.setStyle("embedFonts", true);
				rarity1Label.height = 15;
				rarity1Label.width = 50;
				rarity1Label.maxDisplayedLines = 1;
				
				this.addChild(rarity1Label);
				
				rarity1Label.x = weight1Label.x;
				rarity1Label.y = weight1Label.y + weight1Label.height;
				
			}
			
			//
			
			if (att11Label == null)
			{
				
				att11Label = new Label();
				
				att11Label.text = "";
				att11Label.setStyle("fontSize", 14);
				att11Label.setStyle("textAlign", TextAlign.LEFT);
				att11Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att11Label.setStyle("embedFonts", true);
				att11Label.height = 15;
				att11Label.width = 150;
				att11Label.maxDisplayedLines = 1;
				
				this.addChild(att11Label);
				
				att11Label.x = rarity1Label.x;
				att11Label.y = rarity1Label.y + rarity1Label.height;
				
			}
			
			//
			
			if (att21Label == null)
			{
				
				att21Label = new Label();
				
				att21Label.text = "";
				att21Label.setStyle("fontSize", 14);
				att21Label.setStyle("textAlign", TextAlign.LEFT);
				att21Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att21Label.setStyle("embedFonts", true);
				att21Label.height = 15;
				att21Label.width = 150;
				att21Label.maxDisplayedLines = 1;
				
				this.addChild(att21Label);
				
				att21Label.x = att11Label.x;
				att21Label.y = att11Label.y + att11Label.height;
				
			}
			
			//
			
			if (att31Label == null)
			{
				
				att31Label = new Label();
				
				att31Label.text = "";
				att31Label.setStyle("fontSize", 14);
				att31Label.setStyle("textAlign", TextAlign.LEFT);
				att31Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att31Label.setStyle("embedFonts", true);
				att31Label.height = 15;
				att31Label.width = 150;
				att31Label.maxDisplayedLines = 1;
				
				this.addChild(att31Label);
				
				att31Label.x = att21Label.x;
				att31Label.y = att21Label.y + att21Label.height;
				
			}
			
			//
			
			if (att41Label == null)
			{
				
				att41Label = new Label();
				
				att41Label.text = "";
				att41Label.setStyle("fontSize", 14);
				att41Label.setStyle("textAlign", TextAlign.LEFT);
				att41Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att41Label.setStyle("embedFonts", true);
				att41Label.height = 15;
				att41Label.width = 150;
				att41Label.maxDisplayedLines = 1;
				
				this.addChild(att41Label);
				
				att41Label.x = att31Label.x;
				att41Label.y = att31Label.y + att31Label.height;
				
			}
			
			//
			
			if (title12Label == null)
			{
				
				title12Label = new Label();
				
				title12Label.text = "";
				//title1Label.setStyle("color", 0x858585);
				//title1Label.setStyle("fontFamily", "Rockwell");
				title12Label.setStyle("fontSize", 14);
				title12Label.setStyle("textAlign", TextAlign.LEFT);
				title12Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				title12Label.setStyle("embedFonts", true);
				title12Label.height = 15;
				title12Label.width = 175;
				title12Label.maxDisplayedLines = 1;
				
				this.addChild(title12Label);
				
				title12Label.x = 345;
				title12Label.y = 655;
				
			}
			
			if (title22Label == null)
			{
				
				title22Label = new Label();
				
				title22Label.text = "";
				title22Label.setStyle("fontSize", 14);
				title22Label.setStyle("textAlign", TextAlign.LEFT);
				title22Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				title22Label.setStyle("embedFonts", true);
				title22Label.height = 15;
				title22Label.width = 175;
				title22Label.maxDisplayedLines = 1;
				
				this.addChild(title22Label);
				
				title22Label.x = title12Label.x;
				title22Label.y = title12Label.y + title12Label.height;
				
			}
			
			//
			
			if (cost2Label == null)
			{
				
				cost2Label = new Label();
				
				cost2Label.text = "";
				cost2Label.setStyle("fontSize", 14);
				cost2Label.setStyle("textAlign", TextAlign.LEFT);
				cost2Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				cost2Label.setStyle("embedFonts", true);
				cost2Label.height = 15;
				cost2Label.width = 100;
				cost2Label.maxDisplayedLines = 1;
				
				this.addChild(cost2Label);
				
				cost2Label.x = title22Label.x;
				cost2Label.y = title22Label.y + title22Label.height;
				
			}
			
			//
			
			if (weight2Label == null)
			{
				
				weight2Label = new Label();
				
				weight2Label.text = "";
				weight2Label.setStyle("fontSize", 14);
				weight2Label.setStyle("textAlign", TextAlign.LEFT);
				weight2Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				weight2Label.setStyle("embedFonts", true);
				weight2Label.height = 15;
				weight2Label.width = 100;
				weight2Label.maxDisplayedLines = 1;
				
				this.addChild(weight2Label);
				
				weight2Label.x = cost2Label.x;
				weight2Label.y = cost2Label.y + cost2Label.height;
				
			}
			
			//
			
			if (rarity2Label == null)
			{
				
				rarity2Label = new Label();
				
				rarity2Label.text = "";
				rarity2Label.setStyle("fontSize", 14);
				rarity2Label.setStyle("textAlign", TextAlign.LEFT);
				rarity2Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				rarity2Label.setStyle("embedFonts", true);
				rarity2Label.height = 15;
				rarity2Label.width = 50;
				rarity2Label.maxDisplayedLines = 1;
				
				this.addChild(rarity2Label);
				
				rarity2Label.x = weight2Label.x;
				rarity2Label.y = weight2Label.y + weight2Label.height;
				
			}
			
			//
			
			if (att12Label == null)
			{
				
				att12Label = new Label();
				
				att12Label.text = "";
				att12Label.setStyle("fontSize", 14);
				att12Label.setStyle("textAlign", TextAlign.LEFT);
				att12Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att12Label.setStyle("embedFonts", true);
				att12Label.height = 15;
				att12Label.width = 150;
				att12Label.maxDisplayedLines = 1;
				
				this.addChild(att12Label);
				
				att12Label.x = rarity2Label.x;
				att12Label.y = rarity2Label.y + rarity2Label.height;
				
			}
			
			//
			
			if (att22Label == null)
			{
				
				att22Label = new Label();
				
				att22Label.text = "";
				att22Label.setStyle("fontSize", 14);
				att22Label.setStyle("textAlign", TextAlign.LEFT);
				att22Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att22Label.setStyle("embedFonts", true);
				att22Label.height = 15;
				att22Label.width = 150;
				att22Label.maxDisplayedLines = 1;
				
				this.addChild(att22Label);
				
				att22Label.x = att12Label.x;
				att22Label.y = att12Label.y + att12Label.height;
				
			}
			
			//
			
			if (att32Label == null)
			{
				
				att32Label = new Label();
				
				att32Label.text = "";
				att32Label.setStyle("fontSize", 14);
				att32Label.setStyle("textAlign", TextAlign.LEFT);
				att32Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att32Label.setStyle("embedFonts", true);
				att32Label.height = 15;
				att32Label.width = 150;
				att32Label.maxDisplayedLines = 1;
				
				this.addChild(att32Label);
				
				att32Label.x = att22Label.x;
				att32Label.y = att22Label.y + att22Label.height;
				
			}
			
			//
			
			if (att42Label == null)
			{
				
				att42Label = new Label();
				
				att42Label.text = "";
				att42Label.setStyle("fontSize", 14);
				att42Label.setStyle("textAlign", TextAlign.LEFT);
				att42Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att42Label.setStyle("embedFonts", true);
				att42Label.height = 15;
				att42Label.width = 150;
				att42Label.maxDisplayedLines = 1;
				
				this.addChild(att42Label);
				
				att42Label.x = att32Label.x;
				att42Label.y = att32Label.y + att32Label.height;
				
			}
			
			//
			
			if (title13Label == null)
			{
				
				title13Label = new Label();
				
				title13Label.text = "";
				//title1Label.setStyle("color", 0x858585);
				//title1Label.setStyle("fontFamily", "Rockwell");
				title13Label.setStyle("fontSize", 14);
				title13Label.setStyle("textAlign", TextAlign.LEFT);
				title13Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				title13Label.setStyle("embedFonts", true);
				title13Label.height = 15;
				title13Label.width = 175;
				title13Label.maxDisplayedLines = 1;
				
				this.addChild(title13Label);
				
				title13Label.x = 590;
				title13Label.y = 655;
				
			}
			
			if (title23Label == null)
			{
				
				title23Label = new Label();
				
				title23Label.text = "";
				title23Label.setStyle("fontSize", 14);
				title23Label.setStyle("textAlign", TextAlign.LEFT);
				title23Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				title23Label.setStyle("embedFonts", true);
				title23Label.height = 15;
				title23Label.width = 175;
				title23Label.maxDisplayedLines = 1;
				
				this.addChild(title23Label);
				
				title23Label.x = title13Label.x;
				title23Label.y = title13Label.y + title13Label.height;
				
			}
			
			if (title33Label == null)
			{
				
				title33Label = new Label();
				
				title33Label.text = "";
				title33Label.setStyle("fontSize", 14);
				title33Label.setStyle("textAlign", TextAlign.LEFT);
				title33Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				title33Label.setStyle("embedFonts", true);
				title33Label.height = 15;
				title33Label.width = 175;
				title33Label.maxDisplayedLines = 1;
				
				this.addChild(title33Label);
				
				title33Label.x = title23Label.x;
				title33Label.y = title23Label.y + title23Label.height;
				
			}
			
			//
			
			if (cost3Label == null)
			{
				
				cost3Label = new Label();
				
				cost3Label.text = "";
				cost3Label.setStyle("fontSize", 14);
				cost3Label.setStyle("textAlign", TextAlign.LEFT);
				cost3Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				cost3Label.setStyle("embedFonts", true);
				cost3Label.height = 15;
				cost3Label.width = 100;
				cost3Label.maxDisplayedLines = 1;
				
				this.addChild(cost3Label);
				
				cost3Label.x = title33Label.x;
				cost3Label.y = title33Label.y + title33Label.height;
				
			}
			
			//
			
			if (weight3Label == null)
			{
				
				weight3Label = new Label();
				
				weight3Label.text = "";
				weight3Label.setStyle("fontSize", 14);
				weight3Label.setStyle("textAlign", TextAlign.LEFT);
				weight3Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				weight3Label.setStyle("embedFonts", true);
				weight3Label.height = 15;
				weight3Label.width = 100;
				weight3Label.maxDisplayedLines = 1;
				
				this.addChild(weight3Label);
				
				weight3Label.x = cost3Label.x;
				weight3Label.y = cost3Label.y + cost3Label.height;
				
			}
			
			//
			
			if (rarity3Label == null)
			{
				
				rarity3Label = new Label();
				
				rarity3Label.text = "";
				rarity3Label.setStyle("fontSize", 14);
				rarity3Label.setStyle("textAlign", TextAlign.LEFT);
				rarity3Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				rarity3Label.setStyle("embedFonts", true);
				rarity3Label.height = 15;
				rarity3Label.width = 50;
				rarity3Label.maxDisplayedLines = 1;
				
				this.addChild(rarity3Label);
				
				rarity3Label.x = weight3Label.x;
				rarity3Label.y = weight3Label.y + weight3Label.height;
				
			}
			
			//
			
			if (att13Label == null)
			{
				
				att13Label = new Label();
				
				att13Label.text = "";
				att13Label.setStyle("fontSize", 14);
				att13Label.setStyle("textAlign", TextAlign.LEFT);
				att13Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att13Label.setStyle("embedFonts", true);
				att13Label.height = 15;
				att13Label.width = 150;
				att13Label.maxDisplayedLines = 1;
				
				this.addChild(att13Label);
				
				att13Label.x = rarity3Label.x;
				att13Label.y = rarity3Label.y + rarity3Label.height;
				
			}
			
			//
			
			if (att23Label == null)
			{
				
				att23Label = new Label();
				
				att23Label.text = "";
				att23Label.setStyle("fontSize", 14);
				att23Label.setStyle("textAlign", TextAlign.LEFT);
				att23Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att23Label.setStyle("embedFonts", true);
				att23Label.height = 15;
				att23Label.width = 150;
				att23Label.maxDisplayedLines = 1;
				
				this.addChild(att23Label);
				
				att23Label.x = att13Label.x;
				att23Label.y = att13Label.y + att13Label.height;
				
			}
			
			//
			
			if (att33Label == null)
			{
				
				att33Label = new Label();
				
				att33Label.text = "";
				att33Label.setStyle("fontSize", 14);
				att33Label.setStyle("textAlign", TextAlign.LEFT);
				att33Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att33Label.setStyle("embedFonts", true);
				att33Label.height = 15;
				att33Label.width = 150;
				att33Label.maxDisplayedLines = 1;
				
				this.addChild(att33Label);
				
				att33Label.x = att23Label.x;
				att33Label.y = att23Label.y + att23Label.height;
				
			}
			
			//
			
			if (att43Label == null)
			{
				
				att43Label = new Label();
				
				att43Label.text = "";
				att43Label.setStyle("fontSize", 14);
				att43Label.setStyle("textAlign", TextAlign.LEFT);
				att43Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att43Label.setStyle("embedFonts", true);
				att43Label.height = 15;
				att43Label.width = 150;
				att43Label.maxDisplayedLines = 1;
				
				this.addChild(att43Label);
				
				att43Label.x = att33Label.x;
				att43Label.y = att33Label.y + att33Label.height;
				
			}
			
			//
			
			if (att53Label == null)
			{
				
				att53Label = new Label();
				
				att53Label.text = "";
				att53Label.setStyle("fontSize", 14);
				att53Label.setStyle("textAlign", TextAlign.LEFT);
				att53Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att53Label.setStyle("embedFonts", true);
				att53Label.height = 15;
				att53Label.width = 150;
				att53Label.maxDisplayedLines = 1;
				
				this.addChild(att53Label);
				
				att53Label.x = att43Label.x;
				att53Label.y = att43Label.y + att43Label.height;
				
			}
			
			//
			
			if (att63Label == null)
			{
				
				att63Label = new Label();
				
				att63Label.text = "";
				att63Label.setStyle("fontSize", 14);
				att63Label.setStyle("textAlign", TextAlign.LEFT);
				att63Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att63Label.setStyle("embedFonts", true);
				att63Label.height = 15;
				att63Label.width = 150;
				att63Label.maxDisplayedLines = 1;
				
				this.addChild(att63Label);
				
				att63Label.x = att53Label.x;
				att63Label.y = att53Label.y + att53Label.height;
				
			}
			
			//
			
			if (title14Label == null)
			{
				
				title14Label = new Label();
				
				title14Label.text = "";
				//title1Label.setStyle("color", 0x858585);
				//title1Label.setStyle("fontFamily", "Rockwell");
				title14Label.setStyle("fontSize", 14);
				title14Label.setStyle("textAlign", TextAlign.LEFT);
				title14Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				title14Label.setStyle("embedFonts", true);
				title14Label.height = 15;
				title14Label.width = 175;
				title14Label.maxDisplayedLines = 1;
				
				this.addChild(title14Label);
				
				title14Label.x = 835;
				title14Label.y = 655;
				
			}
			
			if (title24Label == null)
			{
				
				title24Label = new Label();
				
				title24Label.text = "";
				title24Label.setStyle("fontSize", 14);
				title24Label.setStyle("textAlign", TextAlign.LEFT);
				title24Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				title24Label.setStyle("embedFonts", true);
				title24Label.height = 15;
				title24Label.width = 175;
				title24Label.maxDisplayedLines = 1;
				
				this.addChild(title24Label);
				
				title24Label.x = title14Label.x;
				title24Label.y = title14Label.y + title14Label.height;
				
			}
			
			if (title34Label == null)
			{
				
				title34Label = new Label();
				
				title34Label.text = "";
				title34Label.setStyle("fontSize", 14);
				title34Label.setStyle("textAlign", TextAlign.LEFT);
				title34Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				title34Label.setStyle("embedFonts", true);
				title34Label.height = 15;
				title34Label.width = 175;
				title34Label.maxDisplayedLines = 1;
				
				this.addChild(title34Label);
				
				title34Label.x = title24Label.x;
				title34Label.y = title24Label.y + title24Label.height;
				
			}
			
			if (title44Label == null)
			{
				
				title44Label = new Label();
				
				title44Label.text = "";
				title44Label.setStyle("fontSize", 14);
				title44Label.setStyle("textAlign", TextAlign.LEFT);
				title44Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				title44Label.setStyle("embedFonts", true);
				title44Label.height = 15;
				title44Label.width = 175;
				title44Label.maxDisplayedLines = 1;
				
				this.addChild(title44Label);
				
				title44Label.x = title34Label.x;
				title44Label.y = title34Label.y + title34Label.height;
				
			}
			
			//
			
			if (cost4Label == null)
			{
				
				cost4Label = new Label();
				
				cost4Label.text = "";
				cost4Label.setStyle("fontSize", 14);
				cost4Label.setStyle("textAlign", TextAlign.LEFT);
				cost4Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				cost4Label.setStyle("embedFonts", true);
				cost4Label.height = 15;
				cost4Label.width = 100;
				cost4Label.maxDisplayedLines = 1;
				
				this.addChild(cost4Label);
				
				cost4Label.x = title44Label.x;
				cost4Label.y = title44Label.y + title44Label.height;
				
			}
			
			//
			
			if (weight4Label == null)
			{
				
				weight4Label = new Label();
				
				weight4Label.text = "";
				weight4Label.setStyle("fontSize", 14);
				weight4Label.setStyle("textAlign", TextAlign.LEFT);
				weight4Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				weight4Label.setStyle("embedFonts", true);
				weight4Label.height = 15;
				weight4Label.width = 100;
				weight4Label.maxDisplayedLines = 1;
				
				this.addChild(weight4Label);
				
				weight4Label.x = cost4Label.x;
				weight4Label.y = cost4Label.y + cost4Label.height;
				
			}
			
			//
			
			if (rarity4Label == null)
			{
				
				rarity4Label = new Label();
				
				rarity4Label.text = "";
				rarity4Label.setStyle("fontSize", 14);
				rarity4Label.setStyle("textAlign", TextAlign.LEFT);
				rarity4Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				rarity4Label.setStyle("embedFonts", true);
				rarity4Label.height = 15;
				rarity4Label.width = 50;
				rarity4Label.maxDisplayedLines = 1;
				
				this.addChild(rarity4Label);
				
				rarity4Label.x = weight4Label.x;
				rarity4Label.y = weight4Label.y + weight4Label.height;
				
			}
			
			//
			
			if (att14Label == null)
			{
				
				att14Label = new Label();
				
				att14Label.text = "";
				att14Label.setStyle("fontSize", 14);
				att14Label.setStyle("textAlign", TextAlign.LEFT);
				att14Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att14Label.setStyle("embedFonts", true);
				att14Label.height = 15;
				att14Label.width = 150;
				att14Label.maxDisplayedLines = 1;
				
				this.addChild(att14Label);
				
				att14Label.x = rarity4Label.x;
				att14Label.y = rarity4Label.y + rarity4Label.height;
				
			}
			
			//
			
			if (att24Label == null)
			{
				
				att24Label = new Label();
				
				att24Label.text = "";
				att24Label.setStyle("fontSize", 14);
				att24Label.setStyle("textAlign", TextAlign.LEFT);
				att24Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att24Label.setStyle("embedFonts", true);
				att24Label.height = 15;
				att24Label.width = 150;
				att24Label.maxDisplayedLines = 1;
				
				this.addChild(att24Label);
				
				att24Label.x = att14Label.x;
				att24Label.y = att14Label.y + att14Label.height;
				
			}
			
			//
			
			if (att34Label == null)
			{
				
				att34Label = new Label();
				
				att34Label.text = "";
				att34Label.setStyle("fontSize", 14);
				att34Label.setStyle("textAlign", TextAlign.LEFT);
				att34Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att34Label.setStyle("embedFonts", true);
				att34Label.height = 15;
				att34Label.width = 150;
				att34Label.maxDisplayedLines = 1;
				
				this.addChild(att34Label);
				
				att34Label.x = att24Label.x;
				att34Label.y = att24Label.y + att24Label.height;
				
			}
			
			//
			
			if (att44Label == null)
			{
				
				att44Label = new Label();
				
				att44Label.text = "";
				att44Label.setStyle("fontSize", 14);
				att44Label.setStyle("textAlign", TextAlign.LEFT);
				att44Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att44Label.setStyle("embedFonts", true);
				att44Label.height = 15;
				att44Label.width = 150;
				att44Label.maxDisplayedLines = 1;
				
				this.addChild(att44Label);
				
				att44Label.x = att34Label.x;
				att44Label.y = att34Label.y + att34Label.height;
				
			}
			
			//
			
			if (att54Label == null)
			{
				
				att54Label = new Label();
				
				att54Label.text = "";
				att54Label.setStyle("fontSize", 14);
				att54Label.setStyle("textAlign", TextAlign.LEFT);
				att54Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att54Label.setStyle("embedFonts", true);
				att54Label.height = 15;
				att54Label.width = 150;
				att54Label.maxDisplayedLines = 1;
				
				this.addChild(att54Label);
				
				att54Label.x = att44Label.x;
				att54Label.y = att44Label.y + att44Label.height;
				
			}
			
			//
			
			if (att64Label == null)
			{
				
				att64Label = new Label();
				
				att64Label.text = "";
				att64Label.setStyle("fontSize", 14);
				att64Label.setStyle("textAlign", TextAlign.LEFT);
				att64Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att64Label.setStyle("embedFonts", true);
				att64Label.height = 15;
				att64Label.width = 150;
				att64Label.maxDisplayedLines = 1;
				
				this.addChild(att64Label);
				
				att64Label.x = att54Label.x;
				att64Label.y = att54Label.y + att54Label.height;
				
			}
			
			//
			
			if (att74Label == null)
			{
				
				att74Label = new Label();
				
				att74Label.text = "";
				att74Label.setStyle("fontSize", 14);
				att74Label.setStyle("textAlign", TextAlign.LEFT);
				att74Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att74Label.setStyle("embedFonts", true);
				att74Label.height = 15;
				att74Label.width = 150;
				att74Label.maxDisplayedLines = 1;
				
				this.addChild(att74Label);
				
				att74Label.x = att64Label.x;
				att74Label.y = att64Label.y + att64Label.height;
				
			}
			
			//
			
			if (att84Label == null)
			{
				
				att84Label = new Label();
				
				att84Label.text = "";
				att84Label.setStyle("fontSize", 14);
				att84Label.setStyle("textAlign", TextAlign.LEFT);
				att84Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att84Label.setStyle("embedFonts", true);
				att84Label.height = 15;
				att84Label.width = 150;
				att84Label.maxDisplayedLines = 1;
				
				this.addChild(att84Label);
				
				att84Label.x = att74Label.x;
				att84Label.y = att74Label.y + att74Label.height;
				
			}
			
			if (title15Label == null)
			{
				
				title15Label = new Label();
				
				title15Label.text = "";
				//title1Label.setStyle("color", 0x858585);
				//title1Label.setStyle("fontFamily", "Rockwell");
				title15Label.setStyle("fontSize", 14);
				title15Label.setStyle("textAlign", TextAlign.LEFT);
				title15Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				title15Label.setStyle("embedFonts", true);
				title15Label.height = 15;
				title15Label.width = 175;
				title15Label.maxDisplayedLines = 1;
				
				this.addChild(title15Label);
				
				title15Label.x = 1080;
				title15Label.y = 655;
				
			}
			
			if (title25Label == null)
			{
				
				title25Label = new Label();
				
				title25Label.text = "";
				title25Label.setStyle("fontSize", 14);
				title25Label.setStyle("textAlign", TextAlign.LEFT);
				title25Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				title25Label.setStyle("embedFonts", true);
				title25Label.height = 15;
				title25Label.width = 175;
				title25Label.maxDisplayedLines = 1;
				
				this.addChild(title25Label);
				
				title25Label.x = title15Label.x;
				title25Label.y = title15Label.y + title15Label.height;
				
			}
			
			if (title35Label == null)
			{
				
				title35Label = new Label();
				
				title35Label.text = "";
				title35Label.setStyle("fontSize", 14);
				title35Label.setStyle("textAlign", TextAlign.LEFT);
				title35Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				title35Label.setStyle("embedFonts", true);
				title35Label.height = 15;
				title35Label.width = 175;
				title35Label.maxDisplayedLines = 1;
				
				this.addChild(title35Label);
				
				title35Label.x = title25Label.x;
				title35Label.y = title25Label.y + title25Label.height;
				
			}
			
			if (title45Label == null)
			{
				
				title45Label = new Label();
				
				title45Label.text = "";
				title45Label.setStyle("fontSize", 14);
				title45Label.setStyle("textAlign", TextAlign.LEFT);
				title45Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				title45Label.setStyle("embedFonts", true);
				title45Label.height = 15;
				title45Label.width = 175;
				title45Label.maxDisplayedLines = 1;
				
				this.addChild(title45Label);
				
				title45Label.x = title35Label.x;
				title45Label.y = title35Label.y + title35Label.height;
				
			}
			
			//
			
			if (cost5Label == null)
			{
				
				cost5Label = new Label();
				
				cost5Label.text = "";
				cost5Label.setStyle("fontSize", 14);
				cost5Label.setStyle("textAlign", TextAlign.LEFT);
				cost5Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				cost5Label.setStyle("embedFonts", true);
				cost5Label.height = 15;
				cost5Label.width = 100;
				cost5Label.maxDisplayedLines = 1;
				
				this.addChild(cost5Label);
				
				cost5Label.x = title45Label.x;
				cost5Label.y = title45Label.y + title45Label.height;
				
			}
			
			//
			
			if (weight5Label == null)
			{
				
				weight5Label = new Label();
				
				weight5Label.text = "";
				weight5Label.setStyle("fontSize", 14);
				weight5Label.setStyle("textAlign", TextAlign.LEFT);
				weight5Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				weight5Label.setStyle("embedFonts", true);
				weight5Label.height = 15;
				weight5Label.width = 100;
				weight5Label.maxDisplayedLines = 1;
				
				this.addChild(weight5Label);
				
				weight5Label.x = cost5Label.x;
				weight5Label.y = cost5Label.y + cost5Label.height;
				
			}
			
			//
			
			if (rarity5Label == null)
			{
				
				rarity5Label = new Label();
				
				rarity5Label.text = "";
				rarity5Label.setStyle("fontSize", 14);
				rarity5Label.setStyle("textAlign", TextAlign.LEFT);
				rarity5Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				rarity5Label.setStyle("embedFonts", true);
				rarity5Label.height = 15;
				rarity5Label.width = 50;
				rarity5Label.maxDisplayedLines = 1;
				
				this.addChild(rarity5Label);
				
				rarity5Label.x = weight5Label.x;
				rarity5Label.y = weight5Label.y + weight5Label.height;
				
			}
			
			//
			
			if (att15Label == null)
			{
				
				att15Label = new Label();
				
				att15Label.text = "";
				att15Label.setStyle("fontSize", 14);
				att15Label.setStyle("textAlign", TextAlign.LEFT);
				att15Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att15Label.setStyle("embedFonts", true);
				att15Label.height = 15;
				att15Label.width = 150;
				att15Label.maxDisplayedLines = 1;
				
				this.addChild(att15Label);
				
				att15Label.x = rarity5Label.x;
				att15Label.y = rarity5Label.y + rarity5Label.height;
				
			}
			
			//
			
			if (att25Label == null)
			{
				
				att25Label = new Label();
				
				att25Label.text = "";
				att25Label.setStyle("fontSize", 14);
				att25Label.setStyle("textAlign", TextAlign.LEFT);
				att25Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att25Label.setStyle("embedFonts", true);
				att25Label.height = 15;
				att25Label.width = 150;
				att25Label.maxDisplayedLines = 1;
				
				this.addChild(att25Label);
				
				att25Label.x = att15Label.x;
				att25Label.y = att15Label.y + att15Label.height;
				
			}
			
			//
			
			if (att35Label == null)
			{
				
				att35Label = new Label();
				
				att35Label.text = "";
				att35Label.setStyle("fontSize", 14);
				att35Label.setStyle("textAlign", TextAlign.LEFT);
				att35Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att35Label.setStyle("embedFonts", true);
				att35Label.height = 15;
				att35Label.width = 150;
				att35Label.maxDisplayedLines = 1;
				
				this.addChild(att35Label);
				
				att35Label.x = att25Label.x;
				att35Label.y = att25Label.y + att25Label.height;
				
			}
			
			//
			
			if (att45Label == null)
			{
				
				att45Label = new Label();
				
				att45Label.text = "";
				att45Label.setStyle("fontSize", 14);
				att45Label.setStyle("textAlign", TextAlign.LEFT);
				att45Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att45Label.setStyle("embedFonts", true);
				att45Label.height = 15;
				att45Label.width = 150;
				att45Label.maxDisplayedLines = 1;
				
				this.addChild(att45Label);
				
				att45Label.x = att35Label.x;
				att45Label.y = att35Label.y + att35Label.height;
				
			}
			
			//
			
			if (att55Label == null)
			{
				
				att55Label = new Label();
				
				att55Label.text = "";
				att55Label.setStyle("fontSize", 14);
				att55Label.setStyle("textAlign", TextAlign.LEFT);
				att55Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att55Label.setStyle("embedFonts", true);
				att55Label.height = 15;
				att55Label.width = 150;
				att55Label.maxDisplayedLines = 1;
				
				this.addChild(att55Label);
				
				att55Label.x = att45Label.x;
				att55Label.y = att45Label.y + att45Label.height;
				
			}
			
			//
			
			if (att65Label == null)
			{
				
				att65Label = new Label();
				
				att65Label.text = "";
				att65Label.setStyle("fontSize", 14);
				att65Label.setStyle("textAlign", TextAlign.LEFT);
				att65Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att65Label.setStyle("embedFonts", true);
				att65Label.height = 15;
				att65Label.width = 150;
				att65Label.maxDisplayedLines = 1;
				
				this.addChild(att65Label);
				
				att65Label.x = att55Label.x;
				att65Label.y = att55Label.y + att55Label.height;
				
			}
			
			//
			
			if (att75Label == null)
			{
				
				att75Label = new Label();
				
				att75Label.text = "";
				att75Label.setStyle("fontSize", 14);
				att75Label.setStyle("textAlign", TextAlign.LEFT);
				att75Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att75Label.setStyle("embedFonts", true);
				att75Label.height = 15;
				att75Label.width = 150;
				att75Label.maxDisplayedLines = 1;
				
				this.addChild(att75Label);
				
				att75Label.x = att65Label.x;
				att75Label.y = att65Label.y + att65Label.height;
				
			}
			
			//
			
			if (att85Label == null)
			{
				
				att85Label = new Label();
				
				att85Label.text = "";
				att85Label.setStyle("fontSize", 14);
				att85Label.setStyle("textAlign", TextAlign.LEFT);
				att85Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				att85Label.setStyle("embedFonts", true);
				att85Label.height = 15;
				att85Label.width = 150;
				att85Label.maxDisplayedLines = 1;
				
				this.addChild(att85Label);
				
				att85Label.x = att75Label.x;
				att85Label.y = att75Label.y + att75Label.height;
				
			}
			
			//
			
			if (filter11CheckBox == null)
			{
				
				filter11CheckBox = new CheckBox();
				
				filter11CheckBox.label = "Has positive";
				filter11CheckBox.selected = false;
				filter11CheckBox.height = 20;
				filter11CheckBox.width = 100;
				
				this.addChild(filter11CheckBox);
				
				filter11CheckBox.x = generalList.x;
				filter11CheckBox.y = 10;
				
			}
			
			//
			
			if (filter21CheckBox == null)
			{
				
				filter21CheckBox = new CheckBox();
				
				filter21CheckBox.label = "Has neutral";
				filter21CheckBox.selected = false;
				filter21CheckBox.height = 20;
				filter21CheckBox.width = 100;
				
				this.addChild(filter21CheckBox);
				
				filter21CheckBox.x = filter11CheckBox.x + filter11CheckBox.width;
				filter21CheckBox.y = filter11CheckBox.y;
				
			}
			
			//
			
			if (filter31CheckBox == null)
			{
				
				filter31CheckBox = new CheckBox();
				
				filter31CheckBox.label = "Has negative";
				filter31CheckBox.selected = false;
				filter31CheckBox.height = 20;
				filter31CheckBox.width = 100;
				
				this.addChild(filter31CheckBox);
				
				filter31CheckBox.x = filter11CheckBox.x;
				filter31CheckBox.y = filter11CheckBox.y + filter11CheckBox.height;
				
			}
			
			//
			
			if (filter41CheckBox == null)
			{
				
				filter41CheckBox = new CheckBox();
				
				filter41CheckBox.label = "Is plant";
				filter41CheckBox.selected = true;
				filter41CheckBox.height = 20;
				filter41CheckBox.width = 100;
				
				this.addChild(filter41CheckBox);
				
				filter41CheckBox.x = filter11CheckBox.x + filter11CheckBox.width;
				filter41CheckBox.y = filter11CheckBox.y + filter11CheckBox.height;
				
			}
			
			//
			
			if (filter51CheckBox == null)
			{
				
				filter51CheckBox = new CheckBox();
				
				filter51CheckBox.label = "Is animal";
				filter51CheckBox.selected = true;
				filter51CheckBox.height = 20;
				filter51CheckBox.width = 100;
				
				this.addChild(filter51CheckBox);
				
				filter51CheckBox.x = filter11CheckBox.x;
				filter51CheckBox.y = filter31CheckBox.y + filter31CheckBox.height;
				
			}
			
			//
			
			if (filter61CheckBox == null)
			{
				
				filter61CheckBox = new CheckBox();
				
				filter61CheckBox.label = "Is other";
				filter61CheckBox.selected = true;
				filter61CheckBox.height = 20;
				filter61CheckBox.width = 100;
				
				this.addChild(filter61CheckBox);
				
				filter61CheckBox.x = filter11CheckBox.x + filter11CheckBox.width;
				filter61CheckBox.y = filter31CheckBox.y + filter31CheckBox.height;
				
			}
			
			//
			
			if (min11Label == null)
			{
				
				min11Label = new Label();
				
				min11Label.text = "Min cost";
				min11Label.setStyle("fontSize", 14);
				min11Label.setStyle("textAlign", TextAlign.LEFT);
				min11Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				min11Label.setStyle("embedFonts", true);
				min11Label.height = 25;
				min11Label.width = 75;
				min11Label.maxDisplayedLines = 1;
				
				this.addChild(min11Label);
				
				min11Label.x = filter11CheckBox.x;
				min11Label.y = filter51CheckBox.y + filter51CheckBox.height;
				
			}
			
			if (filter11ComboBox == null)
			{
				
				filter11ComboBox = new ComboBox();
				
				filter11ComboBox.dataProvider = new ArrayCollection(costArray);
				filter11ComboBox.selectedIndex = 4;
				filter11ComboBox.height = 25;
				filter11ComboBox.width = 125;
				
				this.addChild(filter11ComboBox);
				
				filter11ComboBox.x = min11Label.x + min11Label.width;
				filter11ComboBox.y = min11Label.y;
				
			}
			
			//
			
			if (max11Label == null)
			{
				
				max11Label = new Label();
				
				max11Label.text = "Max cost";
				max11Label.setStyle("fontSize", 14);
				max11Label.setStyle("textAlign", TextAlign.LEFT);
				max11Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				max11Label.setStyle("embedFonts", true);
				max11Label.height = 25;
				max11Label.width = 75;
				max11Label.maxDisplayedLines = 1;
				
				this.addChild(max11Label);
				
				max11Label.x = filter11CheckBox.x;
				max11Label.y = min11Label.y + min11Label.height;
				
			}
			
			if (filter21ComboBox == null)
			{
				
				filter21ComboBox = new ComboBox();
				
				filter21ComboBox.dataProvider = new ArrayCollection(costArray);
				filter21ComboBox.selectedIndex = 0;
				filter21ComboBox.height = 25;
				filter21ComboBox.width = 125;
				
				this.addChild(filter21ComboBox);
				
				filter21ComboBox.x = max11Label.x + max11Label.width;
				filter21ComboBox.y = max11Label.y;
				
			}
			
			//
			
			if (min21Label == null)
			{
				
				min21Label = new Label();
				
				min21Label.text = "Min weight";
				min21Label.setStyle("fontSize", 14);
				min21Label.setStyle("textAlign", TextAlign.LEFT);
				min21Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				min21Label.setStyle("embedFonts", true);
				min21Label.height = 25;
				min21Label.width = 75;
				min21Label.maxDisplayedLines = 1;
				
				this.addChild(min21Label);
				
				min21Label.x = filter11CheckBox.x;
				min21Label.y = max11Label.y + max11Label.height;
				
			}
			
			if (filter31ComboBox == null)
			{
				
				filter31ComboBox = new ComboBox();
				
				filter31ComboBox.dataProvider = new ArrayCollection(weightArray);
				filter31ComboBox.selectedIndex = 4;
				filter31ComboBox.height = 25;
				filter31ComboBox.width = 125;
				
				this.addChild(filter31ComboBox);
				
				filter31ComboBox.x = min21Label.x + min21Label.width;
				filter31ComboBox.y = min21Label.y;
				
			}
			
			//
			
			if (max21Label == null)
			{
				
				max21Label = new Label();
				
				max21Label.text = "Max weight";
				max21Label.setStyle("fontSize", 14);
				max21Label.setStyle("textAlign", TextAlign.LEFT);
				max21Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				max21Label.setStyle("embedFonts", true);
				max21Label.height = 25;
				max21Label.width = 75;
				max21Label.maxDisplayedLines = 1;
				
				this.addChild(max21Label);
				
				max21Label.x = filter11CheckBox.x;
				max21Label.y = min21Label.y + min21Label.height;
				
			}
			
			if (filter41ComboBox == null)
			{
				
				filter41ComboBox = new ComboBox();
				
				filter41ComboBox.dataProvider = new ArrayCollection(weightArray);
				filter41ComboBox.selectedIndex = 0;
				filter41ComboBox.height = 25;
				filter41ComboBox.width = 125;
				
				this.addChild(filter41ComboBox);
				
				filter41ComboBox.x = max21Label.x + max21Label.width;
				filter41ComboBox.y = max21Label.y;
				
			}

			//
			
			if (min31Label == null)
			{
				
				min31Label = new Label();
				
				min31Label.text = "Min rarity";
				min31Label.setStyle("fontSize", 14);
				min31Label.setStyle("textAlign", TextAlign.LEFT);
				min31Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				min31Label.setStyle("embedFonts", true);
				min31Label.height = 25;
				min31Label.width = 75;
				min31Label.maxDisplayedLines = 1;
				
				this.addChild(min31Label);
				
				min31Label.x = filter11CheckBox.x;
				min31Label.y = max21Label.y + max21Label.height;
				
			}
			
			if (filter51ComboBox == null)
			{
				
				filter51ComboBox = new ComboBox();
				
				filter51ComboBox.dataProvider = new ArrayCollection(rarityArray);
				filter51ComboBox.selectedIndex = 0;
				filter51ComboBox.height = 25;
				filter51ComboBox.width = 125;
				
				this.addChild(filter51ComboBox);
				
				filter51ComboBox.x = min31Label.x + min31Label.width;
				filter51ComboBox.y = min31Label.y;
				
			}
			
			//
			
			if (max31Label == null)
			{
				
				max31Label = new Label();
				
				max31Label.text = "Max rarity";
				max31Label.setStyle("fontSize", 14);
				max31Label.setStyle("textAlign", TextAlign.LEFT);
				max31Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				max31Label.setStyle("embedFonts", true);
				max31Label.height = 25;
				max31Label.width = 75;
				max31Label.maxDisplayedLines = 1;
				
				this.addChild(max31Label);
				
				max31Label.x = filter11CheckBox.x;
				max31Label.y = min31Label.y + min31Label.height;
				
			}
			
			if (filter61ComboBox == null)
			{
				
				filter61ComboBox = new ComboBox();
				
				filter61ComboBox.dataProvider = new ArrayCollection(rarityArray);
				filter61ComboBox.selectedIndex = 4;
				filter61ComboBox.height = 25;
				filter61ComboBox.width = 125;
				
				this.addChild(filter61ComboBox);
				
				filter61ComboBox.x = max31Label.x + max31Label.width;
				filter61ComboBox.y = max31Label.y;
				
			}
			
			//
			
			if (filter1Button == null)
			{
				
				filter1Button = new Button();
				
				filter1Button.label = "Filter";
				filter1Button.addEventListener(MouseEvent.CLICK, filter1ClickHandler);
				filter1Button.height = 20;
				filter1Button.width = 50;
				
				this.addChild(filter1Button);
				
				filter1Button.x = max31Label.x;
				filter1Button.y = max31Label.y + max31Label.height;
				
			}

			if (andOr1CheckBox == null)
			{
				
				andOr1CheckBox = new CheckBox();
				
				andOr1CheckBox.label = "And/Or";
				andOr1CheckBox.selected = true;
				andOr1CheckBox.height = 20;
				andOr1CheckBox.width = 60;
				
				this.addChild(andOr1CheckBox);
				
				andOr1CheckBox.x = filter1Button.x + filter1Button.width + 10;
				andOr1CheckBox.y = filter1Button.y;
				
			}
			
			/**/
			
			//
			
			if (filter12CheckBox == null)
			{
				
				filter12CheckBox = new CheckBox();
				
				filter12CheckBox.label = "Has positive";
				filter12CheckBox.selected = false;
				filter12CheckBox.height = 20;
				filter12CheckBox.width = 100;
				
				this.addChild(filter12CheckBox);
				
				filter12CheckBox.x = combination2List.x;
				filter12CheckBox.y = 10;
				
			}
			
			//
			
			if (filter22CheckBox == null)
			{
				
				filter22CheckBox = new CheckBox();
				
				filter22CheckBox.label = "Has neutral";
				filter22CheckBox.selected = false;
				filter22CheckBox.height = 20;
				filter22CheckBox.width = 100;
				
				this.addChild(filter22CheckBox);
				
				filter22CheckBox.x = filter12CheckBox.x + filter12CheckBox.width;
				filter22CheckBox.y = filter12CheckBox.y;
				
			}
			
			//
			
			if (filter32CheckBox == null)
			{
				
				filter32CheckBox = new CheckBox();
				
				filter32CheckBox.label = "Has negative";
				filter32CheckBox.selected = false;
				filter32CheckBox.height = 20;
				filter32CheckBox.width = 100;
				
				this.addChild(filter32CheckBox);
				
				filter32CheckBox.x = filter12CheckBox.x;
				filter32CheckBox.y = filter22CheckBox.y + filter22CheckBox.height;
				
			}
			
			//
			
			if (filter42CheckBox == null)
			{
				
				filter42CheckBox = new CheckBox();
				
				filter42CheckBox.label = "Is plant";
				filter42CheckBox.selected = true;
				filter42CheckBox.height = 20;
				filter42CheckBox.width = 100;
				
				this.addChild(filter42CheckBox);
				
				filter42CheckBox.x = filter32CheckBox.x + filter32CheckBox.width;
				filter42CheckBox.y = filter32CheckBox.y;
				
			}
			
			//
			
			if (filter52CheckBox == null)
			{
				
				filter52CheckBox = new CheckBox();
				
				filter52CheckBox.label = "Is animal";
				filter52CheckBox.selected = true;
				filter52CheckBox.height = 20;
				filter52CheckBox.width = 100;
				
				this.addChild(filter52CheckBox);
				
				filter52CheckBox.x = filter12CheckBox.x;
				filter52CheckBox.y = filter32CheckBox.y + filter32CheckBox.height;
				
			}
			
			//
			
			if (filter62CheckBox == null)
			{
				
				filter62CheckBox = new CheckBox();
				
				filter62CheckBox.label = "Is other";
				filter62CheckBox.selected = true;
				filter62CheckBox.height = 20;
				filter62CheckBox.width = 100;
				
				this.addChild(filter62CheckBox);
				
				filter62CheckBox.x = filter12CheckBox.x + filter12CheckBox.width;
				filter62CheckBox.y = filter32CheckBox.y + filter32CheckBox.height;
				
			}
			
			//
			
			if (min12Label == null)
			{
				
				min12Label = new Label();
				
				min12Label.text = "Min cost";
				min12Label.setStyle("fontSize", 14);
				min12Label.setStyle("textAlign", TextAlign.LEFT);
				min12Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				min12Label.setStyle("embedFonts", true);
				min12Label.height = 25;
				min12Label.width = 75;
				min12Label.maxDisplayedLines = 1;
				
				this.addChild(min12Label);
				
				min12Label.x = filter12CheckBox.x;
				min12Label.y = filter52CheckBox.y + filter52CheckBox.height;
				
			}
			
			if (filter12ComboBox == null)
			{
				
				filter12ComboBox = new ComboBox();
				
				filter12ComboBox.dataProvider = new ArrayCollection(costArray);
				filter12ComboBox.selectedIndex = 4;
				filter12ComboBox.height = 25;
				filter12ComboBox.width = 125;
				
				this.addChild(filter12ComboBox);
				
				filter12ComboBox.x = min12Label.x + min12Label.width;
				filter12ComboBox.y = min12Label.y;
				
			}
			
			//
			
			if (max12Label == null)
			{
				
				max12Label = new Label();
				
				max12Label.text = "Max cost";
				max12Label.setStyle("fontSize", 14);
				max12Label.setStyle("textAlign", TextAlign.LEFT);
				max12Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				max12Label.setStyle("embedFonts", true);
				max12Label.height = 25;
				max12Label.width = 75;
				max12Label.maxDisplayedLines = 1;
				
				this.addChild(max12Label);
				
				max12Label.x = min12Label.x;
				max12Label.y = min12Label.y + min12Label.height;
				
			}
			
			if (filter22ComboBox == null)
			{
				
				filter22ComboBox = new ComboBox();
				
				filter22ComboBox.dataProvider = new ArrayCollection(costArray);
				filter22ComboBox.selectedIndex = 0;
				filter22ComboBox.height = 25;
				filter22ComboBox.width = 125;
				
				this.addChild(filter22ComboBox);
				
				filter22ComboBox.x = max12Label.x + max12Label.width;
				filter22ComboBox.y = max12Label.y;
				
			}
			
			//
			
			if (min22Label == null)
			{
				
				min22Label = new Label();
				
				min22Label.text = "Min weight";
				min22Label.setStyle("fontSize", 14);
				min22Label.setStyle("textAlign", TextAlign.LEFT);
				min22Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				min22Label.setStyle("embedFonts", true);
				min22Label.height = 25;
				min22Label.width = 75;
				min22Label.maxDisplayedLines = 1;
				
				this.addChild(min22Label);
				
				min22Label.x = filter12CheckBox.x;
				min22Label.y = max12Label.y + max12Label.height;
				
			}
			
			if (filter32ComboBox == null)
			{
				
				filter32ComboBox = new ComboBox();
				
				filter32ComboBox.dataProvider = new ArrayCollection(weightArray);
				filter32ComboBox.selectedIndex = 4;
				filter32ComboBox.height = 25;
				filter32ComboBox.width = 125;
				
				this.addChild(filter32ComboBox);
				
				filter32ComboBox.x = min22Label.x + min22Label.width;
				filter32ComboBox.y = min22Label.y;
				
			}
			
			//
			
			if (max22Label == null)
			{
				
				max22Label = new Label();
				
				max22Label.text = "Max weight";
				max22Label.setStyle("fontSize", 14);
				max22Label.setStyle("textAlign", TextAlign.LEFT);
				max22Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				max22Label.setStyle("embedFonts", true);
				max22Label.height = 25;
				max22Label.width = 75;
				max22Label.maxDisplayedLines = 1;
				
				this.addChild(max22Label);
				
				max22Label.x = filter12CheckBox.x;
				max22Label.y = min22Label.y + min22Label.height;
				
			}
			
			if (filter42ComboBox == null)
			{
				
				filter42ComboBox = new ComboBox();
				
				filter42ComboBox.dataProvider = new ArrayCollection(weightArray);
				filter42ComboBox.selectedIndex = 0;
				filter42ComboBox.height = 25;
				filter42ComboBox.width = 125;
				
				this.addChild(filter42ComboBox);
				
				filter42ComboBox.x = max22Label.x + max22Label.width;
				filter42ComboBox.y = max22Label.y;
				
			}
			
			//
			
			if (min32Label == null)
			{
				
				min32Label = new Label();
				
				min32Label.text = "Min rarity";
				min32Label.setStyle("fontSize", 14);
				min32Label.setStyle("textAlign", TextAlign.LEFT);
				min32Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				min32Label.setStyle("embedFonts", true);
				min32Label.height = 25;
				min32Label.width = 75;
				min32Label.maxDisplayedLines = 1;
				
				this.addChild(min32Label);
				
				min32Label.x = filter12CheckBox.x;
				min32Label.y = max22Label.y + max22Label.height;
				
			}
			
			if (filter52ComboBox == null)
			{
				
				filter52ComboBox = new ComboBox();
				
				filter52ComboBox.dataProvider = new ArrayCollection(rarityArray);
				filter52ComboBox.selectedIndex = 0;
				filter52ComboBox.height = 25;
				filter52ComboBox.width = 125;
				
				this.addChild(filter52ComboBox);
				
				filter52ComboBox.x = min32Label.x + min32Label.width;
				filter52ComboBox.y = min32Label.y;
				
			}
			
			//
			
			if (max32Label == null)
			{
				
				max32Label = new Label();
				
				max32Label.text = "Max rarity";
				max32Label.setStyle("fontSize", 14);
				max32Label.setStyle("textAlign", TextAlign.LEFT);
				max32Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				max32Label.setStyle("embedFonts", true);
				max32Label.height = 25;
				max32Label.width = 75;
				max32Label.maxDisplayedLines = 1;
				
				this.addChild(max32Label);
				
				max32Label.x = filter12CheckBox.x;
				max32Label.y = min32Label.y + min32Label.height;
				
			}
			
			if (filter62ComboBox == null)
			{
				
				filter62ComboBox = new ComboBox();
				
				filter62ComboBox.dataProvider = new ArrayCollection(rarityArray);
				filter62ComboBox.selectedIndex = 4;
				filter62ComboBox.height = 25;
				filter62ComboBox.width = 125;
				
				this.addChild(filter62ComboBox);
				
				filter62ComboBox.x = max32Label.x + max32Label.width;
				filter62ComboBox.y = max32Label.y;
				
			}
			
			/**/
			
			//
			
			if (filter13CheckBox == null)
			{
				
				filter13CheckBox = new CheckBox();
				
				filter13CheckBox.label = "Has positive";
				filter13CheckBox.selected = false;
				filter13CheckBox.height = 20;
				filter13CheckBox.width = 100;
				
				this.addChild(filter13CheckBox);
				
				filter13CheckBox.x = combination3List.x;
				filter13CheckBox.y = 10;
				
			}
			
			//
			
			if (filter23CheckBox == null)
			{
				
				filter23CheckBox = new CheckBox();
				
				filter23CheckBox.label = "Has neutral";
				filter23CheckBox.selected = false;
				filter23CheckBox.height = 20;
				filter23CheckBox.width = 100;
				
				this.addChild(filter23CheckBox);
				
				filter23CheckBox.x = filter13CheckBox.x + filter13CheckBox.width;
				filter23CheckBox.y = filter13CheckBox.y;
				
			}
			
			//
			
			if (filter33CheckBox == null)
			{
				
				filter33CheckBox = new CheckBox();
				
				filter33CheckBox.label = "Has negative";
				filter33CheckBox.selected = false;
				filter33CheckBox.height = 20;
				filter33CheckBox.width = 100;
				
				this.addChild(filter33CheckBox);
				
				filter33CheckBox.x = filter13CheckBox.x;
				filter33CheckBox.y = filter23CheckBox.y + filter23CheckBox.height;
				
			}
			
			//
			
			if (filter43CheckBox == null)
			{
				
				filter43CheckBox = new CheckBox();
				
				filter43CheckBox.label = "Is plant";
				filter43CheckBox.selected = true;
				filter43CheckBox.height = 20;
				filter43CheckBox.width = 100;
				
				this.addChild(filter43CheckBox);
				
				filter43CheckBox.x = filter33CheckBox.x + filter33CheckBox.width;
				filter43CheckBox.y = filter33CheckBox.y;
				
			}
			
			//
			
			if (filter53CheckBox == null)
			{
				
				filter53CheckBox = new CheckBox();
				
				filter53CheckBox.label = "Is animal";
				filter53CheckBox.selected = true;
				filter53CheckBox.height = 20;
				filter53CheckBox.width = 100;
				
				this.addChild(filter53CheckBox);
				
				filter53CheckBox.x = filter13CheckBox.x;
				filter53CheckBox.y = filter33CheckBox.y + filter33CheckBox.height;
				
			}
			
			//
			
			if (filter63CheckBox == null)
			{
				
				filter63CheckBox = new CheckBox();
				
				filter63CheckBox.label = "Is other";
				filter63CheckBox.selected = true;
				filter63CheckBox.height = 20;
				filter63CheckBox.width = 100;
				
				this.addChild(filter63CheckBox);
				
				filter63CheckBox.x = filter13CheckBox.x + filter13CheckBox.width;
				filter63CheckBox.y = filter33CheckBox.y + filter33CheckBox.height;
				
			}
			
			//
			
			if (min13Label == null)
			{
				
				min13Label = new Label();
				
				min13Label.text = "Min cost";
				min13Label.setStyle("fontSize", 14);
				min13Label.setStyle("textAlign", TextAlign.LEFT);
				min13Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				min13Label.setStyle("embedFonts", true);
				min13Label.height = 25;
				min13Label.width = 75;
				min13Label.maxDisplayedLines = 1;
				
				this.addChild(min13Label);
				
				min13Label.x = filter13CheckBox.x;
				min13Label.y = filter53CheckBox.y + filter53CheckBox.height;
				
			}
			
			if (filter13ComboBox == null)
			{
				
				filter13ComboBox = new ComboBox();
				
				filter13ComboBox.dataProvider = new ArrayCollection(costArray);
				filter13ComboBox.selectedIndex = 4;
				filter13ComboBox.height = 25;
				filter13ComboBox.width = 125;
				
				this.addChild(filter13ComboBox);
				
				filter13ComboBox.x = min13Label.x + min13Label.width;
				filter13ComboBox.y = min13Label.y;
				
			}
			
			//
			
			if (max13Label == null)
			{
				
				max13Label = new Label();
				
				max13Label.text = "Max cost";
				max13Label.setStyle("fontSize", 14);
				max13Label.setStyle("textAlign", TextAlign.LEFT);
				max13Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				max13Label.setStyle("embedFonts", true);
				max13Label.height = 25;
				max13Label.width = 75;
				max13Label.maxDisplayedLines = 1;
				
				this.addChild(max13Label);
				
				max13Label.x = min13Label.x;
				max13Label.y = min13Label.y + min13Label.height;
				
			}
			
			if (filter23ComboBox == null)
			{
				
				filter23ComboBox = new ComboBox();
				
				filter23ComboBox.dataProvider = new ArrayCollection(costArray);
				filter23ComboBox.selectedIndex = 0;
				filter23ComboBox.height = 25;
				filter23ComboBox.width = 125;
				
				this.addChild(filter23ComboBox);
				
				filter23ComboBox.x = max13Label.x + max13Label.width;
				filter23ComboBox.y = max13Label.y;
				
			}
			
			//
			
			if (min23Label == null)
			{
				
				min23Label = new Label();
				
				min23Label.text = "Min weight";
				min23Label.setStyle("fontSize", 14);
				min23Label.setStyle("textAlign", TextAlign.LEFT);
				min23Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				min23Label.setStyle("embedFonts", true);
				min23Label.height = 25;
				min23Label.width = 75;
				min23Label.maxDisplayedLines = 1;
				
				this.addChild(min23Label);
				
				min23Label.x = filter13CheckBox.x;
				min23Label.y = max13Label.y + max13Label.height;
				
			}
			
			if (filter33ComboBox == null)
			{
				
				filter33ComboBox = new ComboBox();
				
				filter33ComboBox.dataProvider = new ArrayCollection(weightArray);
				filter33ComboBox.selectedIndex = 4;
				filter33ComboBox.height = 25;
				filter33ComboBox.width = 125;
				
				this.addChild(filter33ComboBox);
				
				filter33ComboBox.x = min23Label.x + min23Label.width;
				filter33ComboBox.y = min23Label.y;
				
			}
			
			//
			
			if (max23Label == null)
			{
				
				max23Label = new Label();
				
				max23Label.text = "Max weight";
				max23Label.setStyle("fontSize", 14);
				max23Label.setStyle("textAlign", TextAlign.LEFT);
				max23Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				max23Label.setStyle("embedFonts", true);
				max23Label.height = 25;
				max23Label.width = 75;
				max23Label.maxDisplayedLines = 1;
				
				this.addChild(max23Label);
				
				max23Label.x = filter13CheckBox.x;
				max23Label.y = min23Label.y + min23Label.height;
				
			}
			
			if (filter43ComboBox == null)
			{
				
				filter43ComboBox = new ComboBox();
				
				filter43ComboBox.dataProvider = new ArrayCollection(weightArray);
				filter43ComboBox.selectedIndex = 0;
				filter43ComboBox.height = 25;
				filter43ComboBox.width = 125;
				
				this.addChild(filter43ComboBox);
				
				filter43ComboBox.x = max23Label.x + max23Label.width;
				filter43ComboBox.y = max23Label.y;
				
			}
			
			//
			
			if (min33Label == null)
			{
				
				min33Label = new Label();
				
				min33Label.text = "Min rarity";
				min33Label.setStyle("fontSize", 14);
				min33Label.setStyle("textAlign", TextAlign.LEFT);
				min33Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				min33Label.setStyle("embedFonts", true);
				min33Label.height = 25;
				min33Label.width = 75;
				min33Label.maxDisplayedLines = 1;
				
				this.addChild(min33Label);
				
				min33Label.x = filter13CheckBox.x;
				min33Label.y = max23Label.y + max23Label.height;
				
			}
			
			if (filter53ComboBox == null)
			{
				
				filter53ComboBox = new ComboBox();
				
				filter53ComboBox.dataProvider = new ArrayCollection(rarityArray);
				filter53ComboBox.selectedIndex = 0;
				filter53ComboBox.height = 25;
				filter53ComboBox.width = 125;
				
				this.addChild(filter53ComboBox);
				
				filter53ComboBox.x = min33Label.x + min33Label.width;
				filter53ComboBox.y = min33Label.y;
				
			}
			
			//
			
			if (max33Label == null)
			{
				
				max33Label = new Label();
				
				max33Label.text = "Max rarity";
				max33Label.setStyle("fontSize", 14);
				max33Label.setStyle("textAlign", TextAlign.LEFT);
				max33Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				max33Label.setStyle("embedFonts", true);
				max33Label.height = 25;
				max33Label.width = 75;
				max33Label.maxDisplayedLines = 1;
				
				this.addChild(max33Label);
				
				max33Label.x = filter13CheckBox.x;
				max33Label.y = min33Label.y + min33Label.height;
				
			}
			
			if (filter63ComboBox == null)
			{
				
				filter63ComboBox = new ComboBox();
				
				filter63ComboBox.dataProvider = new ArrayCollection(rarityArray);
				filter63ComboBox.selectedIndex = 4;
				filter63ComboBox.height = 25;
				filter63ComboBox.width = 125;
				
				this.addChild(filter63ComboBox);
				
				filter63ComboBox.x = max33Label.x + max33Label.width;
				filter63ComboBox.y = max33Label.y;
				
			}
			
			/**/
			
			//
			
			if (filter14CheckBox == null)
			{
				
				filter14CheckBox = new CheckBox();
				
				filter14CheckBox.label = "Has positive";
				filter14CheckBox.selected = false;
				filter14CheckBox.height = 20;
				filter14CheckBox.width = 100;
				
				this.addChild(filter14CheckBox);
				
				filter14CheckBox.x = combination4List.x;
				filter14CheckBox.y = 10;
				
			}
			
			//
			
			if (filter24CheckBox == null)
			{
				
				filter24CheckBox = new CheckBox();
				
				filter24CheckBox.label = "Has neutral";
				filter24CheckBox.selected = false;
				filter24CheckBox.height = 20;
				filter24CheckBox.width = 100;
				
				this.addChild(filter24CheckBox);
				
				filter24CheckBox.x = filter14CheckBox.x + filter14CheckBox.width;
				filter24CheckBox.y = filter14CheckBox.y;
				
			}
			
			//
			
			if (filter34CheckBox == null)
			{
				
				filter34CheckBox = new CheckBox();
				
				filter34CheckBox.label = "Has negative";
				filter34CheckBox.selected = false;
				filter34CheckBox.height = 20;
				filter34CheckBox.width = 100;
				
				this.addChild(filter34CheckBox);
				
				filter34CheckBox.x = filter14CheckBox.x;
				filter34CheckBox.y = filter24CheckBox.y + filter24CheckBox.height;
				
			}
			
			//
			
			if (filter44CheckBox == null)
			{
				
				filter44CheckBox = new CheckBox();
				
				filter44CheckBox.label = "Is plant";
				filter44CheckBox.selected = true;
				filter44CheckBox.height = 20;
				filter44CheckBox.width = 100;
				
				this.addChild(filter44CheckBox);
				
				filter44CheckBox.x = filter34CheckBox.x + filter34CheckBox.width;
				filter44CheckBox.y = filter34CheckBox.y;
				
			}
			
			//
			
			if (filter54CheckBox == null)
			{
				
				filter54CheckBox = new CheckBox();
				
				filter54CheckBox.label = "Is animal";
				filter54CheckBox.selected = true;
				filter54CheckBox.height = 20;
				filter54CheckBox.width = 100;
				
				this.addChild(filter54CheckBox);
				
				filter54CheckBox.x = filter14CheckBox.x;
				filter54CheckBox.y = filter34CheckBox.y + filter34CheckBox.height;
				
			}
			
			//
			
			if (filter64CheckBox == null)
			{
				
				filter64CheckBox = new CheckBox();
				
				filter64CheckBox.label = "Is other";
				filter64CheckBox.selected = true;
				filter64CheckBox.height = 20;
				filter64CheckBox.width = 100;
				
				this.addChild(filter64CheckBox);
				
				filter64CheckBox.x = filter14CheckBox.x + filter14CheckBox.width;
				filter64CheckBox.y = filter34CheckBox.y + filter34CheckBox.height;
				
			}
			
			//
			
			if (min14Label == null)
			{
				
				min14Label = new Label();
				
				min14Label.text = "Min cost";
				min14Label.setStyle("fontSize", 14);
				min14Label.setStyle("textAlign", TextAlign.LEFT);
				min14Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				min14Label.setStyle("embedFonts", true);
				min14Label.height = 25;
				min14Label.width = 75;
				min14Label.maxDisplayedLines = 1;
				
				this.addChild(min14Label);
				
				min14Label.x = filter14CheckBox.x;
				min14Label.y = filter54CheckBox.y + filter54CheckBox.height;
				
			}
			
			if (filter14ComboBox == null)
			{
				
				filter14ComboBox = new ComboBox();
				
				filter14ComboBox.dataProvider = new ArrayCollection(costArray);
				filter14ComboBox.selectedIndex = 4;
				filter14ComboBox.height = 25;
				filter14ComboBox.width = 125;
				
				this.addChild(filter14ComboBox);
				
				filter14ComboBox.x = min14Label.x + min14Label.width;
				filter14ComboBox.y = min14Label.y;
				
			}
			
			//
			
			if (max14Label == null)
			{
				
				max14Label = new Label();
				
				max14Label.text = "Max cost";
				max14Label.setStyle("fontSize", 14);
				max14Label.setStyle("textAlign", TextAlign.LEFT);
				max14Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				max14Label.setStyle("embedFonts", true);
				max14Label.height = 25;
				max14Label.width = 75;
				max14Label.maxDisplayedLines = 1;
				
				this.addChild(max14Label);
				
				max14Label.x = min14Label.x;
				max14Label.y = min14Label.y + min14Label.height;
				
			}
			
			if (filter24ComboBox == null)
			{
				
				filter24ComboBox = new ComboBox();
				
				filter24ComboBox.dataProvider = new ArrayCollection(costArray);
				filter24ComboBox.selectedIndex = 0;
				filter24ComboBox.height = 25;
				filter24ComboBox.width = 125;
				
				this.addChild(filter24ComboBox);
				
				filter24ComboBox.x = max14Label.x + max14Label.width;
				filter24ComboBox.y = max14Label.y;
				
			}
			
			//
			
			if (min24Label == null)
			{
				
				min24Label = new Label();
				
				min24Label.text = "Min weight";
				min24Label.setStyle("fontSize", 14);
				min24Label.setStyle("textAlign", TextAlign.LEFT);
				min24Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				min24Label.setStyle("embedFonts", true);
				min24Label.height = 25;
				min24Label.width = 75;
				min24Label.maxDisplayedLines = 1;
				
				this.addChild(min24Label);
				
				min24Label.x = filter14CheckBox.x;
				min24Label.y = max14Label.y + max14Label.height;
				
			}
			
			if (filter34ComboBox == null)
			{
				
				filter34ComboBox = new ComboBox();
				
				filter34ComboBox.dataProvider = new ArrayCollection(weightArray);
				filter34ComboBox.selectedIndex = 4;
				filter34ComboBox.height = 25;
				filter34ComboBox.width = 125;
				
				this.addChild(filter34ComboBox);
				
				filter34ComboBox.x = min24Label.x + min24Label.width;
				filter34ComboBox.y = min24Label.y;
				
			}
			
			//
			
			if (max24Label == null)
			{
				
				max24Label = new Label();
				
				max24Label.text = "Max weight";
				max24Label.setStyle("fontSize", 14);
				max24Label.setStyle("textAlign", TextAlign.LEFT);
				max24Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				max24Label.setStyle("embedFonts", true);
				max24Label.height = 25;
				max24Label.width = 75;
				max24Label.maxDisplayedLines = 1;
				
				this.addChild(max24Label);
				
				max24Label.x = filter14CheckBox.x;
				max24Label.y = min24Label.y + min24Label.height;
				
			}
			
			if (filter44ComboBox == null)
			{
				
				filter44ComboBox = new ComboBox();
				
				filter44ComboBox.dataProvider = new ArrayCollection(weightArray);
				filter44ComboBox.selectedIndex = 0;
				filter44ComboBox.height = 25;
				filter44ComboBox.width = 125;
				
				this.addChild(filter44ComboBox);
				
				filter44ComboBox.x = max24Label.x + max24Label.width;
				filter44ComboBox.y = max24Label.y;
				
			}
			
			//
			
			if (min34Label == null)
			{
				
				min34Label = new Label();
				
				min34Label.text = "Min rarity";
				min34Label.setStyle("fontSize", 14);
				min34Label.setStyle("textAlign", TextAlign.LEFT);
				min34Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				min34Label.setStyle("embedFonts", true);
				min34Label.height = 25;
				min34Label.width = 75;
				min34Label.maxDisplayedLines = 1;
				
				this.addChild(min34Label);
				
				min34Label.x = filter14CheckBox.x;
				min34Label.y = max24Label.y + max24Label.height;
				
			}
			
			if (filter54ComboBox == null)
			{
				
				filter54ComboBox = new ComboBox();
				
				filter54ComboBox.dataProvider = new ArrayCollection(rarityArray);
				filter54ComboBox.selectedIndex = 0;
				filter54ComboBox.height = 25;
				filter54ComboBox.width = 125;
				
				this.addChild(filter54ComboBox);
				
				filter54ComboBox.x = min34Label.x + min34Label.width;
				filter54ComboBox.y = min34Label.y;
				
			}
			
			//
			
			if (max34Label == null)
			{
				
				max34Label = new Label();
				
				max34Label.text = "Max rarity";
				max34Label.setStyle("fontSize", 14);
				max34Label.setStyle("textAlign", TextAlign.LEFT);
				max34Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				max34Label.setStyle("embedFonts", true);
				max34Label.height = 25;
				max34Label.width = 75;
				max34Label.maxDisplayedLines = 1;
				
				this.addChild(max34Label);
				
				max34Label.x = filter14CheckBox.x;
				max34Label.y = min34Label.y + min34Label.height;
				
			}
			
			if (filter64ComboBox == null)
			{
				
				filter64ComboBox = new ComboBox();
				
				filter64ComboBox.dataProvider = new ArrayCollection(rarityArray);
				filter64ComboBox.selectedIndex = 4;
				filter64ComboBox.height = 25;
				filter64ComboBox.width = 125;
				
				this.addChild(filter64ComboBox);
				
				filter64ComboBox.x = max34Label.x + max34Label.width;
				filter64ComboBox.y = max34Label.y;
				
			}
			
			/**/
			
			//
			
			if (filter15CheckBox == null)
			{
				
				filter15CheckBox = new CheckBox();
				
				filter15CheckBox.label = "Has positive";
				filter15CheckBox.selected = false;
				filter15CheckBox.height = 20;
				filter15CheckBox.width = 100;
				
				this.addChild(filter15CheckBox);
				
				filter15CheckBox.x = combination22List.x;
				filter15CheckBox.y = 10;
				
			}
			
			//
			
			if (filter25CheckBox == null)
			{
				
				filter25CheckBox = new CheckBox();
				
				filter25CheckBox.label = "Has neutral";
				filter25CheckBox.selected = false;
				filter25CheckBox.height = 20;
				filter25CheckBox.width = 100;
				
				this.addChild(filter25CheckBox);
				
				filter25CheckBox.x = filter15CheckBox.x + filter15CheckBox.width;
				filter25CheckBox.y = filter15CheckBox.y;
				
			}
			
			//
			
			if (filter35CheckBox == null)
			{
				
				filter35CheckBox = new CheckBox();
				
				filter35CheckBox.label = "Has negative";
				filter35CheckBox.selected = false;
				filter35CheckBox.height = 20;
				filter35CheckBox.width = 100;
				
				this.addChild(filter35CheckBox);
				
				filter35CheckBox.x = filter15CheckBox.x;
				filter35CheckBox.y = filter25CheckBox.y + filter25CheckBox.height;
				
			}
			
			//
			
			if (filter45CheckBox == null)
			{
				
				filter45CheckBox = new CheckBox();
				
				filter45CheckBox.label = "Is plant";
				filter45CheckBox.selected = true;
				filter45CheckBox.height = 20;
				filter45CheckBox.width = 100;
				
				this.addChild(filter45CheckBox);
				
				filter45CheckBox.x = filter35CheckBox.x + filter35CheckBox.width;
				filter45CheckBox.y = filter35CheckBox.y;
				
			}
			
			//
			
			if (filter55CheckBox == null)
			{
				
				filter55CheckBox = new CheckBox();
				
				filter55CheckBox.label = "Is animal";
				filter55CheckBox.selected = true;
				filter55CheckBox.height = 20;
				filter55CheckBox.width = 100;
				
				this.addChild(filter55CheckBox);
				
				filter55CheckBox.x = filter15CheckBox.x;
				filter55CheckBox.y = filter35CheckBox.y + filter35CheckBox.height;
				
			}
			
			//
			
			if (filter65CheckBox == null)
			{
				
				filter65CheckBox = new CheckBox();
				
				filter65CheckBox.label = "Is other";
				filter65CheckBox.selected = true;
				filter65CheckBox.height = 20;
				filter65CheckBox.width = 100;
				
				this.addChild(filter65CheckBox);
				
				filter65CheckBox.x = filter15CheckBox.x + filter15CheckBox.width;
				filter65CheckBox.y = filter35CheckBox.y + filter35CheckBox.height;
				
			}
			
			//
			
			if (min15Label == null)
			{
				
				min15Label = new Label();
				
				min15Label.text = "Min cost";
				min15Label.setStyle("fontSize", 14);
				min15Label.setStyle("textAlign", TextAlign.LEFT);
				min15Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				min15Label.setStyle("embedFonts", true);
				min15Label.height = 25;
				min15Label.width = 75;
				min15Label.maxDisplayedLines = 1;
				
				this.addChild(min15Label);
				
				min15Label.x = filter15CheckBox.x;
				min15Label.y = filter55CheckBox.y + filter55CheckBox.height;
				
			}
			
			if (filter15ComboBox == null)
			{
				
				filter15ComboBox = new ComboBox();
				
				filter15ComboBox.dataProvider = new ArrayCollection(costArray);
				filter15ComboBox.selectedIndex = 4;
				filter15ComboBox.height = 25;
				filter15ComboBox.width = 125;
				
				this.addChild(filter15ComboBox);
				
				filter15ComboBox.x = min15Label.x + min15Label.width;
				filter15ComboBox.y = min15Label.y;
				
			}
			
			//
			
			if (max15Label == null)
			{
				
				max15Label = new Label();
				
				max15Label.text = "Max cost";
				max15Label.setStyle("fontSize", 14);
				max15Label.setStyle("textAlign", TextAlign.LEFT);
				max15Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				max15Label.setStyle("embedFonts", true);
				max15Label.height = 25;
				max15Label.width = 75;
				max15Label.maxDisplayedLines = 1;
				
				this.addChild(max15Label);
				
				max15Label.x = min15Label.x;
				max15Label.y = min15Label.y + min15Label.height;
				
			}
			
			if (filter25ComboBox == null)
			{
				
				filter25ComboBox = new ComboBox();
				
				filter25ComboBox.dataProvider = new ArrayCollection(costArray);
				filter25ComboBox.selectedIndex = 0;
				filter25ComboBox.height = 25;
				filter25ComboBox.width = 125;
				
				this.addChild(filter25ComboBox);
				
				filter25ComboBox.x = max15Label.x + max15Label.width;
				filter25ComboBox.y = max15Label.y;
				
			}
			
			//
			
			if (min25Label == null)
			{
				
				min25Label = new Label();
				
				min25Label.text = "Min weight";
				min25Label.setStyle("fontSize", 14);
				min25Label.setStyle("textAlign", TextAlign.LEFT);
				min25Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				min25Label.setStyle("embedFonts", true);
				min25Label.height = 25;
				min25Label.width = 75;
				min25Label.maxDisplayedLines = 1;
				
				this.addChild(min25Label);
				
				min25Label.x = filter15CheckBox.x;
				min25Label.y = max15Label.y + max15Label.height;
				
			}
			
			if (filter35ComboBox == null)
			{
				
				filter35ComboBox = new ComboBox();
				
				filter35ComboBox.dataProvider = new ArrayCollection(weightArray);
				filter35ComboBox.selectedIndex = 4;
				filter35ComboBox.height = 25;
				filter35ComboBox.width = 125;
				
				this.addChild(filter35ComboBox);
				
				filter35ComboBox.x = min25Label.x + min25Label.width;
				filter35ComboBox.y = min25Label.y;
				
			}
			
			//
			
			if (max25Label == null)
			{
				
				max25Label = new Label();
				
				max25Label.text = "Max weight";
				max25Label.setStyle("fontSize", 14);
				max25Label.setStyle("textAlign", TextAlign.LEFT);
				max25Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				max25Label.setStyle("embedFonts", true);
				max25Label.height = 25;
				max25Label.width = 75;
				max25Label.maxDisplayedLines = 1;
				
				this.addChild(max25Label);
				
				max25Label.x = filter15CheckBox.x;
				max25Label.y = min25Label.y + min25Label.height;
				
			}
			
			if (filter45ComboBox == null)
			{
				
				filter45ComboBox = new ComboBox();
				
				filter45ComboBox.dataProvider = new ArrayCollection(weightArray);
				filter45ComboBox.selectedIndex = 0;
				filter45ComboBox.height = 25;
				filter45ComboBox.width = 125;
				
				this.addChild(filter45ComboBox);
				
				filter45ComboBox.x = max25Label.x + max25Label.width;
				filter45ComboBox.y = max25Label.y;
				
			}
			
			//
			
			if (min35Label == null)
			{
				
				min35Label = new Label();
				
				min35Label.text = "Min rarity";
				min35Label.setStyle("fontSize", 14);
				min35Label.setStyle("textAlign", TextAlign.LEFT);
				min35Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				min35Label.setStyle("embedFonts", true);
				min35Label.height = 25;
				min35Label.width = 75;
				min35Label.maxDisplayedLines = 1;
				
				this.addChild(min35Label);
				
				min35Label.x = filter15CheckBox.x;
				min35Label.y = max25Label.y + max25Label.height;
				
			}
			
			if (filter55ComboBox == null)
			{
				
				filter55ComboBox = new ComboBox();
				
				filter55ComboBox.dataProvider = new ArrayCollection(rarityArray);
				filter55ComboBox.selectedIndex = 0;
				filter55ComboBox.height = 25;
				filter55ComboBox.width = 125;
				
				this.addChild(filter55ComboBox);
				
				filter55ComboBox.x = min35Label.x + min35Label.width;
				filter55ComboBox.y = min35Label.y;
				
			}
			
			//
			
			if (max35Label == null)
			{
				
				max35Label = new Label();
				
				max35Label.text = "Max rarity";
				max35Label.setStyle("fontSize", 14);
				max35Label.setStyle("textAlign", TextAlign.LEFT);
				max35Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				max35Label.setStyle("embedFonts", true);
				max35Label.height = 25;
				max35Label.width = 75;
				max35Label.maxDisplayedLines = 1;
				
				this.addChild(max35Label);
				
				max35Label.x = filter15CheckBox.x;
				max35Label.y = min35Label.y + min35Label.height;
				
			}
			
			if (filter65ComboBox == null)
			{
				
				filter65ComboBox = new ComboBox();
				
				filter65ComboBox.dataProvider = new ArrayCollection(rarityArray);
				filter65ComboBox.selectedIndex = 4;
				filter65ComboBox.height = 25;
				filter65ComboBox.width = 125;
				
				this.addChild(filter65ComboBox);
				
				filter65ComboBox.x = max35Label.x + max35Label.width;
				filter65ComboBox.y = max35Label.y;
				
			}
			
			/**/
			
			//
			
			if (contains1Label == null)
			{
				
				contains1Label = new Label();
				
				contains1Label.text = "Contains";
				contains1Label.setStyle("fontSize", 14);
				contains1Label.setStyle("textAlign", TextAlign.LEFT);
				contains1Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				contains1Label.setStyle("embedFonts", true);
				contains1Label.height = 25;
				contains1Label.width = 75;
				contains1Label.maxDisplayedLines = 1;
				
				this.addChild(contains1Label);
				
				contains1Label.x = filter12CheckBox.x;
				contains1Label.y = max32Label.y + max32Label.height;
				
			}
			
			if (contains1ComboBox == null)
			{
				
				contains1ComboBox = new ComboBox();
				
				contains1ComboBox.dataProvider = new ArrayCollection(containsArray);
				contains1ComboBox.selectedIndex = 0;
				contains1ComboBox.height = 25;
				contains1ComboBox.width = 125;
				
				this.addChild(contains1ComboBox);
				
				contains1ComboBox.x = contains1Label.x + contains1Label.width;
				contains1ComboBox.y = contains1Label.y;
				
			}
			
			//
			
			if (contains2Label == null)
			{
				
				contains2Label = new Label();
				
				contains2Label.text = "Contains";
				contains2Label.setStyle("fontSize", 14);
				contains2Label.setStyle("textAlign", TextAlign.LEFT);
				contains2Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				contains2Label.setStyle("embedFonts", true);
				contains2Label.height = 25;
				contains2Label.width = 75;
				contains2Label.maxDisplayedLines = 1;
				
				this.addChild(contains2Label);
				
				contains2Label.x = filter13CheckBox.x;
				contains2Label.y = max33Label.y + max33Label.height;
				
			}
			
			if (contains2ComboBox == null)
			{
				
				contains2ComboBox = new ComboBox();
				
				contains2ComboBox.dataProvider = new ArrayCollection(containsArray);
				contains2ComboBox.selectedIndex = 0;
				contains2ComboBox.height = 25;
				contains2ComboBox.width = 125;
				
				this.addChild(contains2ComboBox);
				
				contains2ComboBox.x = contains2Label.x + contains2Label.width;
				contains2ComboBox.y = contains2Label.y;
				
			}
			
			//
			
			if (contains3Label == null)
			{
				
				contains3Label = new Label();
				
				contains3Label.text = "Contains";
				contains3Label.setStyle("fontSize", 14);
				contains3Label.setStyle("textAlign", TextAlign.LEFT);
				contains3Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				contains3Label.setStyle("embedFonts", true);
				contains3Label.height = 25;
				contains3Label.width = 75;
				contains3Label.maxDisplayedLines = 1;
				
				this.addChild(contains3Label);
				
				contains3Label.x = filter14CheckBox.x;
				contains3Label.y = max34Label.y + max34Label.height;
				
			}
			
			if (contains3ComboBox == null)
			{
				
				contains3ComboBox = new ComboBox();
				
				contains3ComboBox.dataProvider = new ArrayCollection(containsArray);
				contains3ComboBox.selectedIndex = 0;
				contains3ComboBox.height = 25;
				contains3ComboBox.width = 125;
				
				this.addChild(contains3ComboBox);
				
				contains3ComboBox.x = contains3Label.x + contains3Label.width;
				contains3ComboBox.y = contains3Label.y;
				
			}
			
			//
			
			if (contains4Label == null)
			{
				
				contains4Label = new Label();
				
				contains4Label.text = "Contains";
				contains4Label.setStyle("fontSize", 14);
				contains4Label.setStyle("textAlign", TextAlign.LEFT);
				contains4Label.setStyle("verticalAlign", VerticalAlign.MIDDLE);
				contains4Label.setStyle("embedFonts", true);
				contains4Label.height = 25;
				contains4Label.width = 75;
				contains4Label.maxDisplayedLines = 1;
				
				this.addChild(contains4Label);
				
				contains4Label.x = filter15CheckBox.x;
				contains4Label.y = max35Label.y + max35Label.height;
				
			}
			
			if (contains4ComboBox == null)
			{
				
				contains4ComboBox = new ComboBox();
				
				contains4ComboBox.dataProvider = new ArrayCollection(containsArray);
				contains4ComboBox.selectedIndex = 0;
				contains4ComboBox.height = 25;
				contains4ComboBox.width = 125;
				
				this.addChild(contains4ComboBox);
				
				contains4ComboBox.x = contains4Label.x + contains4Label.width;
				contains4ComboBox.y = contains4Label.y;
				
			}
			
			//
			
			if (filter2Button == null)
			{
				
				filter2Button = new Button();
				
				filter2Button.label = "Filter";
				filter2Button.addEventListener(MouseEvent.CLICK, filter2ClickHandler);
				filter2Button.height = 20;
				filter2Button.width = 50;
				
				this.addChild(filter2Button);
				
				filter2Button.x = contains1Label.x;
				filter2Button.y = contains1Label.y + contains1Label.height + 5;
				
			}
			
			//
			
			if (generate1Button == null)
			{
				
				generate1Button = new Button();
				
				generate1Button.label = "Generate";
				generate1Button.addEventListener(MouseEvent.CLICK, generate1ClickHandler);
				generate1Button.height = 20;
				generate1Button.width = 75;
				
				this.addChild(generate1Button);
				
				generate1Button.x = filter2Button.x + filter2Button.width + 25;
				generate1Button.y = filter2Button.y;
				
			}
			
			if (andOr2CheckBox == null)
			{
				
				andOr2CheckBox = new CheckBox();
				
				andOr2CheckBox.label = "And/Or";
				andOr2CheckBox.selected = true;
				andOr2CheckBox.height = 20;
				andOr2CheckBox.width = 60;
				
				this.addChild(andOr2CheckBox);
				
				andOr2CheckBox.x = generate1Button.x + generate1Button.width + 10;
				andOr2CheckBox.y = generate1Button.y;
				
			}
			
			//
			
			if (filter3Button == null)
			{
				
				filter3Button = new Button();
				
				filter3Button.label = "Filter";
				filter3Button.addEventListener(MouseEvent.CLICK, filter3ClickHandler);
				filter3Button.height = 20;
				filter3Button.width = 50;
				
				this.addChild(filter3Button);
				
				filter3Button.x = contains2Label.x;
				filter3Button.y = contains2Label.y + contains2Label.height + 5;
				
			}
			
			//
			
			if (generate2Button == null)
			{
				
				generate2Button = new Button();
				
				generate2Button.label = "Generate";
				generate2Button.addEventListener(MouseEvent.CLICK, generate2ClickHandler);
				generate2Button.height = 20;
				generate2Button.width = 75;
				
				this.addChild(generate2Button);
				
				generate2Button.x = filter3Button.x + filter3Button.width + 25;
				generate2Button.y = filter3Button.y;
				
			}
			
			if (andOr3CheckBox == null)
			{
				
				andOr3CheckBox = new CheckBox();
				
				andOr3CheckBox.label = "And/Or";
				andOr3CheckBox.selected = true;
				andOr3CheckBox.height = 20;
				andOr3CheckBox.width = 60;
				
				this.addChild(andOr3CheckBox);
				
				andOr3CheckBox.x = generate2Button.x + generate2Button.width + 10;
				andOr3CheckBox.y = generate2Button.y;
				
			}
			
			//
			
			if (filter4Button == null)
			{
				
				filter4Button = new Button();
				
				filter4Button.label = "Filter";
				filter4Button.addEventListener(MouseEvent.CLICK, filter4ClickHandler);
				filter4Button.height = 20;
				filter4Button.width = 50;
				
				this.addChild(filter4Button);
				
				filter4Button.x = contains3Label.x;
				filter4Button.y = contains3Label.y + contains3Label.height + 5;
				
			}

			//
			
			if (generate3Button == null)
			{
				
				generate3Button = new Button();
				
				generate3Button.label = "Generate";
				generate3Button.addEventListener(MouseEvent.CLICK, generate3ClickHandler);
				generate3Button.height = 20;
				generate3Button.width = 75;
				
				this.addChild(generate3Button);
				
				generate3Button.x = filter4Button.x + filter4Button.width + 25;
				generate3Button.y = filter4Button.y;
				
			}
			
			if (andOr4CheckBox == null)
			{
				
				andOr4CheckBox = new CheckBox();
				
				andOr4CheckBox.label = "And/Or";
				andOr4CheckBox.selected = true;
				andOr4CheckBox.height = 20;
				andOr4CheckBox.width = 60;
				
				this.addChild(andOr4CheckBox);
				
				andOr4CheckBox.x = generate3Button.x + generate3Button.width + 10;
				andOr4CheckBox.y = generate3Button.y;
				
			}
			
			//
			
			if (filter5Button == null)
			{
				
				filter5Button = new Button();
				
				filter5Button.label = "Filter";
				filter5Button.addEventListener(MouseEvent.CLICK, filter22ClickHandler);
				filter5Button.height = 20;
				filter5Button.width = 50;
				
				this.addChild(filter5Button);
				
				filter5Button.x = contains4Label.x;
				filter5Button.y = contains4Label.y + contains4Label.height + 5;
				
			}
			
			//
			
			if (generate4Button == null)
			{
				
				generate4Button = new Button();
				
				generate4Button.label = "Generate";
				generate4Button.addEventListener(MouseEvent.CLICK, generate4ClickHandler);
				generate4Button.height = 20;
				generate4Button.width = 75;
				
				this.addChild(generate4Button);
				
				generate4Button.x = filter5Button.x + filter5Button.width + 25;
				generate4Button.y = filter5Button.y;
				
			}
			
			if (andOr5CheckBox == null)
			{
				
				andOr5CheckBox = new CheckBox();
				
				andOr5CheckBox.label = "And/Or";
				andOr5CheckBox.selected = true;
				andOr5CheckBox.height = 20;
				andOr5CheckBox.width = 60;
				
				this.addChild(andOr5CheckBox);
				
				andOr5CheckBox.x = generate4Button.x + generate4Button.width + 10;
				andOr5CheckBox.y = generate4Button.y;
				
			}
			
			//
			
			generate1ClickHandler(null);
			generate2ClickHandler(null);
			generate3ClickHandler(null);
			//generate4ClickHandler(null);
			
			combination2List.dataProvider = filtered2Potions;
			combination3List.dataProvider = filtered3Potions;
			combination4List.dataProvider = filtered4Potions;
			//combination22List.dataProvider = filtered22Potions;
			
		}
		
		private function filter1ClickHandler(event:MouseEvent):void
		{
			
			filtered1Reagents = new ArrayCollection();
			
			for (i = 0; i < data.reagents.length; i++)
			{

				reagent = data.reagents.getItemAt(i) as Reagent;
				//trace(reagent.hasNeutral);
				if (
					
					(
						(
							filter11CheckBox.selected == false 
							&& filter21CheckBox.selected == false 
							&& filter31CheckBox.selected == false
						)
						||
						(
							andOr1CheckBox.selected == false
							&&
							(
								(
									reagent.hasPositive == filter11CheckBox.selected
									&&
									filter11CheckBox.selected == true
								)
								||
								(
									reagent.hasNeutral == filter21CheckBox.selected
									&&
									filter21CheckBox.selected == true
								)
								||
								(
									reagent.hasNegative == filter31CheckBox.selected
									&&
									filter31CheckBox.selected == true
								)	
							)
						)
						||
						(
							andOr1CheckBox.selected == true
							&&
							(
								//x1
								(
									(
										reagent.hasPositive == filter11CheckBox.selected
										&&
										filter11CheckBox.selected == true
									)
									&&
									(
										reagent.hasNeutral == filter21CheckBox.selected
										&&
										filter21CheckBox.selected == false
									)
									&&
									(
										reagent.hasNegative == filter31CheckBox.selected
										&&
										filter31CheckBox.selected == false
									)
								)
								||
								//x1
								(
									(
										reagent.hasPositive == filter11CheckBox.selected
										&&
										filter11CheckBox.selected == false
									)
									&&
									(
										reagent.hasNeutral == filter21CheckBox.selected
										&&
										filter21CheckBox.selected == true
									)
									&&
									(
										reagent.hasNegative == filter31CheckBox.selected
										&&
										filter31CheckBox.selected == false
									)
								)
								||
								//x1
								(
									(
										reagent.hasPositive == filter11CheckBox.selected
										&&
										filter11CheckBox.selected == false
									)
									&&
									(
										reagent.hasNeutral == filter21CheckBox.selected
										&&
										filter21CheckBox.selected == false
									)
									&&
									(
										reagent.hasNegative == filter31CheckBox.selected
										&&
										filter31CheckBox.selected == true
									)
								)
								||
								//x2
								(
									(
										reagent.hasPositive == filter11CheckBox.selected
										&&
										filter11CheckBox.selected == true
									)
									&&
									(
										reagent.hasNeutral == filter21CheckBox.selected
										&&
										filter21CheckBox.selected == true
									)
									&&
									(
										reagent.hasNegative == filter31CheckBox.selected
										&&
										filter31CheckBox.selected == false
									)
								)
								||
								//x2
								(
									(
										reagent.hasPositive == filter11CheckBox.selected
										&&
										filter11CheckBox.selected == true
									)
									&&
									(
										reagent.hasNeutral == filter21CheckBox.selected
										&&
										filter21CheckBox.selected == false
									)
									&&
									(
										reagent.hasNegative == filter31CheckBox.selected
										&&
										filter31CheckBox.selected == true
									)
								)
								||
								//x2
								(
									(
										reagent.hasPositive == filter11CheckBox.selected
										&&
										filter11CheckBox.selected == false
									)
									&&
									(
										reagent.hasNeutral == filter21CheckBox.selected
										&&
										filter21CheckBox.selected == true
									)
									&&
									(
										reagent.hasNegative == filter31CheckBox.selected
										&&
										filter31CheckBox.selected == true
									)
								)
								||
								//x3
								(
									(
										reagent.hasPositive == filter11CheckBox.selected
										&&
										filter11CheckBox.selected == true
									)
									&&
									(
										reagent.hasNeutral == filter21CheckBox.selected
										&&
										filter21CheckBox.selected == true
									)
									&&
									(
										reagent.hasNegative == filter31CheckBox.selected
										&&
										filter31CheckBox.selected == true
									)
								)
							)
						)
					)
					&& 
					(
						(reagent.type == "plant" && filter41CheckBox.selected == true)
						||
						(reagent.type == "animal" && filter51CheckBox.selected == true)
						||
						(reagent.type == "other" && filter61CheckBox.selected == true)
					)
					&&
					(
						reagent.costRange <= filter11ComboBox.selectedItem.data
						&& reagent.costRange >= filter21ComboBox.selectedItem.data
					)
					&&
					(
						reagent.weightRange <= filter31ComboBox.selectedItem.data
						&& reagent.weightRange >= filter41ComboBox.selectedItem.data
					)
					&&
					(
						reagent.rarity >= filter51ComboBox.selectedItem.data
						&& reagent.rarity <= filter61ComboBox.selectedItem.data
					)
					
				)
				{
					//trace(reagent.hasNeutral + " " + filter21CheckBox.selected);
					filtered1Reagents.addItem(reagent);
					
				}
				
			}
			
			generalList.dataProvider = filtered1Reagents;
			
		}
		
		private function filter2ClickHandler(event:MouseEvent):void
		{
			
			filtered2Potions = new ArrayCollection();
			
			for (i = 0; i < potions1.length; i++)
			{
				
				potion = potions1.getItemAt(i) as Potion;
				
				hasAttribute = false;
				
				for (j = 0; j < potion.attributes.length; j++)
				{
					
					attribute = potion.attributes[j];
					//trace(contains1ComboBox.selectedIndex);
					//trace(attribute + " "/* + contains1ComboBox.selectedItem.data*/);
					
					if (contains1ComboBox.selectedItem.data == attribute ||
						contains1ComboBox.selectedItem.data == "any")
					{
						
						hasAttribute = true;
						break;
						
					}
					
				}
				
				parent1 = potion.parents[0] as Reagent;
				parent2 = potion.parents[1] as Reagent;
				
				if (
					
					(
						(
							filter12CheckBox.selected == false 
							&& filter22CheckBox.selected == false 
							&& filter32CheckBox.selected == false
						)
						||
						(
							andOr2CheckBox.selected == false
							&&
							(
								(
									potion.hasPositive == filter12CheckBox.selected
									&&
									filter12CheckBox.selected == true
								)
								||
								(
									potion.hasNeutral == filter22CheckBox.selected
									&&
									filter22CheckBox.selected == true
								)
								||
								(
									potion.hasNegative == filter32CheckBox.selected
									&&
									filter32CheckBox.selected == true
								)	
							)
						)
						||
						(
							andOr2CheckBox.selected == true
							&&
							(
								//x1
								(
									(
										potion.hasPositive == filter12CheckBox.selected
										&&
										filter12CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter22CheckBox.selected
										&&
										filter22CheckBox.selected == false
									)
									&&
									(
										potion.hasNegative == filter32CheckBox.selected
										&&
										filter32CheckBox.selected == false
									)
								)
								||
								//x1
								(
									(
										potion.hasPositive == filter12CheckBox.selected
										&&
										filter12CheckBox.selected == false
									)
									&&
									(
										potion.hasNeutral == filter22CheckBox.selected
										&&
										filter22CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter32CheckBox.selected
										&&
										filter32CheckBox.selected == false
									)
								)
								||
								//x1
								(
									(
										potion.hasPositive == filter12CheckBox.selected
										&&
										filter12CheckBox.selected == false
									)
									&&
									(
										potion.hasNeutral == filter22CheckBox.selected
										&&
										filter22CheckBox.selected == false
									)
									&&
									(
										potion.hasNegative == filter32CheckBox.selected
										&&
										filter32CheckBox.selected == true
									)
								)
								||
								//x2
								(
									(
										potion.hasPositive == filter12CheckBox.selected
										&&
										filter12CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter22CheckBox.selected
										&&
										filter22CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter32CheckBox.selected
										&&
										filter32CheckBox.selected == false
									)
								)
								||
								//x2
								(
									(
										potion.hasPositive == filter12CheckBox.selected
										&&
										filter12CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter22CheckBox.selected
										&&
										filter22CheckBox.selected == false
									)
									&&
									(
										potion.hasNegative == filter32CheckBox.selected
										&&
										filter32CheckBox.selected == true
									)
								)
								||
								//x2
								(
									(
										potion.hasPositive == filter12CheckBox.selected
										&&
										filter12CheckBox.selected == false
									)
									&&
									(
										potion.hasNeutral == filter22CheckBox.selected
										&&
										filter22CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter32CheckBox.selected
										&&
										filter32CheckBox.selected == true
									)
								)
								||
								//x3
								(
									(
										potion.hasPositive == filter12CheckBox.selected
										&&
										filter12CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter22CheckBox.selected
										&&
										filter22CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter32CheckBox.selected
										&&
										filter32CheckBox.selected == true
									)
								)
							)
						)
					)
					&& 
					(
						(parent1.type == "plant" && filter42CheckBox.selected == true)
						||
						(parent2.type == "plant" && filter42CheckBox.selected == true)
						||
						(parent1.type == "animal" && filter52CheckBox.selected == true)
						||
						(parent2.type == "animal" && filter52CheckBox.selected == true)
						||
						(parent1.type == "other" && filter62CheckBox.selected == true)
						||
						(parent2.type == "other" && filter62CheckBox.selected == true)
					)
					&&
					(
						potion.costRange <= filter12ComboBox.selectedItem.data
						&& potion.costRange >= filter22ComboBox.selectedItem.data
					)
					&&
					(
						potion.weightRange <= filter32ComboBox.selectedItem.data
						&& potion.weightRange >= filter42ComboBox.selectedItem.data
					)
					&&
					(
						potion.rarity >= filter52ComboBox.selectedItem.data
						&& potion.rarity <= filter62ComboBox.selectedItem.data
					)
					&& hasAttribute == true
					
				)
				{
					
					filtered2Potions.addItem(potion);
					
				}
				
			}
			
			combination2List.dataProvider = filtered2Potions;
			//combination2List.dataProvider = potions1;
			
		}
		
		private function filter3ClickHandler(event:MouseEvent):void
		{
			
			filtered3Potions = new ArrayCollection();
			
			for (i = 0; i < potions2.length; i++)
			{
				
				potion = potions2.getItemAt(i) as Potion;
				
				hasAttribute = false;
				
				for (j = 0; j < potion.attributes.length; j++)
				{
					
					attribute = potion.attributes[j];
					//trace(contains1ComboBox.selectedIndex);
					//trace(attribute + " "/* + contains1ComboBox.selectedItem.data*/);
					
					if (contains2ComboBox.selectedItem.data == attribute ||
						contains2ComboBox.selectedItem.data == "any")
					{
						
						hasAttribute = true;
						break;
						
					}
					
				}
				
				parent1 = potion.parents[0] as Reagent;
				parent2 = potion.parents[1] as Reagent;
				parent3 = potion.parents[2] as Reagent;
				
				if (
					
					(
						(
							filter13CheckBox.selected == false 
							&& filter23CheckBox.selected == false 
							&& filter33CheckBox.selected == false
						)
						||
						(
							andOr3CheckBox.selected == false
							&&
							(
								(
									potion.hasPositive == filter13CheckBox.selected
									&&
									filter13CheckBox.selected == true
								)
								||
								(
									potion.hasNeutral == filter23CheckBox.selected
									&&
									filter23CheckBox.selected == true
								)
								||
								(
									potion.hasNegative == filter33CheckBox.selected
									&&
									filter33CheckBox.selected == true
								)	
							)
						)
						||
						(
							andOr3CheckBox.selected == true
							&&
							(
								//x1
								(
									(
										potion.hasPositive == filter13CheckBox.selected
										&&
										filter13CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter23CheckBox.selected
										&&
										filter23CheckBox.selected == false
									)
									&&
									(
										potion.hasNegative == filter33CheckBox.selected
										&&
										filter33CheckBox.selected == false
									)
								)
								||
								//x1
								(
									(
										potion.hasPositive == filter13CheckBox.selected
										&&
										filter13CheckBox.selected == false
									)
									&&
									(
										potion.hasNeutral == filter23CheckBox.selected
										&&
										filter23CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter33CheckBox.selected
										&&
										filter33CheckBox.selected == false
									)
								)
								||
								//x1
								(
									(
										potion.hasPositive == filter13CheckBox.selected
										&&
										filter13CheckBox.selected == false
									)
									&&
									(
										potion.hasNeutral == filter23CheckBox.selected
										&&
										filter23CheckBox.selected == false
									)
									&&
									(
										potion.hasNegative == filter33CheckBox.selected
										&&
										filter33CheckBox.selected == true
									)
								)
								||
								//x2
								(
									(
										potion.hasPositive == filter13CheckBox.selected
										&&
										filter13CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter23CheckBox.selected
										&&
										filter23CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter33CheckBox.selected
										&&
										filter33CheckBox.selected == false
									)
								)
								||
								//x2
								(
									(
										potion.hasPositive == filter13CheckBox.selected
										&&
										filter13CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter23CheckBox.selected
										&&
										filter23CheckBox.selected == false
									)
									&&
									(
										potion.hasNegative == filter33CheckBox.selected
										&&
										filter33CheckBox.selected == true
									)
								)
								||
								//x2
								(
									(
										potion.hasPositive == filter13CheckBox.selected
										&&
										filter13CheckBox.selected == false
									)
									&&
									(
										potion.hasNeutral == filter23CheckBox.selected
										&&
										filter23CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter33CheckBox.selected
										&&
										filter33CheckBox.selected == true
									)
								)
								||
								//x3
								(
									(
										potion.hasPositive == filter13CheckBox.selected
										&&
										filter13CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter23CheckBox.selected
										&&
										filter23CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter33CheckBox.selected
										&&
										filter33CheckBox.selected == true
									)
								)
							)
						)
					)
					&& 
					(
						(parent1.type == "plant" && filter43CheckBox.selected == true)
						||
						(parent2.type == "plant" && filter43CheckBox.selected == true)
						||
						(parent3.type == "plant" && filter43CheckBox.selected == true)
						||
						(parent1.type == "animal" && filter53CheckBox.selected == true)
						||
						(parent2.type == "animal" && filter53CheckBox.selected == true)
						||
						(parent3.type == "animal" && filter53CheckBox.selected == true)
						||
						(parent1.type == "other" && filter63CheckBox.selected == true)
						||
						(parent2.type == "other" && filter63CheckBox.selected == true)
						||
						(parent3.type == "other" && filter63CheckBox.selected == true)
					)
					&&
					(
						potion.costRange <= filter13ComboBox.selectedItem.data
						&& potion.costRange >= filter23ComboBox.selectedItem.data
					)
					&&
					(
						potion.weightRange <= filter33ComboBox.selectedItem.data
						&& potion.weightRange >= filter43ComboBox.selectedItem.data
					)
					&&
					(
						potion.rarity >= filter53ComboBox.selectedItem.data
						&& potion.rarity <= filter63ComboBox.selectedItem.data
					)
					&& hasAttribute == true
					
				)
				{
					
					filtered3Potions.addItem(potion);
					
				}
				
			}
			
			combination3List.dataProvider = filtered3Potions;
			
		}
		
		private function filter4ClickHandler(event:MouseEvent):void
		{
			
			filtered4Potions = new ArrayCollection();
			
			for (i = 0; i < potions3.length; i++)
			{
				
				potion = potions3.getItemAt(i) as Potion;
				
				hasAttribute = false;
				
				for (j = 0; j < potion.attributes.length; j++)
				{
					
					attribute = potion.attributes[j];
					//trace(contains1ComboBox.selectedIndex);
					//trace(attribute + " "/* + contains1ComboBox.selectedItem.data*/);
					
					if (contains3ComboBox.selectedItem.data == attribute ||
						contains3ComboBox.selectedItem.data == "any")
					{
						
						hasAttribute = true;
						break;
						
					}
					
				}
				
				parent1 = potion.parents[0] as Reagent;
				parent2 = potion.parents[1] as Reagent;
				parent3 = potion.parents[2] as Reagent;
				parent4 = potion.parents[3] as Reagent;
				
				if (
					
					(
						(
							filter14CheckBox.selected == false 
							&& filter24CheckBox.selected == false 
							&& filter34CheckBox.selected == false
						)
						||
						(
							andOr4CheckBox.selected == false
							&&
							(
								(
									potion.hasPositive == filter14CheckBox.selected
									&&
									filter14CheckBox.selected == true
								)
								||
								(
									potion.hasNeutral == filter24CheckBox.selected
									&&
									filter24CheckBox.selected == true
								)
								||
								(
									potion.hasNegative == filter34CheckBox.selected
									&&
									filter34CheckBox.selected == true
								)	
							)
						)
						||
						(
							andOr4CheckBox.selected == true
							&&
							(
								//x1
								(
									(
										potion.hasPositive == filter14CheckBox.selected
										&&
										filter14CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter24CheckBox.selected
										&&
										filter24CheckBox.selected == false
									)
									&&
									(
										potion.hasNegative == filter34CheckBox.selected
										&&
										filter34CheckBox.selected == false
									)
								)
								||
								//x1
								(
									(
										potion.hasPositive == filter14CheckBox.selected
										&&
										filter14CheckBox.selected == false
									)
									&&
									(
										potion.hasNeutral == filter24CheckBox.selected
										&&
										filter24CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter34CheckBox.selected
										&&
										filter34CheckBox.selected == false
									)
								)
								||
								//x1
								(
									(
										potion.hasPositive == filter14CheckBox.selected
										&&
										filter14CheckBox.selected == false
									)
									&&
									(
										potion.hasNeutral == filter24CheckBox.selected
										&&
										filter24CheckBox.selected == false
									)
									&&
									(
										potion.hasNegative == filter34CheckBox.selected
										&&
										filter34CheckBox.selected == true
									)
								)
								||
								//x2
								(
									(
										potion.hasPositive == filter14CheckBox.selected
										&&
										filter14CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter24CheckBox.selected
										&&
										filter24CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter34CheckBox.selected
										&&
										filter34CheckBox.selected == false
									)
								)
								||
								//x2
								(
									(
										potion.hasPositive == filter14CheckBox.selected
										&&
										filter14CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter24CheckBox.selected
										&&
										filter24CheckBox.selected == false
									)
									&&
									(
										potion.hasNegative == filter34CheckBox.selected
										&&
										filter34CheckBox.selected == true
									)
								)
								||
								//x2
								(
									(
										potion.hasPositive == filter14CheckBox.selected
										&&
										filter14CheckBox.selected == false
									)
									&&
									(
										potion.hasNeutral == filter24CheckBox.selected
										&&
										filter24CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter34CheckBox.selected
										&&
										filter34CheckBox.selected == true
									)
								)
								||
								//x3
								(
									(
										potion.hasPositive == filter14CheckBox.selected
										&&
										filter14CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter24CheckBox.selected
										&&
										filter24CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter34CheckBox.selected
										&&
										filter34CheckBox.selected == true
									)
								)
							)
						)
					)
					&& 
					(
						(parent1.type == "plant" && filter44CheckBox.selected == true)
						||
						(parent2.type == "plant" && filter44CheckBox.selected == true)
						||
						(parent3.type == "plant" && filter44CheckBox.selected == true)
						||
						(parent4.type == "plant" && filter44CheckBox.selected == true)
						||
						(parent1.type == "animal" && filter54CheckBox.selected == true)
						||
						(parent2.type == "animal" && filter54CheckBox.selected == true)
						||
						(parent3.type == "animal" && filter54CheckBox.selected == true)
						||
						(parent4.type == "animal" && filter54CheckBox.selected == true)
						||
						(parent1.type == "other" && filter64CheckBox.selected == true)
						||
						(parent2.type == "other" && filter64CheckBox.selected == true)
						||
						(parent3.type == "other" && filter64CheckBox.selected == true)
						||
						(parent4.type == "other" && filter64CheckBox.selected == true)
					)
					&&
					(
						potion.costRange <= filter14ComboBox.selectedItem.data
						&& potion.costRange >= filter24ComboBox.selectedItem.data
					)
					&&
					(
						potion.weightRange <= filter34ComboBox.selectedItem.data
						&& potion.weightRange >= filter44ComboBox.selectedItem.data
					)
					&&
					(
						potion.rarity >= filter54ComboBox.selectedItem.data
						&& potion.rarity <= filter64ComboBox.selectedItem.data
					)
					&& hasAttribute == true
					
				)
				{
					
					filtered4Potions.addItem(potion);
					
				}
				
			}
			
			combination4List.dataProvider = filtered4Potions;
			
		}
		
		private function filter22ClickHandler(event:MouseEvent):void
		{
			
			filtered22Potions = new ArrayCollection();
			
			for (i = 0; i < potions4.length; i++)
			{
				
				potion = potions4.getItemAt(i) as Potion;
				
				hasAttribute = false;
				
				for (j = 0; j < potion.attributes.length; j++)
				{
					
					attribute = potion.attributes[j];
					//trace(contains1ComboBox.selectedIndex);
					//trace(attribute + " "/* + contains1ComboBox.selectedItem.data*/);
					
					if (contains4ComboBox.selectedItem.data == attribute ||
						contains4ComboBox.selectedItem.data == "any")
					{
						
						hasAttribute = true;
						break;
						
					}
					
				}
				
				parent1 = potion.parents[0] as Reagent;
				parent2 = potion.parents[1] as Reagent;
				parent3 = potion.parents[2] as Reagent;
				parent4 = potion.parents[3] as Reagent;
				
				if (
					
					(
						(
							filter15CheckBox.selected == false 
							&& filter25CheckBox.selected == false 
							&& filter35CheckBox.selected == false
						)
						||
						(
							andOr5CheckBox.selected == false
							&&
							(
								(
									potion.hasPositive == filter15CheckBox.selected
									&&
									filter15CheckBox.selected == true
								)
								||
								(
									potion.hasNeutral == filter25CheckBox.selected
									&&
									filter25CheckBox.selected == true
								)
								||
								(
									potion.hasNegative == filter35CheckBox.selected
									&&
									filter35CheckBox.selected == true
								)	
							)
						)
						||
						(
							andOr5CheckBox.selected == true
							&&
							(
								//x1
								(
									(
										potion.hasPositive == filter15CheckBox.selected
										&&
										filter15CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter25CheckBox.selected
										&&
										filter25CheckBox.selected == false
									)
									&&
									(
										potion.hasNegative == filter35CheckBox.selected
										&&
										filter35CheckBox.selected == false
									)
								)
								||
								//x1
								(
									(
										potion.hasPositive == filter15CheckBox.selected
										&&
										filter15CheckBox.selected == false
									)
									&&
									(
										potion.hasNeutral == filter25CheckBox.selected
										&&
										filter25CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter35CheckBox.selected
										&&
										filter35CheckBox.selected == false
									)
								)
								||
								//x1
								(
									(
										potion.hasPositive == filter15CheckBox.selected
										&&
										filter15CheckBox.selected == false
									)
									&&
									(
										potion.hasNeutral == filter25CheckBox.selected
										&&
										filter25CheckBox.selected == false
									)
									&&
									(
										potion.hasNegative == filter35CheckBox.selected
										&&
										filter35CheckBox.selected == true
									)
								)
								||
								//x2
								(
									(
										potion.hasPositive == filter15CheckBox.selected
										&&
										filter15CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter25CheckBox.selected
										&&
										filter25CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter35CheckBox.selected
										&&
										filter35CheckBox.selected == false
									)
								)
								||
								//x2
								(
									(
										potion.hasPositive == filter15CheckBox.selected
										&&
										filter15CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter25CheckBox.selected
										&&
										filter25CheckBox.selected == false
									)
									&&
									(
										potion.hasNegative == filter35CheckBox.selected
										&&
										filter35CheckBox.selected == true
									)
								)
								||
								//x2
								(
									(
										potion.hasPositive == filter15CheckBox.selected
										&&
										filter15CheckBox.selected == false
									)
									&&
									(
										potion.hasNeutral == filter25CheckBox.selected
										&&
										filter25CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter35CheckBox.selected
										&&
										filter35CheckBox.selected == true
									)
								)
								||
								//x3
								(
									(
										potion.hasPositive == filter15CheckBox.selected
										&&
										filter15CheckBox.selected == true
									)
									&&
									(
										potion.hasNeutral == filter25CheckBox.selected
										&&
										filter25CheckBox.selected == true
									)
									&&
									(
										potion.hasNegative == filter35CheckBox.selected
										&&
										filter35CheckBox.selected == true
									)
								)
							)
						)
					)
					&& 
					(
						(parent1.type == "plant" && filter45CheckBox.selected == true)
						||
						(parent2.type == "plant" && filter45CheckBox.selected == true)
						||
						(parent3.type == "plant" && filter45CheckBox.selected == true)
						||
						(parent4.type == "plant" && filter45CheckBox.selected == true)
						||
						(parent1.type == "animal" && filter55CheckBox.selected == true)
						||
						(parent2.type == "animal" && filter55CheckBox.selected == true)
						||
						(parent3.type == "animal" && filter55CheckBox.selected == true)
						||
						(parent4.type == "animal" && filter55CheckBox.selected == true)
						||
						(parent1.type == "other" && filter65CheckBox.selected == true)
						||
						(parent2.type == "other" && filter65CheckBox.selected == true)
						||
						(parent3.type == "other" && filter65CheckBox.selected == true)
						||
						(parent4.type == "other" && filter65CheckBox.selected == true)
					)
					&&
					(
						potion.costRange <= filter15ComboBox.selectedItem.data
						&& potion.costRange >= filter25ComboBox.selectedItem.data
					)
					&&
					(
						potion.weightRange <= filter35ComboBox.selectedItem.data
						&& potion.weightRange >= filter45ComboBox.selectedItem.data
					)
					&&
					(
						potion.rarity >= filter55ComboBox.selectedItem.data
						&& potion.rarity <= filter65ComboBox.selectedItem.data
					)
					&& hasAttribute == true
					
				)
				{
					
					filtered22Potions.addItem(potion);
					
				}
				
			}
			
			combination22List.dataProvider = filtered22Potions;
			
		}
		
		private function generate1ClickHandler(event:MouseEvent):void
		{
			
			potions1 = new ArrayCollection();
			
			array = new Array();
			
			count = 0;
			
			for (i = 0; i < filtered1Reagents.length - 1; i++)
			{
				
				parent1 = filtered1Reagents[i] as Reagent;
				
				//potionFormed = false;
				
				for (j = i + 1; j < filtered1Reagents.length; j++)
				{
					
					parent2 = filtered1Reagents[j] as Reagent;
					
					potionFormed = false;
					
					array.splice(0, array.length);
					
					for (k = 0; k < parent1.attributes.length; k++)
					{
						
						attribute1 = parent1.attributes[k];
						
						for (l = 0; l < parent2.attributes.length; l++)
						{
							
							attribute2 = parent2.attributes[l];
							
							if (attribute1 == attribute2)
							{
								
								potionFormed = true;
								//trace(attribute1 + " " + count);
								array.push(attribute1);
								
							}
							
						}
						
					}
					
					if (potionFormed == true)
					{
						
						potion = new Potion();
						
						count++;
						//trace(count);
						potion.id = count;
						
						potion.parents.push(data.reagents[parent1.id - 1]);
						potion.parents.push(data.reagents[parent2.id - 1]);
						
						if (parent1.rarity <= parent2.rarity)
						{
							
							potion.rarity = parent1.rarity;
							
						}
						else
						{
							
							potion.rarity = parent2.rarity;
							
						}
						
						potion.label = "(" + potion.id.toString() + ") " + 
							parent1.id + ". + " + parent2.id + ". ";
						
						potion.cost = parent1.cost + parent2.cost;
						potion.weight = parent1.weight + parent2.weight;
						
						potion.costRange = setCostRange(potion.cost);
						potion.weightRange = setWeightRange(potion.weight);
						
						for (k = 0; k < array.length; k++)
						{
							
							attribute = array[k];
							
							potion.attributes.push(attribute);
							
							typeOfAttribute = getTypeOfAttribute(attribute);
							
							if (typeOfAttribute == "n")
							{
								
								potion.hasNegative = true;
								
							}
							else if (typeOfAttribute == "N")
							{
								
								potion.hasNeutral = true;
								
							}
							else if (typeOfAttribute == "P")
							{
								
								potion.hasPositive = true;
								
							}
							
							potion.label = potion.label + typeOfAttribute;
							
						}
						
						potions1.addItem(potion);
						
					}
					
				}
				
			}
			
			filter2ClickHandler(null);
			
		}
		
		private function generate2ClickHandler(event:MouseEvent):void
		{
			
			potions2 = new ArrayCollection();
			
			array = new Array();
			
			count = 0;
			
			for (i = 0; i < filtered2Potions.length - 1; i++)
			{
				
				potion = filtered2Potions[i] as Potion;
				
				parent1 = potion.parents[0] as Reagent;
				parent2 = potion.parents[1] as Reagent;
				
				for (j = parent2.id + 1; j < filtered1Reagents.length; j++)
				//for (j = 0; j < filtered1Reagents.length; j++)
				{
					
					parent3 = filtered1Reagents[j] as Reagent;
					
					if (parent3.id != parent1.id && parent3.id != parent2.id)
					{
						//trace(parent1.id + " " + parent2.id + " " + parent3.id);
						potionFormed = false;
						
						array.splice(0, array.length);
						
						for (l = 0; l < potion.attributes.length; l++)
						{
							
							attribute1 = potion.attributes[l];
							
							array.push(attribute1);
							
						}
						
						for (k = 0; k < parent3.attributes.length; k++)
						{
							
							attribute3 = parent3.attributes[k];
							
							uniqueAttribute = false;
							
							for (l = 0; l < parent1.attributes.length; l++)
							{
								
								attribute1 = parent1.attributes[l];
								
								if (attribute3 == attribute1)
								{
									
									uniqueAttribute = true;
									
									for (m = 0; m < array.length; m++)
									{
										
										tempAttribute = array[m];
										
										if (tempAttribute == attribute3)
										{
											
											uniqueAttribute = false;
											
											break;
											
										}
										
									}
									
									if (uniqueAttribute == true)
									{
										
										potionFormed = true;
										
										array.push(attribute3);
										
									}
									
								}
								
							}
							
							for (l = 0; l < parent2.attributes.length; l++)
							{
								
								attribute2 = parent2.attributes[l];
								
								if (attribute3 == attribute2)
								{
									
									uniqueAttribute = true;
									
									for (m = 0; m < array.length; m++)
									{
										
										tempAttribute = array[m];
										
										if (tempAttribute == attribute3)
										{
											
											uniqueAttribute = false;
											
											break;
											
										}
										
									}
									
									if (uniqueAttribute == true)
									{
										
										potionFormed = true;
										
										array.push(attribute3);
										
									}
									
								}
								
							}
							
						}
						
					}
					
					if (potionFormed == true)
					{
						
						potion2 = new Potion();
						
						count++;
						
						potion2.id = count;
						
						potion2.parents.push(parent1, parent2, parent3);
						
						if (potion.rarity <= parent3.rarity)
						{
							
							potion2.rarity = potion.rarity;
							
						}
						else
						{
							
							potion2.rarity = parent3.rarity;
							
						}
						
						potion2.label = "(" + potion2.id.toString() + ") " + 
							parent1.id + ". + " + parent2.id + ". + " + parent3.id + ". ";
						
						potion2.cost = potion.cost + parent3.cost;
						potion2.weight = potion.weight + parent3.weight;
						
						potion2.costRange = setCostRange(potion2.cost);
						potion2.weightRange = setWeightRange(potion2.weight);
						
						for (k = 0; k < array.length; k++)
						{
							
							attribute = array[k];
							
							potion2.attributes.push(attribute);
							
							typeOfAttribute = getTypeOfAttribute(attribute);
							
							if (typeOfAttribute == "n")
							{
								
								potion2.hasNegative = true;
								
							}
							else if (typeOfAttribute == "N")
							{
								
								potion2.hasNeutral = true;
								
							}
							else if (typeOfAttribute == "P")
							{
								
								potion2.hasPositive = true;
								
							}
							
							potion2.label = potion2.label + typeOfAttribute;
							
						}
						
						potions2.addItem(potion2);
						
					}
					
				}
				
			}
			
			filter3ClickHandler(null);
			
		}
		
		private function generate3ClickHandler(event:MouseEvent):void
		{
			
			potions3 = new ArrayCollection();
			
			array = new Array();
			
			count = 0;
			
			for (i = 0; i < filtered3Potions.length - 1; i++)
			{
				
				potion = filtered3Potions[i] as Potion;
				
				parent1 = potion.parents[0] as Reagent;
				parent2 = potion.parents[1] as Reagent;
				parent3 = potion.parents[2] as Reagent;
				
				for (j = parent3.id + 1; j < filtered1Reagents.length; j++)
					//for (j = 0; j < filtered1Reagents.length; j++)
				{
					
					parent4 = filtered1Reagents[j] as Reagent;
					
					if (parent4.id != parent1.id && parent4.id != parent2.id && parent4.id != parent3.id)
					{
						//trace(parent1.id + " " + parent2.id + " " + parent3.id);
						potionFormed = false;
						
						array.splice(0, array.length);
						
						for (l = 0; l < potion.attributes.length; l++)
						{
							
							attribute1 = potion.attributes[l];
							
							array.push(attribute1);
							
						}
						
						for (k = 0; k < parent4.attributes.length; k++)
						{
							
							attribute4 = parent4.attributes[k];
							
							uniqueAttribute = false;
							
							for (l = 0; l < parent1.attributes.length; l++)
							{
								
								attribute1 = parent1.attributes[l];
								
								if (attribute4 == attribute1)
								{
									
									uniqueAttribute = true;
									
									for (m = 0; m < array.length; m++)
									{
										
										tempAttribute = array[m];
										
										if (tempAttribute == attribute4)
										{
											
											uniqueAttribute = false;
											
											break;
											
										}
										
									}
									
									if (uniqueAttribute == true)
									{
										
										potionFormed = true;
										
										array.push(attribute4);
										
									}
									
								}
								
							}
							
							//
							
							for (l = 0; l < parent2.attributes.length; l++)
							{
								
								attribute2 = parent2.attributes[l];
								
								if (attribute4 == attribute2)
								{
									
									uniqueAttribute = true;
									
									for (m = 0; m < array.length; m++)
									{
										
										tempAttribute = array[m];
										
										if (tempAttribute == attribute4)
										{
											
											uniqueAttribute = false;
											
											break;
											
										}
										
									}
									
									if (uniqueAttribute == true)
									{
										
										potionFormed = true;
										
										array.push(attribute4);
										
									}
									
								}
								
							}
							
							//
							
							for (l = 0; l < parent3.attributes.length; l++)
							{
								
								attribute3 = parent3.attributes[l];
								
								if (attribute4 == attribute3)
								{
									
									uniqueAttribute = true;
									
									for (m = 0; m < array.length; m++)
									{
										
										tempAttribute = array[m];
										
										if (tempAttribute == attribute4)
										{
											
											uniqueAttribute = false;
											
											break;
											
										}
										
									}
									
									if (uniqueAttribute == true)
									{
										
										potionFormed = true;
										
										array.push(attribute4);
										
									}
									
								}
								
							}
							
						}
						
					}
					
					if (potionFormed == true)
					{
						
						potion3 = new Potion();
						
						count++;
						
						potion3.id = count;
						
						potion3.parents.push(parent1, parent2, parent3, parent4);
						
						if (potion.rarity <= parent4.rarity)
						{
							
							potion3.rarity = potion.rarity;
							
						}
						else
						{
							
							potion3.rarity = parent4.rarity;
							
						}
						
						potion3.label = "(" + potion3.id.toString() + ") " + 
							parent1.id + ". + " + parent2.id + ". + " + parent3.id + ". + "
							+ parent4.id + ". ";
						
						potion3.cost = potion.cost + parent4.cost;
						potion3.weight = potion.weight + parent4.weight;
						
						potion3.costRange = setCostRange(potion3.cost);
						potion3.weightRange = setWeightRange(potion3.weight);
						
						for (k = 0; k < array.length; k++)
						{
							
							attribute = array[k];
							
							potion3.attributes.push(attribute);
							
							typeOfAttribute = getTypeOfAttribute(attribute);
							
							if (typeOfAttribute == "n")
							{
								
								potion3.hasNegative = true;
								
							}
							else if (typeOfAttribute == "N")
							{
								
								potion3.hasNeutral = true;
								
							}
							else if (typeOfAttribute == "P")
							{
								
								potion3.hasPositive = true;
								
							}
							
							potion3.label = potion3.label + typeOfAttribute;
							
						}
						
						potions3.addItem(potion3);
						
					}
					
				}
				
			}
			
			filter4ClickHandler(null);
			
		}
		
		private function generate4ClickHandler(event:MouseEvent):void
		{
			
			potions4 = new ArrayCollection();
			
			array = new Array();
			
			count = 0;
			
			for (i = 0; i < filtered2Potions.length - 1; i++)
			{
				
				potion = filtered2Potions[i] as Potion;
				
				parent1 = potion.parents[0] as Reagent;
				parent2 = potion.parents[1] as Reagent;
				
				
				for (j = i + 1; j < filtered2Potions.length; j++)
				{
					
					potion2 = filtered2Potions[j] as Potion;
					
					parent3 = potion2.parents[0] as Reagent;
					parent4 = potion2.parents[1] as Reagent;
					
					potionFormed = false;
					
					if ((parent1.id != parent3.id && parent1.id != parent4.id) &&
						(parent2.id != parent3.id && parent2.id != parent4.id))
					{
						
						potionFormed = true;
						
						array.splice(0, array.length);
						
						for (l = 0; l < potion.attributes.length; l++)
						{
							
							attribute1 = potion.attributes[l];
							
							array.push(attribute1);
							
						}
						
						for (l = 0; l < potion2.attributes.length; l++)
						{
							
							attribute2 = potion2.attributes[l];
							
							array.push(attribute2);
							
						}
						
						for (k = 0; k < parent1.attributes.length; k++)
						{
							
							attribute1 = parent1.attributes[k];
							
							uniqueAttribute = false;
							
							for (l = 0; l < parent3.attributes.length; l++)
							{
								
								attribute3 = parent3.attributes[l];
								
								if (attribute1 == attribute3)
								{
									
									uniqueAttribute = true;
									
									for (m = 0; m < array.length; m++)
									{
										
										tempAttribute = array[m];
										
										if (tempAttribute == attribute1)
										{
											
											uniqueAttribute = false;
											
											break;
											
										}
										
									}
									
									if (uniqueAttribute == true)
									{
										
										//potionFormed = true;
										
										array.push(attribute1);
										
									}
									
								}
								
							}
							
							//
							
							for (l = 0; l < parent4.attributes.length; l++)
							{
								
								attribute4 = parent4.attributes[l];
								
								if (attribute1 == attribute4)
								{
									
									uniqueAttribute = true;
									
									for (m = 0; m < array.length; m++)
									{
										
										tempAttribute = array[m];
										
										if (tempAttribute == attribute1)
										{
											
											uniqueAttribute = false;
											
											break;
											
										}
										
									}
									
									if (uniqueAttribute == true)
									{
										
										//potionFormed = true;
										
										array.push(attribute1);
										
									}
									
								}
								
							}
							
						}
							
						for (k = 0; k < parent2.attributes.length; k++)
						{
							
							attribute2 = parent2.attributes[k];
							
							uniqueAttribute = false;
							
							for (l = 0; l < parent3.attributes.length; l++)
							{
								
								attribute3 = parent3.attributes[l];
								
								if (attribute2 == attribute3)
								{
									
									uniqueAttribute = true;
									
									for (m = 0; m < array.length; m++)
									{
										
										tempAttribute = array[m];
										
										if (tempAttribute == attribute2)
										{
											
											uniqueAttribute = false;
											
											break;
											
										}
										
									}
									
									if (uniqueAttribute == true)
									{
										
										//potionFormed = true;
										
										array.push(attribute2);
										
									}
									
								}
								
							}
							
							//
							
							for (l = 0; l < parent4.attributes.length; l++)
							{
								
								attribute4 = parent4.attributes[l];
								
								if (attribute2 == attribute4)
								{
									
									uniqueAttribute = true;
									
									for (m = 0; m < array.length; m++)
									{
										
										tempAttribute = array[m];
										
										if (tempAttribute == attribute2)
										{
											
											uniqueAttribute = false;
											
											break;
											
										}
										
									}
									
									if (uniqueAttribute == true)
									{
										
										//potionFormed = true;
										
										array.push(attribute2);
										
									}
									
								}
								
							}
							
						}
						
					}
					
					if (potionFormed == true)
					{
						
						potion4 = new Potion();
						
						count++;
						
						potion4.id = count;
						
						potion4.parents.push(parent1, parent2, parent3, parent4);
						
						if (potion.rarity <= potion2.rarity)
						{
							
							potion4.rarity = potion.rarity;
							
						}
						else
						{
							
							potion4.rarity = potion2.rarity;
							
						}
						
						potion4.label = "(" + potion4.id.toString() + ") " + 
							parent1.id + ". + " + parent2.id + ". + " + parent3.id + ". + "
							+ parent4.id + ". ";
						
						potion4.cost = potion.cost + potion2.cost;
						potion4.weight = potion.weight + potion2.weight;
						
						potion4.costRange = setCostRange(potion4.cost);
						potion4.weightRange = setWeightRange(potion4.weight);
						
						for (k = 0; k < array.length; k++)
						{
							
							attribute = array[k];
							
							potion4.attributes.push(attribute);
							
							typeOfAttribute = getTypeOfAttribute(attribute);
							
							if (typeOfAttribute == "n")
							{
								
								potion4.hasNegative = true;
								
							}
							else if (typeOfAttribute == "N")
							{
								
								potion4.hasNeutral = true;
								
							}
							else if (typeOfAttribute == "P")
							{
								
								potion4.hasPositive = true;
								
							}
							
							potion4.label = potion4.label + typeOfAttribute;
							
						}
						
						potions4.addItem(potion4);
						
					}
					
				}
				
			}
			
			trace(potions4.length);
			
			filter22ClickHandler(null);
			
		}
		
		private function list1ClickHandler(event:MouseEvent):void
		{
			
			label = event.target as Label;
			
			if (label != null)
			{
				
				list = label.parent.parent.parent.parent.parent.parent as List;
				
			}
			
			if (list != null)
			{
				
				clickReagent = list.selectedItem as Reagent;
				
				title11Label.text = clickReagent.label;
				
				circle1Sprite.graphics.clear();
				
				circle1Sprite.graphics.lineStyle(1, 0x000000);
				circle1Sprite.graphics.beginFill(typeColor(clickReagent.type));
				circle1Sprite.graphics.drawCircle(title11Label.x - 15, title11Label.y + 7, 5);
				circle1Sprite.graphics.endFill();
				
				cost1Label.text = clickReagent.cost + " cost";
				
				circle1Sprite.graphics.lineStyle(1, 0x000000);
				circle1Sprite.graphics.beginFill(categoryColor(clickReagent.costRange));
				circle1Sprite.graphics.drawCircle(cost1Label.x - 15, cost1Label.y + 7, 5);
				circle1Sprite.graphics.endFill();
				
				weight1Label.text = clickReagent.weight + " weight";
				
				circle1Sprite.graphics.lineStyle(1, 0x000000);
				circle1Sprite.graphics.beginFill(categoryColor(clickReagent.weightRange));
				circle1Sprite.graphics.drawCircle(weight1Label.x - 15, weight1Label.y + 7, 5);
				circle1Sprite.graphics.endFill();
				
				rarity1Label.text = clickReagent.rarity + " rarity";
				
				circle1Sprite.graphics.lineStyle(1, 0x000000);
				circle1Sprite.graphics.beginFill(categoryColor(clickReagent.rarity));
				circle1Sprite.graphics.drawCircle(rarity1Label.x - 15, rarity1Label.y + 7, 5);
				circle1Sprite.graphics.endFill();
				
				att11Label.text = "";
				att21Label.text = "";
				att31Label.text = "";
				att41Label.text = "";
				
				for (i = 0; i < clickReagent.attributes.length; i++)
				{
					
					if (i == 0)
					{
						
						att11Label.text = clickReagent.attributes[0];
						
						circle1Sprite.graphics.lineStyle(1, 0x000000);
						circle1Sprite.graphics.beginFill(attributeColor(att11Label.text));
						circle1Sprite.graphics.drawCircle(att11Label.x - 15, att11Label.y + 7, 5);
						circle1Sprite.graphics.endFill();
						
					}
					
					if (i == 1)
					{
						
						att21Label.text = clickReagent.attributes[1];
						
						circle1Sprite.graphics.lineStyle(1, 0x000000);
						circle1Sprite.graphics.beginFill(attributeColor(att21Label.text));
						circle1Sprite.graphics.drawCircle(att21Label.x - 15, att21Label.y + 7, 5);
						circle1Sprite.graphics.endFill();
						
					}
					
					if (i == 2)
					{
						
						att31Label.text = clickReagent.attributes[2];
						
						circle1Sprite.graphics.lineStyle(1, 0x000000);
						circle1Sprite.graphics.beginFill(attributeColor(att31Label.text));
						circle1Sprite.graphics.drawCircle(att31Label.x - 15, att31Label.y + 7, 5);
						circle1Sprite.graphics.endFill();
						
					}
					
					if (i == 3)
					{
						
						att41Label.text = clickReagent.attributes[3];
						
						circle1Sprite.graphics.lineStyle(1, 0x000000);
						circle1Sprite.graphics.beginFill(attributeColor(att41Label.text));
						circle1Sprite.graphics.drawCircle(att41Label.x - 15, att41Label.y + 7, 5);
						circle1Sprite.graphics.endFill();
						
					}
					
				}
				
			}
			
		}
		
		private function list2ClickHandler(event:MouseEvent):void
		{
			
			label = event.target as Label;
			
			if (label != null)
			{
				
				list = label.parent.parent.parent.parent.parent.parent as List;
				
			}
			
			if (list != null)
			{
				
				clickPotion = list.selectedItem as Potion;
				
				parent1 = clickPotion.parents[0] as Reagent;
				title12Label.text = parent1.label;
				
				circle2Sprite.graphics.clear();
				
				circle2Sprite.graphics.lineStyle(1, 0x000000);
				circle2Sprite.graphics.beginFill(typeColor(parent1.type));
				circle2Sprite.graphics.drawCircle(title12Label.x - 15, title12Label.y + 7, 5);
				circle2Sprite.graphics.endFill();
				
				parent2 = clickPotion.parents[1] as Reagent;
				title22Label.text = parent2.label;
				
				circle2Sprite.graphics.lineStyle(1, 0x000000);
				circle2Sprite.graphics.beginFill(typeColor(parent2.type));
				circle2Sprite.graphics.drawCircle(title22Label.x - 15, title22Label.y + 7, 5);
				circle2Sprite.graphics.endFill();
				
				//
				//aaa
				
				cost2Label.text = clickPotion.cost + " cost";
				
				circle2Sprite.graphics.lineStyle(1, 0x000000);
				circle2Sprite.graphics.beginFill(categoryColor(clickPotion.costRange));
				circle2Sprite.graphics.drawCircle(cost2Label.x - 15, cost2Label.y + 7, 5);
				circle2Sprite.graphics.endFill();
				
				weight2Label.text = clickPotion.weight.toFixed(1) + " weight";
				
				circle2Sprite.graphics.lineStyle(1, 0x000000);
				circle2Sprite.graphics.beginFill(categoryColor(clickPotion.weightRange));
				circle2Sprite.graphics.drawCircle(weight2Label.x - 15, weight2Label.y + 7, 5);
				circle2Sprite.graphics.endFill();
				
				rarity2Label.text = clickPotion.rarity + " rarity";
				
				circle2Sprite.graphics.lineStyle(1, 0x000000);
				circle2Sprite.graphics.beginFill(categoryColor(clickPotion.rarity));
				circle2Sprite.graphics.drawCircle(rarity2Label.x - 15, rarity2Label.y + 7, 5);
				circle2Sprite.graphics.endFill();
				
				att12Label.text = "";
				att22Label.text = "";
				att32Label.text = "";
				att42Label.text = "";
				
				for (i = 0; i < clickPotion.attributes.length; i++)
				{
					
					if (i == 0)
					{
						
						att12Label.text = clickPotion.attributes[0];
						
						circle2Sprite.graphics.lineStyle(1, 0x000000);
						circle2Sprite.graphics.beginFill(attributeColor(att12Label.text));
						circle2Sprite.graphics.drawCircle(att12Label.x - 15, att12Label.y + 7, 5);
						circle2Sprite.graphics.endFill();
						
					}
					
					if (i == 1)
					{
						
						att22Label.text = clickPotion.attributes[1];
						
						circle2Sprite.graphics.lineStyle(1, 0x000000);
						circle2Sprite.graphics.beginFill(attributeColor(att22Label.text));
						circle2Sprite.graphics.drawCircle(att22Label.x - 15, att22Label.y + 7, 5);
						circle2Sprite.graphics.endFill();
						
					}
					
					if (i == 2)
					{
						
						att32Label.text = clickPotion.attributes[2];
						
						circle2Sprite.graphics.lineStyle(1, 0x000000);
						circle2Sprite.graphics.beginFill(attributeColor(att32Label.text));
						circle2Sprite.graphics.drawCircle(att32Label.x - 15, att32Label.y + 7, 5);
						circle2Sprite.graphics.endFill();
						
					}
					
					if (i == 3)
					{
						
						att42Label.text = clickPotion.attributes[3];
						
						circle2Sprite.graphics.lineStyle(1, 0x000000);
						circle2Sprite.graphics.beginFill(attributeColor(att42Label.text));
						circle2Sprite.graphics.drawCircle(att42Label.x - 15, att42Label.y + 7, 5);
						circle2Sprite.graphics.endFill();
						
					}
					
				}
				
			}
			
		}
		
		private function list3ClickHandler(event:MouseEvent):void
		{
			
			label = event.target as Label;
			
			if (label != null)
			{
				
				list = label.parent.parent.parent.parent.parent.parent as List;
				
			}
			
			if (list != null)
			{
				
				clickPotion = list.selectedItem as Potion;
				
				parent1 = clickPotion.parents[0] as Reagent;
				title13Label.text = parent1.label;
				
				circle3Sprite.graphics.clear();
				
				circle3Sprite.graphics.lineStyle(1, 0x000000);
				circle3Sprite.graphics.beginFill(typeColor(parent1.type));
				circle3Sprite.graphics.drawCircle(title13Label.x - 15, title13Label.y + 7, 5);
				circle3Sprite.graphics.endFill();
				
				parent2 = clickPotion.parents[1] as Reagent;
				title23Label.text = parent2.label;
				
				circle3Sprite.graphics.lineStyle(1, 0x000000);
				circle3Sprite.graphics.beginFill(typeColor(parent2.type));
				circle3Sprite.graphics.drawCircle(title23Label.x - 15, title23Label.y + 7, 5);
				circle3Sprite.graphics.endFill();
				
				parent3 = clickPotion.parents[2] as Reagent;
				title33Label.text = parent3.label;
				
				circle3Sprite.graphics.lineStyle(1, 0x000000);
				circle3Sprite.graphics.beginFill(typeColor(parent3.type));
				circle3Sprite.graphics.drawCircle(title33Label.x - 15, title33Label.y + 7, 5);
				circle3Sprite.graphics.endFill();
				
				//
				
				cost3Label.text = clickPotion.cost + " cost";
				
				circle3Sprite.graphics.lineStyle(1, 0x000000);
				circle3Sprite.graphics.beginFill(categoryColor(clickPotion.costRange));
				circle3Sprite.graphics.drawCircle(cost3Label.x - 15, cost3Label.y + 7, 5);
				circle3Sprite.graphics.endFill();
				
				weight3Label.text = clickPotion.weight.toFixed(1) + " weight";
				
				circle3Sprite.graphics.lineStyle(1, 0x000000);
				circle3Sprite.graphics.beginFill(categoryColor(clickPotion.weightRange));
				circle3Sprite.graphics.drawCircle(weight3Label.x - 15, weight3Label.y + 7, 5);
				circle3Sprite.graphics.endFill();
				
				rarity3Label.text = clickPotion.rarity + " rarity";
				
				circle3Sprite.graphics.lineStyle(1, 0x000000);
				circle3Sprite.graphics.beginFill(categoryColor(clickPotion.rarity));
				circle3Sprite.graphics.drawCircle(rarity3Label.x - 15, rarity3Label.y + 7, 5);
				circle3Sprite.graphics.endFill();
				
				att13Label.text = "";
				att23Label.text = "";
				att33Label.text = "";
				att43Label.text = "";
				att53Label.text = "";
				att63Label.text = "";
				
				for (i = 0; i < clickPotion.attributes.length; i++)
				{
					
					if (i == 0)
					{
						
						att13Label.text = clickPotion.attributes[0];
						
						circle3Sprite.graphics.lineStyle(1, 0x000000);
						circle3Sprite.graphics.beginFill(attributeColor(att13Label.text));
						circle3Sprite.graphics.drawCircle(att13Label.x - 15, att13Label.y + 7, 5);
						circle3Sprite.graphics.endFill();
						
					}
					
					if (i == 1)
					{
						
						att23Label.text = clickPotion.attributes[1];
						
						circle3Sprite.graphics.lineStyle(1, 0x000000);
						circle3Sprite.graphics.beginFill(attributeColor(att23Label.text));
						circle3Sprite.graphics.drawCircle(att23Label.x - 15, att23Label.y + 7, 5);
						circle3Sprite.graphics.endFill();
						
					}
					
					if (i == 2)
					{
						
						att33Label.text = clickPotion.attributes[2];
						
						circle3Sprite.graphics.lineStyle(1, 0x000000);
						circle3Sprite.graphics.beginFill(attributeColor(att33Label.text));
						circle3Sprite.graphics.drawCircle(att33Label.x - 15, att33Label.y + 7, 5);
						circle3Sprite.graphics.endFill();
						
					}
					
					if (i == 3)
					{
						
						att43Label.text = clickPotion.attributes[3];
						
						circle3Sprite.graphics.lineStyle(1, 0x000000);
						circle3Sprite.graphics.beginFill(attributeColor(att43Label.text));
						circle3Sprite.graphics.drawCircle(att43Label.x - 15, att43Label.y + 7, 5);
						circle3Sprite.graphics.endFill();
						
					}
					
					if (i == 4)
					{
						
						att53Label.text = clickPotion.attributes[4];
						
						circle3Sprite.graphics.lineStyle(1, 0x000000);
						circle3Sprite.graphics.beginFill(attributeColor(att53Label.text));
						circle3Sprite.graphics.drawCircle(att53Label.x - 15, att53Label.y + 7, 5);
						circle3Sprite.graphics.endFill();
						
					}
					
					if (i == 5)
					{
						
						att63Label.text = clickPotion.attributes[5];
						
						circle3Sprite.graphics.lineStyle(1, 0x000000);
						circle3Sprite.graphics.beginFill(attributeColor(att63Label.text));
						circle3Sprite.graphics.drawCircle(att63Label.x - 15, att63Label.y + 7, 5);
						circle3Sprite.graphics.endFill();
						
					}
					
				}
				
			}
			
		}
		
		private function list4ClickHandler(event:MouseEvent):void
		{
			
			label = event.target as Label;
			
			if (label != null)
			{
				
				list = label.parent.parent.parent.parent.parent.parent as List;
				
			}
			
			if (list != null)
			{
				
				clickPotion = list.selectedItem as Potion;
				
				parent1 = clickPotion.parents[0] as Reagent;
				title14Label.text = parent1.label;
				
				circle4Sprite.graphics.clear();
				
				circle4Sprite.graphics.lineStyle(1, 0x000000);
				circle4Sprite.graphics.beginFill(typeColor(parent1.type));
				circle4Sprite.graphics.drawCircle(title14Label.x - 15, title14Label.y + 7, 5);
				circle4Sprite.graphics.endFill();
				
				parent2 = clickPotion.parents[1] as Reagent;
				title24Label.text = parent2.label;
				
				circle4Sprite.graphics.lineStyle(1, 0x000000);
				circle4Sprite.graphics.beginFill(typeColor(parent2.type));
				circle4Sprite.graphics.drawCircle(title24Label.x - 15, title24Label.y + 7, 5);
				circle4Sprite.graphics.endFill();
				
				parent3 = clickPotion.parents[2] as Reagent;
				title34Label.text = parent3.label;
				
				circle4Sprite.graphics.lineStyle(1, 0x000000);
				circle4Sprite.graphics.beginFill(typeColor(parent3.type));
				circle4Sprite.graphics.drawCircle(title34Label.x - 15, title34Label.y + 7, 5);
				circle4Sprite.graphics.endFill();
				
				parent4 = clickPotion.parents[3] as Reagent;
				title44Label.text = parent4.label;
				
				circle4Sprite.graphics.lineStyle(1, 0x000000);
				circle4Sprite.graphics.beginFill(typeColor(parent4.type));
				circle4Sprite.graphics.drawCircle(title44Label.x - 15, title44Label.y + 7, 5);
				circle4Sprite.graphics.endFill();
				
				//
				
				cost4Label.text = clickPotion.cost + " cost";
				
				circle4Sprite.graphics.lineStyle(1, 0x000000);
				circle4Sprite.graphics.beginFill(categoryColor(clickPotion.costRange));
				circle4Sprite.graphics.drawCircle(cost4Label.x - 15, cost4Label.y + 7, 5);
				circle4Sprite.graphics.endFill();
				
				weight4Label.text = clickPotion.weight.toFixed(1) + " weight";
				
				circle4Sprite.graphics.lineStyle(1, 0x000000);
				circle4Sprite.graphics.beginFill(categoryColor(clickPotion.weightRange));
				circle4Sprite.graphics.drawCircle(weight4Label.x - 15, weight4Label.y + 7, 5);
				circle4Sprite.graphics.endFill();
				
				rarity4Label.text = clickPotion.rarity + " rarity";
				
				circle4Sprite.graphics.lineStyle(1, 0x000000);
				circle4Sprite.graphics.beginFill(categoryColor(clickPotion.rarity));
				circle4Sprite.graphics.drawCircle(rarity4Label.x - 15, rarity4Label.y + 7, 5);
				circle4Sprite.graphics.endFill();
				
				att14Label.text = "";
				att24Label.text = "";
				att34Label.text = "";
				att44Label.text = "";
				att54Label.text = "";
				att64Label.text = "";
				att74Label.text = "";
				att84Label.text = "";
				
				for (i = 0; i < clickPotion.attributes.length; i++)
				{
					
					if (i == 0)
					{
						
						att14Label.text = clickPotion.attributes[0];
						
						circle4Sprite.graphics.lineStyle(1, 0x000000);
						circle4Sprite.graphics.beginFill(attributeColor(att14Label.text));
						circle4Sprite.graphics.drawCircle(att14Label.x - 15, att14Label.y + 7, 5);
						circle4Sprite.graphics.endFill();
						
					}
					
					if (i == 1)
					{
						
						att24Label.text = clickPotion.attributes[1];
						
						circle4Sprite.graphics.lineStyle(1, 0x000000);
						circle4Sprite.graphics.beginFill(attributeColor(att24Label.text));
						circle4Sprite.graphics.drawCircle(att24Label.x - 15, att24Label.y + 7, 5);
						circle4Sprite.graphics.endFill();
						
					}
					
					if (i == 2)
					{
						
						att34Label.text = clickPotion.attributes[2];
						
						circle4Sprite.graphics.lineStyle(1, 0x000000);
						circle4Sprite.graphics.beginFill(attributeColor(att34Label.text));
						circle4Sprite.graphics.drawCircle(att34Label.x - 15, att34Label.y + 7, 5);
						circle4Sprite.graphics.endFill();
						
					}
					
					if (i == 3)
					{
						
						att44Label.text = clickPotion.attributes[3];
						
						circle4Sprite.graphics.lineStyle(1, 0x000000);
						circle4Sprite.graphics.beginFill(attributeColor(att44Label.text));
						circle4Sprite.graphics.drawCircle(att44Label.x - 15, att44Label.y + 7, 5);
						circle4Sprite.graphics.endFill();
						
					}
					
					if (i == 4)
					{
						
						att54Label.text = clickPotion.attributes[4];
						
						circle4Sprite.graphics.lineStyle(1, 0x000000);
						circle4Sprite.graphics.beginFill(attributeColor(att54Label.text));
						circle4Sprite.graphics.drawCircle(att54Label.x - 15, att54Label.y + 7, 5);
						circle4Sprite.graphics.endFill();
						
					}
					
					if (i == 5)
					{
						
						att64Label.text = clickPotion.attributes[5];
						
						circle4Sprite.graphics.lineStyle(1, 0x000000);
						circle4Sprite.graphics.beginFill(attributeColor(att64Label.text));
						circle4Sprite.graphics.drawCircle(att64Label.x - 15, att64Label.y + 7, 5);
						circle4Sprite.graphics.endFill();
						
					}
					
					if (i == 6)
					{
						
						att74Label.text = clickPotion.attributes[6];
						
						circle4Sprite.graphics.lineStyle(1, 0x000000);
						circle4Sprite.graphics.beginFill(attributeColor(att74Label.text));
						circle4Sprite.graphics.drawCircle(att74Label.x - 15, att74Label.y + 7, 5);
						circle4Sprite.graphics.endFill();
						
					}
					
					if (i == 7)
					{
						
						att84Label.text = clickPotion.attributes[7];
						
						circle4Sprite.graphics.lineStyle(1, 0x000000);
						circle4Sprite.graphics.beginFill(attributeColor(att84Label.text));
						circle4Sprite.graphics.drawCircle(att84Label.x - 15, att84Label.y + 7, 5);
						circle4Sprite.graphics.endFill();
						
					}
					
				}
				
			}
			
		}
		
		private function list22ClickHandler(event:MouseEvent):void
		{
			
			label = event.target as Label;
			
			if (label != null)
			{
				
				list = label.parent.parent.parent.parent.parent.parent as List;
				
			}
			
			if (list != null)
			{
				
				clickPotion = list.selectedItem as Potion;
				
				parent1 = clickPotion.parents[0] as Reagent;
				title15Label.text = parent1.label;
				
				circle5Sprite.graphics.clear();
				
				circle5Sprite.graphics.lineStyle(1, 0x000000);
				circle5Sprite.graphics.beginFill(typeColor(parent1.type));
				circle5Sprite.graphics.drawCircle(title15Label.x - 15, title15Label.y + 7, 5);
				circle5Sprite.graphics.endFill();
				
				parent2 = clickPotion.parents[1] as Reagent;
				title25Label.text = parent2.label;
				
				circle5Sprite.graphics.lineStyle(1, 0x000000);
				circle5Sprite.graphics.beginFill(typeColor(parent2.type));
				circle5Sprite.graphics.drawCircle(title25Label.x - 15, title25Label.y + 7, 5);
				circle5Sprite.graphics.endFill();
				
				parent3 = clickPotion.parents[2] as Reagent;
				title35Label.text = parent3.label;
				
				circle5Sprite.graphics.lineStyle(1, 0x000000);
				circle5Sprite.graphics.beginFill(typeColor(parent3.type));
				circle5Sprite.graphics.drawCircle(title35Label.x - 15, title35Label.y + 7, 5);
				circle5Sprite.graphics.endFill();
				
				parent4 = clickPotion.parents[3] as Reagent;
				title45Label.text = parent4.label;
				
				circle5Sprite.graphics.lineStyle(1, 0x000000);
				circle5Sprite.graphics.beginFill(typeColor(parent4.type));
				circle5Sprite.graphics.drawCircle(title45Label.x - 15, title45Label.y + 7, 5);
				circle5Sprite.graphics.endFill();
				
				//
				
				cost5Label.text = clickPotion.cost + " cost";
				
				circle5Sprite.graphics.lineStyle(1, 0x000000);
				circle5Sprite.graphics.beginFill(categoryColor(clickPotion.costRange));
				circle5Sprite.graphics.drawCircle(cost5Label.x - 15, cost5Label.y + 7, 5);
				circle5Sprite.graphics.endFill();
				
				weight5Label.text = clickPotion.weight.toFixed(1) + " weight";
				
				circle5Sprite.graphics.lineStyle(1, 0x000000);
				circle5Sprite.graphics.beginFill(categoryColor(clickPotion.weightRange));
				circle5Sprite.graphics.drawCircle(weight5Label.x - 15, weight5Label.y + 7, 5);
				circle5Sprite.graphics.endFill();
				
				rarity5Label.text = clickPotion.rarity + " rarity";
				
				circle5Sprite.graphics.lineStyle(1, 0x000000);
				circle5Sprite.graphics.beginFill(categoryColor(clickPotion.rarity));
				circle5Sprite.graphics.drawCircle(rarity5Label.x - 15, rarity5Label.y + 7, 5);
				circle5Sprite.graphics.endFill();
				
				att15Label.text = "";
				att25Label.text = "";
				att35Label.text = "";
				att45Label.text = "";
				att55Label.text = "";
				att65Label.text = "";
				att75Label.text = "";
				att85Label.text = "";
				
				for (i = 0; i < clickPotion.attributes.length; i++)
				{
					
					if (i == 0)
					{
						
						att15Label.text = clickPotion.attributes[0];
						
						circle5Sprite.graphics.lineStyle(1, 0x000000);
						circle5Sprite.graphics.beginFill(attributeColor(att15Label.text));
						circle5Sprite.graphics.drawCircle(att15Label.x - 15, att15Label.y + 7, 5);
						circle5Sprite.graphics.endFill();
						
					}
					
					if (i == 1)
					{
						
						att25Label.text = clickPotion.attributes[1];
						
						circle5Sprite.graphics.lineStyle(1, 0x000000);
						circle5Sprite.graphics.beginFill(attributeColor(att25Label.text));
						circle5Sprite.graphics.drawCircle(att25Label.x - 15, att25Label.y + 7, 5);
						circle5Sprite.graphics.endFill();
						
					}
					
					if (i == 2)
					{
						
						att35Label.text = clickPotion.attributes[2];
						
						circle5Sprite.graphics.lineStyle(1, 0x000000);
						circle5Sprite.graphics.beginFill(attributeColor(att35Label.text));
						circle5Sprite.graphics.drawCircle(att35Label.x - 15, att35Label.y + 7, 5);
						circle5Sprite.graphics.endFill();
						
					}
					
					if (i == 3)
					{
						
						att45Label.text = clickPotion.attributes[3];
						
						circle5Sprite.graphics.lineStyle(1, 0x000000);
						circle5Sprite.graphics.beginFill(attributeColor(att45Label.text));
						circle5Sprite.graphics.drawCircle(att45Label.x - 15, att45Label.y + 7, 5);
						circle5Sprite.graphics.endFill();
						
					}
					
					if (i == 4)
					{
						
						att55Label.text = clickPotion.attributes[4];
						
						circle5Sprite.graphics.lineStyle(1, 0x000000);
						circle5Sprite.graphics.beginFill(attributeColor(att55Label.text));
						circle5Sprite.graphics.drawCircle(att55Label.x - 15, att55Label.y + 7, 5);
						circle5Sprite.graphics.endFill();
						
					}
					
					if (i == 5)
					{
						
						att65Label.text = clickPotion.attributes[5];
						
						circle5Sprite.graphics.lineStyle(1, 0x000000);
						circle5Sprite.graphics.beginFill(attributeColor(att65Label.text));
						circle5Sprite.graphics.drawCircle(att65Label.x - 15, att65Label.y + 7, 5);
						circle5Sprite.graphics.endFill();
						
					}
					
					if (i == 6)
					{
						
						att75Label.text = clickPotion.attributes[6];
						
						circle5Sprite.graphics.lineStyle(1, 0x000000);
						circle5Sprite.graphics.beginFill(attributeColor(att75Label.text));
						circle5Sprite.graphics.drawCircle(att75Label.x - 15, att75Label.y + 7, 5);
						circle5Sprite.graphics.endFill();
						
					}
					
					if (i == 7)
					{
						
						att85Label.text = clickPotion.attributes[7];
						
						circle5Sprite.graphics.lineStyle(1, 0x000000);
						circle5Sprite.graphics.beginFill(attributeColor(att85Label.text));
						circle5Sprite.graphics.drawCircle(att85Label.x - 15, att85Label.y + 7, 5);
						circle5Sprite.graphics.endFill();
						
					}
					
				}
				
			}
			
		}
		
		private function typeColor(type:String):uint
		{
			
			if (type == "plant")
			{
				
				return 0x008800;
				
			}
			else if (type == "animal")
			{
				
				return 0x000088;
				
			}
			else if (type == "other")
			{
				
				return 0x880000;
				
			}
			else 
			{
				
				return 0x000000;
				
			}
			
		}
		
		private function categoryColor(category:int):uint
		{
			
			if (category == 1)
			{
				
				return 0xFF0000;
				
			}
			else if (category == 2)
			{
				
				return 0x880000;
				
			}
			else if (category == 3)
			{
				
				return 0xF2EB1A;
				
			}
			else if (category == 4)
			{
				
				return 0x008800;
				
			}
			else if (category == 5)
			{
				
				return 0x00FF00;
				
			}
			else 
			{
				
				return 0x000000;
				
			}
			
		}
		
		private function attributeColor(attribute:String):uint
		{
			
			if (
				attribute == "fortify luck"
				|| attribute == "fortify strenght"
				|| attribute == "fortify endurance"
				|| attribute == "fortify agility"
				|| attribute == "fortify stamina"
				|| attribute == "fortify speed"
				|| attribute == "fortify intelligence"
				|| attribute == "fortify willpower"
				|| attribute == "fortify health"
				|| attribute == "fortify magika"
				|| attribute == "fortify personality"
				|| attribute == "lightning shield"
				|| attribute == "fire shield"
				|| attribute == "frost shield"
				|| attribute == "swift swim"
				|| attribute == "water walking"
				|| attribute == "water breathing"
				|| attribute == "levitation"
				|| attribute == "night eye"
				|| attribute == "invisibility"
				|| attribute == "light"
				|| attribute == "detect animal"
				|| attribute == "telekinesis"
				|| attribute == "reflect"
				|| attribute == "detect enchantment"
				|| attribute == "spell absorbtion"
				|| attribute == "dispell"
				|| attribute == "detect key"
				|| attribute == "cure blight disease"
				|| attribute == "cure common disease"
				|| attribute == "cure paralysis"
				|| attribute == "cure poison"
				|| attribute == "resist poison"
				|| attribute == "resist shock"
				|| attribute == "resist frost"
				|| attribute == "resist fire"
				|| attribute == "resist common disease"
				|| attribute == "feather"
			   )
			{
				
				return 0x008800;

			}
			else if (
					attribute == "restore agility"
					|| attribute == "restore health"
					|| attribute == "restore stamina"
					|| attribute == "restore luck"
					|| attribute == "restore magika"
					|| attribute == "restore strenght"
					|| attribute == "restore personality"
					|| attribute == "restore endurance"
					|| attribute == "restore intelligence"
					|| attribute == "restore willpower"
					|| attribute == "restore speed"
				    )
			{
				
				return 0x000088;

			}
			else if (
					attribute == "drain intelligence"
					|| attribute == "drain agility"
					|| attribute == "drain stamina"
					|| attribute == "drain personality"
					|| attribute == "drain willpower"
					|| attribute == "drain luck"
					|| attribute == "drain strenght"
					|| attribute == "drain health"
					|| attribute == "drain speed"
					|| attribute == "drain magika"
					|| attribute == "drain endurance"
					|| attribute == "burden"
					|| attribute == "poison"
					|| attribute == "paralysis"
					)
			{
				
				return 0x880000;
				
			}
			else 
			{
				
				return 0x000000;
				
			}
			
		}
		
		private function getTypeOfAttribute(attribute:String):String
		{
			
			if (
				attribute == "fortify luck"
				|| attribute == "fortify strenght"
				|| attribute == "fortify endurance"
				|| attribute == "fortify agility"
				|| attribute == "fortify stamina"
				|| attribute == "fortify speed"
				|| attribute == "fortify intelligence"
				|| attribute == "fortify willpower"
				|| attribute == "fortify health"
				|| attribute == "fortify magika"
				|| attribute == "fortify personality"
				|| attribute == "lightning shield"
				|| attribute == "fire shield"
				|| attribute == "frost shield"
				|| attribute == "swift swim"
				|| attribute == "water walking"
				|| attribute == "water breathing"
				|| attribute == "levitation"
				|| attribute == "night eye"
				|| attribute == "invisibility"
				|| attribute == "light"
				|| attribute == "detect animal"
				|| attribute == "telekinesis"
				|| attribute == "reflect"
				|| attribute == "detect enchantment"
				|| attribute == "spell absorbtion"
				|| attribute == "dispell"
				|| attribute == "detect key"
				|| attribute == "cure blight disease"
				|| attribute == "cure common disease"
				|| attribute == "cure paralysis"
				|| attribute == "cure poison"
				|| attribute == "resist poison"
				|| attribute == "resist shock"
				|| attribute == "resist frost"
				|| attribute == "resist fire"
				|| attribute == "resist common disease"
				|| attribute == "feather"
			)
			{
				
				return "P";
				
			}
			else if (
				attribute == "restore agility"
				|| attribute == "restore health"
				|| attribute == "restore stamina"
				|| attribute == "restore luck"
				|| attribute == "restore magika"
				|| attribute == "restore strenght"
				|| attribute == "restore personality"
				|| attribute == "restore endurance"
				|| attribute == "restore intelligence"
				|| attribute == "restore willpower"
				|| attribute == "restore speed"
			)
			{
				
				return "N";
				
			}
			else if (
				attribute == "drain intelligence"
				|| attribute == "drain agility"
				|| attribute == "drain stamina"
				|| attribute == "drain personality"
				|| attribute == "drain willpower"
				|| attribute == "drain luck"
				|| attribute == "drain strenght"
				|| attribute == "drain health"
				|| attribute == "drain speed"
				|| attribute == "drain magika"
				|| attribute == "drain endurance"
				|| attribute == "burden"
				|| attribute == "poison"
				|| attribute == "paralysis"
			)
			{
				
				return "n";
				
			}
			else 
			{
				
				return "";
				
			}
			
		}
		
		private function setCostRange(value:int):int
		{
			
			//1: 150, 200, 250, 500 very expensive
			//2: 75, 100 expensive
			//3: 20, 23, 25, 30, 50 average
			//4: 5, 10 cheap
			//5: 1, 2 very cheap
			
			if (value >= 1 && value <= 5)
			{
				
				return 5;
				
			}
			else if (value > 5 && value <= 15)
			{
				
				return 4;
				
			}
			else if (value > 15 && value <= 60)
			{
				
				return 3;
				
			}
			else if (value > 60 && value <= 125)
			{
				
				return 2;
				
			}
			else if (value > 125)
			{
				
				return 1;
				
			}
			else 
			{
				
				return 0;
				
			}
			
		}
		
		private function setWeightRange(value:Number):int
		{
			
			//1: 10 very heavy
			//2: 2 heavy-ish
			//3: 1 somewhat heavy
			//4: 0.5 not very heavy
			//5: 0.1, 0.2 light
			
			if (value >= 0.1 && value <= 0.5)
			{
				
				return 5;
				
			}
			else if (value > 0.5 && value <= 1)
			{
				
				return 4;
				
			}
			else if (value > 1 && value <= 2)
			{
				
				return 3;
				
			}
			else if (value > 2 && value <= 5)
			{
				
				return 2;
				
			}
			else if (value > 5)
			{
				
				return 1;
				
			}
			else 
			{
				
				return 0;
				
			}
			
		}
		
	}
	
}