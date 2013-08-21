
// array_destroy(array)

var arrayID, keys, deleteStart, n;

arrayID = argument[0];

for(n=1;n<=15;n+=1) {
	if (is_string(argument[n])) {
		keys[n-1] = argument[n];
	} else {
		if (argument[n] != 0) {
			keys[n-1] = argument[n];
		} else {
			totalKeys = n-1;
			break;
		}
	}
}

deleteStart = false;
currMap = arrayID;
for(n=0;n<totalKeys;n+=1) {
	//if not last key
	if (n != (totalKeys-1)) {
		if (ds_map_exists(global.arrayMap, string(currMap)+'>'+string(keys[n]))) {
			currMap = ds_map_find_value(global.arrayMap, string(currMap)+'>'+string(keys[n]));
		} else {
			show_error("Key '"+string(keys[n])+"' does not exist in array", false);
		}
	} else {
		//if last key
		//if set to an array (to have more children), fix it
		if (ds_map_exists(global.arrayMap, string(currMap)+'>'+string(keys[n]))) {
			deleteStart = true;
			arrayID = ds_map_find_value(global.arrayMap, string(currMap)+'>'+string(keys[n]));
			ds_map_delete(global.arrayMap, string(currMap)+'>'+string(keys[n]));
		}
		ds_map_delete(currMap, keys[n]);
	}
}
if ((totalKeys = 0) || (deleteStart)) {
	sym_destroy_climb(arrayID);
}



