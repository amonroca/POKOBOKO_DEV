var sprite = argument0;
var width = argument1;
var height = argument2;
var posx = argument3;
var posy = argument4;

var screen = surface_create(width,height);
surface_set_target(screen);

draw_sprite_ext(sprite,image_index,55,65,-1,image_yscale,image_angle,image_blend,image_alpha);

surface_reset_target();
draw_surface(screen,posx,posy);

return screen;

