package;

import cxx.SharedPtr;
import Move;
import Player;
import Result;

class MyPlugin {
	@:expose
	public static function sum(a:Int, b:Int):Int {
		return a + b;
	}

	static function main() {
	
		var playerA:Player = {name: "Simon", move: Paper}
		var playerB:Player = {name: "Nicolas", move: Rock}

		
		var result = switch [playerA.move, playerB.move] {
			case [Rock, Scissors] | [Paper, Rock] | [Scissors, Paper]: Winner(cast playerA);
			case [Rock, Paper] | [Paper, Scissors] | [Scissors, Rock]: Winner(cast playerB);
			case _: Draw;
		}

		switch result {
			case Winner(player):
				trace('${player.name} wins!');

			case Draw:
				trace('Draw!');

			default:
				trace('Unknown result');
		}
	}
}
