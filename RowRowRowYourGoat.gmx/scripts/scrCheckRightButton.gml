///scrCheckRightButton()

if (keyboard_check_pressed(vk_right)) {
  return true;
} else if (mouse_check_button_pressed(mb_any) && mouse_x > 640) {
    return true;
}


return false;
