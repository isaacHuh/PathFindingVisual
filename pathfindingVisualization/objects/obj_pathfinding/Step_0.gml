/// @description Insert description here
// You can write your code in this editor
if(list_exists && active && dijkstra){
	if(finding){
		scr_insertion_sort(list);
		i = 0;
		while(ds_list_find_value(list,i).weight != infinity){
			node = ds_list_find_value(list,i);
			for(j = 0; j < 4; j++){
				obj = node.adjNodesArray[j];
				//show_debug_message(obj);
				if(obj != pointer_null){
					if(obj.isEnd){
						endNode = obj;
						finding = false;
					}
					//&& !obj.isVisited 
					if(obj.weight > node.weight+obj.nodeWeight 
						&& !obj.isBlock){
						obj.weight = node.weight+obj.nodeWeight ;
						obj.isVisited = true;
					}
				}
			}
			
			//show_debug_message(i);
			i++;
			
			if(i >= ds_list_size(list)){
				finding = false;
			}
		}	
	}else{
		if(!route){
			ds_list_clear(routeList);
			
			node = endNode;
			ds_list_insert(routeList,0,node);
			while(node.weight != 0){
				minRoute = node.adjNodesArray[0];
				for(i = 1; i < 4; i++){
					obj = node.adjNodesArray[i];
					//show_debug_message(i);
					if(obj == pointer_null){
						continue;
					}
					
					if(obj.weight < minRoute.weight){
						minRoute = obj;
					}
				}
				
				//minRoute.isRoute = true;
				//minRoute.image_alpha = 1;
				node = minRoute;
				
				ds_list_insert(routeList,0,node);
			}
			//node.isRoute = true;
			
			for(i = 0; i < ds_list_size(routeList); i++){
				currNode = ds_list_find_value(routeList, i);
				currNode.isRoute = true;
			}
			
			route = true;
		}
	}
}


if(list_exists && active && bfs){
	
	if(finding){
		scr_insertion_sort(list);
		ds_queue_enqueue(bfsQueue,ds_list_find_value(list,0));
		while(!ds_queue_empty(bfsQueue) && finding){
			node = ds_queue_head(bfsQueue);
			//show_debug_message(node);
			node.isVisited = true;
			for(i = 0; i < 4; i++){
				if(node.adjNodesArray[i] == pointer_null){
					break;
				}
				
				if(node.adjNodesArray[i].isVisited || node.adjNodesArray[i].isBlock){
					continue;
				}
				
				node.adjNodesArray[i].parentNode = node;
				node.adjNodesArray[i].isVisited = true;
				node.adjNodesArray[i].weight = node.weight + node.adjNodesArray[i].nodeWeight;
				
				if(node.adjNodesArray[i].isEnd){
					endNode = node.adjNodesArray[i];
					finding = false;
					break;
				}
				
				ds_queue_enqueue(bfsQueue, node.adjNodesArray[i]);
			}
			ds_queue_dequeue(bfsQueue);
			
			if(!finding){
				finding = false;
				break;
			}
		}
	}else{
		if(!route){
			ds_list_clear(routeList);
			
			node = endNode;
			ds_list_insert(routeList,0,node);
			
			while(node.parentNode != pointer_null){
				//node.isRoute = true;
				node = node.parentNode;
				ds_list_insert(routeList,0,node);
			}
			
			for(i = 0; i < ds_list_size(routeList); i++){
				currNode = ds_list_find_value(routeList, i);
				currNode.isRoute = true;
			}
			
			route = true;
		}
	}
}
