///scrCheckRightButton()

if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord('X')) ||
  keyboard_check_pressed(ord('D')) || keyboard_check_pressed(ord('P'))) {
  return true;
} else if (mouse_check_button_pressed(mb_any) && mouse_x > 640) {
    return true;
}


return false;
