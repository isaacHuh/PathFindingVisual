/// @description Insert description here
// You can write your code in this editor
list = ds_list_create();
routeList = ds_list_create();

list_exists = false;
finding = true;
route = false;
active = false;
endNode = pointer_null;

dijkstra = false;
bfs = true;
bfsQueue = ds_queue_create();

depth = -1;
alarm[0] = 20;