/// scrDrawSpriteExtWithBlur(sprite_index, image_index, x, y, image_xscale, image_yscale, angle, color, alpha)

var alphaMultiplier = 0.9;
var blurOffset = 1;


// Clones
draw_sprite_ext(argument[0], argument[1], argument[2]+blurOffset, argument[3]+blurOffset, argument[4], argument[5], argument[6], argument[7], argument[8]*alphaMultiplier);
draw_sprite_ext(argument[0], argument[1], argument[2]+blurOffset, argument[3]-blurOffset, argument[4], argument[5], argument[6], argument[7], argument[8]*alphaMultiplier);
draw_sprite_ext(argument[0], argument[1], argument[2]-blurOffset, argument[3]+blurOffset, argument[4], argument[5], argument[6], argument[7], argument[8]*alphaMultiplier);
draw_sprite_ext(argument[0], argument[1], argument[2]-blurOffset, argument[3]-blurOffset, argument[4], argument[5], argument[6], argument[7], argument[8]*alphaMultiplier);

// Original
draw_sprite_ext(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8]);
