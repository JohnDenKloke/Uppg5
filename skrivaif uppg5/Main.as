package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TextEvent;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author JohnDenKloke
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var attack:int = Math.random() * 10;
			var hp:int = Math.random() * 100;
			var hp2:int = Math.random() * 100;
			var attack2:int = Math.random() * 10;
			var t:TextField = new TextField;
			for ( var i:int = 1; i <= 5; i++)
			{
				t.appendText( "round " + String(i) + ":\n");
				hp -= attack;
				hp2 -= attack2;
				// hp för den andre?
				// skapa en cool mening
				if (hp <=0)
				{
					hp = 0;
				}
				if (hp2 <= 0)
				{
					hp2 = 0;
				}
				var battletext:String = "Satan deals " + String(attack) + " damage, Gud has " +String(hp) + " left.\n"
				var battletext2:String = "Gud deals " + String(attack2) + " damage, Satan has " + String(hp2) + " left. \n"
				t.appendText(battletext);
				t.appendText(battletext2);
				if (i == 5)
				{
					if (hp > hp2)
					{
						t.appendText("GOD WINS!!!");
					}
					else
					{
						t.appendText("SATAN WINS!!!");
					}
				}
			}
			t.wordWrap = true;
			t.width = 380;
			t.height = 400;
			addChild(t);
		}
		
	}
	
}