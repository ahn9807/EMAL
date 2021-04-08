if(keyboard_check(vk_space))
{	
	scr_player_move(movespd * 4)
}
else
scr_player_move(movespd);
scr_player_tree("layer_treesystem");
