// Games
import 'package:game_hub/modules/game.dart';

const FINGERS_ROUTE = '/fingers';
const TICK_TACK_TOE_ROUTE = '/tick-tack-toe';
const COIN_TOAST_ROUTE = '/coin-toaster';
const MEMORY_ROUTE = '/memory-game';
const ROCK_PAPER_SCISSORS_ROUTE = '/rock-paper-scissors';

const GAMES = [
  Game('lib/assets/fingers_battle.jpg', 'fingers battle', FINGERS_ROUTE),
  Game('lib/assets/tick_tack_toe.png', 'tick tack toe', TICK_TACK_TOE_ROUTE),
  Game('lib/assets/coin.jpg', 'coin toaster', COIN_TOAST_ROUTE),
  Game('lib/assets/memory.jpg', 'memory', MEMORY_ROUTE),
  Game('lib/assets/rock_paper_scissors.jpg', 'rock paper scissors',
      ROCK_PAPER_SCISSORS_ROUTE),
];

// page routs
