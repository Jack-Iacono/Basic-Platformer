if(mode != TRANS_MODE.OFF){
	draw_set_color(c_black);
	draw_rectangle(0,0,width,percent * h_half, false);
	draw_rectangle(0,height,width, height - (percent*h_half), false);
}