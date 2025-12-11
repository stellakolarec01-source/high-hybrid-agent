package;

import flixel.FlxG;
import openfl.media.Sound;

class Conductor {
    public static var song:Sound;
    public static var songPosition:Float = 0;
    public static var startTime:Float = 0;

    public static function loadSong(name:String) {
        song = FlxG.sound.load("assets/songs/" + name + ".ogg", 1, true);
        song.play();
        startTime = FlxG.game.ticks / 1000;
    }

    public static function updateSongTime() {
        songPosition = (FlxG.game.ticks / 1000) - startTime;
    }

    public static function loadChart(name:String):Array<Dynamic> {
        var raw = sys.io.File.getContent("assets/charts/" + name + ".json");
        return haxe.Json.parse(raw);
    }
}
