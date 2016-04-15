package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/music/music-goes-here.txt", "assets/music/music-goes-here.txt");
			type.set ("assets/music/music-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/data-goes-here.txt", "assets/data/data-goes-here.txt");
			type.set ("assets/data/data-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/sounds/sounds-go-here.txt", "assets/sounds/sounds-go-here.txt");
			type.set ("assets/sounds/sounds-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/egg2.png", "assets/images/egg2.png");
			type.set ("assets/images/egg2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/coup.png", "assets/images/coup.png");
			type.set ("assets/images/coup.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/egg.png", "assets/images/egg.png");
			type.set ("assets/images/egg.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/chicken.png", "assets/images/chicken.png");
			type.set ("assets/images/chicken.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/barnyard.png", "assets/images/barnyard.png");
			type.set ("assets/images/barnyard.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/egg3.png", "assets/images/egg3.png");
			type.set ("assets/images/egg3.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/egg4.png", "assets/images/egg4.png");
			type.set ("assets/images/egg4.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/nest.png", "assets/images/nest.png");
			type.set ("assets/images/nest.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/sounds/flixel.ogg", "flixel/sounds/flixel.ogg");
			type.set ("flixel/sounds/flixel.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/sounds/beep.ogg", "flixel/sounds/beep.ogg");
			type.set ("flixel/sounds/beep.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/fonts/nokiafc22.ttf", "flixel/fonts/nokiafc22.ttf");
			type.set ("flixel/fonts/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/fonts/monsterrat.ttf", "flixel/fonts/monsterrat.ttf");
			type.set ("flixel/fonts/monsterrat.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/images/ui/button.png", "flixel/images/ui/button.png");
			type.set ("flixel/images/ui/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
