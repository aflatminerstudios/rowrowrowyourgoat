///End the level

t = 0;
with (objGameControl) {
  t = timer;
}

global.nextLevel += 1;
global.totalScore += t;

room_goto(global.levelList[global.course, global.nextLevel])
