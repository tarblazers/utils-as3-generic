package utils
{
	public class MathUtils
	{
		public function MathUtils()
		{
		}
		
		
		public static function getRandomIntegerBetween(startNum:int, endNum:int):int
		{
			var result:int = int(MathUtils.getRandomNumberBetween(startNum-1,endNum+1));
			
			if(result < startNum)
				result = startNum;
			if(result > endNum)
				result = endNum;
			
			return result;
		}
		
		
		public static function getRandomNumberBetween(startNum:Number=0, endNum:Number=0):Number
		{
			var resultNum:Number = startNum + (Math.random()*(endNum - startNum));	//scaled-diff added to start value
			
			return  resultNum > endNum ? endNum : resultNum;
		}
		
		
	}
}