/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(recovering<0){
	for(i=total-1; i>0; i--){
		seg_arr[i].x += (seg_arr[i-1].x-seg_arr[i].x)/6;
		seg_arr[i].y += (seg_arr[i-1].y-seg_arr[i].y)/6;
	}
	if(seg_arr[0].turn && turn <0 && turnrecover <0){
		turn = 6;
		turnrecover = 20;
	}

	if(turnrecover ==0){
		seg_arr[0].turn = false;
	}


	if(turn>0){
		seg_arr[0].y+=y_sp/6;
		seg_arr[0].image_angle+=30;
		turn--;
	}else if(turn==0){
		sp*=-1;
		seg_arr[0].x-=sp/6;
		turn--;
	}else{
		seg_arr[0].x-=sp/6;
		turnrecover--;
	}

	if(seg_arr[0].up_turn){
		y_sp = -32;
	}


	for(i=0; i<total; i++){
		if(seg_arr[i].hit == true){
			player_score+=10;
			curr = seg_arr[i];
			if(total==1){
				mush_x = 32*(curr.x/32);
				mush_y = 32*(curr.y/32);
				instance_create_depth(mush_x, mush_y, 0, obj_mushroom);
				instance_destroy(seg_arr[i]);
				instance_destroy();
				break;
			}
			if(i==0 ||i== total-1){
				mush_x = 32*(curr.x/32);
				mush_y = 32*(curr.y/32);
				instance_create_depth(mush_x, mush_y, 0, obj_mushroom);
				instance_destroy(seg_arr[i]);
				array_delete(seg_arr, i, 1);
				total--;
				seg_arr[0].head = true;
			}else{
				mush_x = 32*(curr.x/32);
				mush_y = 32*(curr.y/32);
				instance_create_depth(mush_x, mush_y, 0, obj_mushroom);
				new_curr = instance_create_depth(seg_arr[i+1].x, seg_arr[i+1].y, 0, obj_centipede);
				new_curr.y_sp = y_sp;
				new_curr.total = total - i - 1;
				for(j=0; j<new_curr.total; j++){
					new_curr.seg_arr[j] = seg_arr[i+j+1];
					new_curr.seg_arr[j].x-=sp/6;
				}
				new_curr.seg_arr[0].head = true;
				instance_destroy(seg_arr[i]);
				array_delete(seg_arr, i+1, total-i+1);
				total= i;
			}
			break;
		}
	}
	
	if(total==0){
		instance_destroy();
	}

}