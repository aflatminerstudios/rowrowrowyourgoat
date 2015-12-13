///scrCollideWithCollectible(player, object)

player = argument0;
object = argument1;

if (object.object_index == objCheckpoint) {
  if (object.number == global.nextGoal) {
    //Advance to next goal
    global.nextGoal++;
    
    with (objCheckpoint) {
      if (number == global.nextGoal) {
        if (instance_number(objCheckpoint) == number) {
          sprite_index = sprFinalCheckpoint;
        } else {
          sprite_index = sprCurrentCheckpoint;
        }
      }
    }
    
    with (object) {
      //alarm[0] = 1;
      sprite_index = sprPastCheckpoint;
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
