V = argument0;

graph = instance_create_layer(0,0,"Instances", obj_graph); 
graph.V = V; 

// Create an array of adjacency lists. Size of array will be V  

// Initialize each adjacency list as empty by making head as NULL 
for (i = 0; i < V; ++i){ 
	ds_list_add(graph.array, instance_create_layer(0,0,"Instances",obj_adj_list));
	//ds_list_find_value(graph.array, i).head = pointer_null;
}

return graph; 