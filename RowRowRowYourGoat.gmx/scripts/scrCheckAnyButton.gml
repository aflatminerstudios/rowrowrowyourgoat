///scrCheckAnyButton()

if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
  return true;
}

return false;
