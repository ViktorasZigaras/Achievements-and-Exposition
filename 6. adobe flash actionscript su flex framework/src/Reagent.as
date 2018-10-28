package
{
	
	public class Reagent extends Object
	{
		
		public var id:int;
		public var rarity:int;
		public var costRange:int;
		public var weightRange:int;
		
		public var label:String;
		public var type:String;
		public var name:String;
		
		public var cost:Number;
		public var weight:Number;
		
		public var attributes:Array = new Array();
		
		public var hasNegative:Boolean;
		public var hasNeutral:Boolean;
		public var hasPositive:Boolean;
		
		public function Reagent()
		{
			
			//
			
		}
		
	}
	
}