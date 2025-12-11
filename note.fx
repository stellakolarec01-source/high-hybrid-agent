package;

import flixel.FlxSprite;
import flixel.FlxG;

class Note extends FlxSprite {
    public var strumTime:Float;
    public var lane:Int;

    public function new(time:Float, lane:Int) {
        super(0, 0);
        this.strumTime = time;
        this.lane = lane;

        loadGraphic("assets/images/note.png");
        x = lane * 200 + 200;
    }

    public function updateNote() {
        y = (Conductor.songPosition - strumTime) * 0.4;
    }
}
