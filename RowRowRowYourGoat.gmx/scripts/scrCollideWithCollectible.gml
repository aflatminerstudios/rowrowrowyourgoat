///scrCollideWithCollectible(player, object)

player = argument0;
object = argument1;

if (object.object_index == objCheckpoint) {
  if (object.number == global.nextGoal) {
    global.nextGoal++
    with (object) {
      alarm[0] = 1;
    }
  }  
} else if (object.object_index == objTimer) {

  with (objGameControl) {
    timerOn = false;
    alarm[1] = 5 * room_speed;
  }

  with (object) {
    alarm[0] = 1;
  }

} else {
  
  //Destroy collectable
  with (object) {
    alarm[0] = 1;
  }
  
}
