///scrCheckLeftButton()

if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord('Z')) ||
    keyboard_check_pressed(ord('A')) || keyboard_check_pressed(ord('Q'))) {
  return true;
} else if (mouse_check_button_pressed(mb_any) && mouse_x < 640) {
    return true;
}

return false;
