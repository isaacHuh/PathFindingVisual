
// parent node for bfs
parentNode = pointer_null;

isStart = false;
isEnd = false;
isVisited = false;
isRoute = false;
isBlock = false;

randomize();
nodeWeight = irandom(100);
show_debug_message(nodeWeight);
weight = infinity;

image_alpha = 0.5 + nodeWeight/200;

adjNodesArray = array_create(4,pointer_null);
d = sprite_height;

j = 0;
if(instance_position(x+d,y,obj_node)){
	inst = instance_position(x+d,y,obj_node);
	adjNodesArray[j] = inst;
	j++;
}

if(instance_position(x-d,y,obj_node)){
	inst = instance_position(x-d,y,obj_node);
	adjNodesArray[j] = inst;
	j++;
}

if(instance_position(x,y+d,obj_node)){
	inst = instance_position(x,y+d,obj_node);
	adjNodesArray[j] = inst;
	j++;
}

if(instance_position(x,y-d,obj_node)){
	inst = instance_position(x,y-d,obj_node);
	adjNodesArray[j] = inst;
	j++;
}

alarm[0] = 10;
