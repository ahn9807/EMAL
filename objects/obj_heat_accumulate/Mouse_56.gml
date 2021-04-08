///show visual effect when heat is accumulated to the area
//set alpha
if(obj_heat_controller.charge_level != 0 && obj_heat_controller.control_mode == 0)
{
	instance_create_depth(mouse_x, mouse_y, 100, obj_heat_accumulate);
	current_instance = instance_nearest(mouse_x, mouse_y, obj_heat_accumulate);
	current_instance.image_alpha = obj_heat_controller.charge_level/5;
	//set alarm
	alarm[0] = room_speed;
}