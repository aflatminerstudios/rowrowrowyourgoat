///End the level

t = 0;
with (objGameControl) {
  t = timer;
}

global.nextLevel += 1;
global.totalScore += t;

nextLevel = room;

room_goto(nextLevel);
