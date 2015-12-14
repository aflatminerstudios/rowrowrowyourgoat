///scrCheckRightButtonNoMouse()

if (keyboard_check(vk_right) || keyboard_check(ord('X')) ||
  keyboard_check(ord('D')) || keyboard_check(ord('P'))) {
  return true;
}


return false;
