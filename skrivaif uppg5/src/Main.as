package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author JohnDenKloke
	 */
	public class Main extends Sprite 
	{
		var t:TextField = new TextField;
		private const a:int = 30;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			t.border = true;
			t.x = stage.stageWidth / 2 - t.width / 2;
			t.y = stage.stageHeight / 2 - t.height / 2;
			addChild(t);
			stage.addEventListener(MouseEvent.CLICK, Lådrörelse);
			
		}
		private function Lådrörelse(m:MouseEvent):void 
		{
			if (m.stageX < t.x)
			{
				t.x -= a;
			}
			if (m.stageX > t.x + t.width)
			{
				t.x += a;
			}
			if (m.stageY < t.y)
			{
				t.y -= a;
			}
			if (m.stageY > t.y + t.height) 
			{
				t.y += a ;
			}
		}
	}
	
}