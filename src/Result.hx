package;
import Move;
import Player;
import cxx.SharedPtr;
enum Result { 
    Winner(player: Player);
    Draw; 
  }