/// @description Insert description here
// You can write your code in this editor
//draw_text_ext_transformed_color(room_width/2, room_height/2, ds_list_size(list),5,5,1,1,0,c_black, c_black, c_black, c_black, 1);
if(list_exists){
	draw_text_color(room_width/2, room_height/2, ds_list_size(list),c_black, c_black, c_black, c_black, 1);
	draw_text_color(room_width/2, room_height/2+100, string(ds_list_find_value(list,0).weight),c_black, c_black, c_black, c_black, 1);
	draw_text_color(room_width/2, room_height/2+150, string(ds_list_find_value(list,1).weight),c_black, c_black, c_black, c_black, 1);
	draw_text_color(room_width/2, room_height/2+200, string(ds_list_find_value(list,2).weight),c_black, c_black, c_black, c_black, 1);
}