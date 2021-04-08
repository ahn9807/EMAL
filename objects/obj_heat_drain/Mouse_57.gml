///show visual effect when heat is drained from the area
//set alpha
if(obj_heat_controller.charge_level != 0 && obj_heat_controller.control_mode == 0)
{	
	instance_create_depth(mouse_x, mouse_y, 100, obj_heat_drain);
	image_alpha = abs(obj_heat_controller.charge_level/5);
	//set alarm
	alarm[0] = room_speed;
}