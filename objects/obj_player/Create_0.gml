/// @description Insert description here
// You can write your code in this editor
hspd = 0;
vspd = 0;
movespd = 4;


/// this code require for room change do not change! (code by AHN)
room_to = noone;
room_from = noone;
dif_x = 0;
dif_y = 0;

//tile map info (code by ahn)
var l = layer_get_id("layer_collision");
tilemap = layer_tilemap_get_id(l);

//sprite info (code by ahn)
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);

//for dialog
dialog = [];
dialog_line = 0;
