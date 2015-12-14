///scrCheckLeftButtonNoMouse()

if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord('Z')) ||
    keyboard_check_pressed(ord('A')) || keyboard_check_pressed(ord('Q'))) {
  return true;
}

return false;
