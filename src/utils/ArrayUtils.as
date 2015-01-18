package utils
{
	public class ArrayUtils
	{
		public function ArrayUtils()
		{
		}
		
		
		public static function shuffleArray(sourceArray:Array):Array
		{
			var randomIndex:uint;
			var randomItem:*;
			var lenArray:uint = sourceArray.length;
			for (var idxitem:int = lenArray-1; idxitem >= 0 ; idxitem--) 
			{
				randomIndex = Math.floor(Math.random()*(idxitem+1));
				randomItem = sourceArray[randomIndex];
				sourceArray[randomIndex] = sourceArray[idxitem];
				sourceArray[idxitem] = randomItem;
			}
			
			return sourceArray;
		}
		
	}
}