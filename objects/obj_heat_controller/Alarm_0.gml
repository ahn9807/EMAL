///increase heat charge level each second (CHO, 170829)
if(charge_level<3&&global.mouse_left_down&&obj_heat_capacitor.heat_level-charge_level>-3)
{
charge_level++;
alarm[0] = room_speed;
}
else if(charge_level>-3&&global.mouse_right_down&&obj_heat_capacitor.heat_level-charge_level<3)
{
charge_level--;
alarm[0] = room_speed;
}