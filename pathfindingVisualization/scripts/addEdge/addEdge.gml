graph = argument0;
src = argument1;
dest = argument2;
weight = argument3;

// Add an edge from src to dest. A new node is added to the adjacency 
// list of src. The node is added at the beginning 
newNode = newAdjListNode(dest, weight); 
newNode.next = ds_list_find_value(graph.array, src).head; 
//ds_list_find_value(graph.array, src).head = newNode;

// Since graph is undirected, add an edge from dest to src also 
newNode = newAdjListNode(src, weight); 
newNode.next = ds_list_find_value(graph.array, dest).head;
//ds_list_find_value(graph.array, dest).head = newNode;
