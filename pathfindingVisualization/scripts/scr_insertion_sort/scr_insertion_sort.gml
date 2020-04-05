list = argument0;

for (i = 1; i < ds_list_size(list); i++) 
{  
    key = ds_list_find_value(list,i);  
    j = i - 1;  
  
   
    while (j >= 0 && ds_list_find_value(list,j).weight > key.weight) 
    {  
        ds_list_replace(list,j+1,ds_list_find_value(list,j));  
        j = j - 1;  
    }  
	ds_list_replace(list,j+1,key);  
}  
 
  