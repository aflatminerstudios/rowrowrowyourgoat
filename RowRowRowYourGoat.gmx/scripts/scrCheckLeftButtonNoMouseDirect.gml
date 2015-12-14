///scrCheckLeftButtonNoMouse()

if (keyboard_check(vk_left) || keyboard_check(ord('Z')) ||
    keyboard_check(ord('A')) || keyboard_check(ord('Q'))) {
  return true;
}

return false;
