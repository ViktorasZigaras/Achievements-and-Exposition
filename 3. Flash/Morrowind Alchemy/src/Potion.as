package
{
	
	public class Potion extends Object
	{
		
		public var id:int;
		public var rarity:int;
		public var costRange:int;
		public var weightRange:int;
		
		public var label:String;
		
		public var cost:Number;
		public var weight:Number;
		
		public var attributes:Array = new Array();
		public var parents:Array = new Array();
		
		public var hasNegative:Boolean = false;
		public var hasNeutral:Boolean = false;
		public var hasPositive:Boolean = false;
		
		public function Potion()
		{
			
			//
			
		}
		
	}
	
}