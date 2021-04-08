///show variables
draw_set_color(c_black);
draw_text(obj_player.x+100, obj_player.y-100, "Charge_level : "+string(charge_level)+"\n"+"LMB : "+string(global.mouse_left_down)+"\n"+"RMB : "+string(global.mouse_right_down)+"\n" + "Mode : "+string(control_mode));