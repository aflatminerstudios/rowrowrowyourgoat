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
} else {
  
  //Destroy collectable
  with (object) {
    alarm[0] = 1;
  }
  
}
