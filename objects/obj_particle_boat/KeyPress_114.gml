///test particle emitter
em_boat = part_emitter_create(global.ps);
part_emitter_region(global.ps, em_boat, mouse_x-4, mouse_x+4, mouse_y-4, mouse_y+4, pt_shape_line, ps_distr_gaussian);
part_emitter_stream(global.ps, em_boat, global.pt_boat, 100);