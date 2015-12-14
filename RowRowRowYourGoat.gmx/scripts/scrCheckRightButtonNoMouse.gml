///scrCheckRightButtonNoMouse()

if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord('X')) ||
  keyboard_check_pressed(ord('D')) || keyboard_check_pressed(ord('P'))) {
  return true;
}


return false;
