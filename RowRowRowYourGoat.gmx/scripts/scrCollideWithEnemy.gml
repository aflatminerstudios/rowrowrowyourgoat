///scrCollideWithEnemy(player, enemy)

player = argument0;
enemy = argument1;

if (!player.bouncing) {
  ///Time for player to move in frames
  timeToPush = 1 * room_speed;
  
  ///show_message("Oh no!, you collided with enemy " + string(enemy.id));
  e = instance_create(player.x, player.y, objExplosion);
  e.parent = player;
  e.alarm[0] = timeToPush;  
  
  player.curFrame = player.numFrames + 1;
  player.curForward = 0;
  player.bouncing = true;
  player.alarm[0] = timeToPush;
  player.bounceDec = bounceMax / timeToPush;
  player.bounceDir = point_direction(enemy.x, enemy.y, player.x, player.y);
  player.bounceStartDir = player.direction;
  player.speed = player.bounceSpeed;

  snd = choose(sndExplosion1, sndExplosion2, sndExplosion4);
  audio_play_sound(snd, 1, false);
  
  
}
