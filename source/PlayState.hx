package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.group.FlxGroup;
import flixel.FlxObject;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
		private var background:FlxSprite;
		private var egg:FlxSprite;
		private var eggGroup:FlxGroup;
		private var nestGroup:FlxGroup;
		private var nest:FlxSprite;
		private var nestDown:Bool = false;
		private var myText:FlxText;
		private var score:Int = 0;
		private var coup:FlxSprite;

	private function myCallback(Object1:FlxObject, Object2:FlxObject):Void
	{
		Object1.destroy();
		score += 1;
	}

	private function eggGen():Void
	{
	for(i in 0...10)
		{
			egg = new FlxSprite(FlxG.random.int(0, 340),0,"assets/images/egg.png");
			egg.acceleration.y = FlxG.random.int(50, 400);

			
			eggGroup.add(egg);
		}

	}


	override public function create():Void

	{

		


		background = new FlxSprite(0,0,"assets/images/barnyard.png");
		background.moves = false;
		background.solid = false;
		add(background);

		myText = new FlxText(0, 0, 500); // x, y, width
		myText.text = "Score: " + score;
		myText.setFormat(20, FlxColor.WHITE);
		add(myText);

		coup = new FlxSprite(0,30, "assets/images/coup.png");
		add(coup);

		eggGroup = new FlxGroup();

		eggGen();

		add(eggGroup);
		nest = new FlxSprite(150,400,"assets/images/nest.png");
		nestGroup = new FlxGroup();
		nestGroup.add(nest);
		add(nest);
		//super.create();

	}

	override public function update(elapsed:Float):Void
	{
		myText.text = "Score: " + score;
		super.update(elapsed);
		FlxG.overlap(eggGroup,nestGroup,myCallback);

		#if (desktop || web)
		
		 nest.x = FlxG.mouse.screenX - nest.frameWidth/2;
	
		#elseif mobile
		for (touch in FlxG.touches.list)
		{
			nest.x = touch.screenX - nest.frameWidth/2;
		}
		#end

		if (FlxG.keys.justReleased.S)
		{
			eggGen();
		}



	}
}
