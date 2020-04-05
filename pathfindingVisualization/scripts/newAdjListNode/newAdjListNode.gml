dest = argument0;
weight = argument1;

newNode = instance_create_layer(-100,-100,"Instances", obj_adj_list_node)
newNode.dest = dest; 
newNode.weight = weight; 
newNode.next = pointer_null; 
return newNode; 