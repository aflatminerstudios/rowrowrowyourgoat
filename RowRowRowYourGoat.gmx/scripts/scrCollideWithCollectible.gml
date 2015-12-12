///scrCollideWithCollectible(player, object)

player = argument0;
object = argument1;

///show_message("Hooray! You collected object " + string(object.id));

//Destroy collectable
with (object) {
  alarm[0] = 1;
}
