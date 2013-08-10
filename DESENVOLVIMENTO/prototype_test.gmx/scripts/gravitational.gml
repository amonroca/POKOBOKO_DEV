if(place_empty(x,y+1)){
    gravity_direction = 270;
    gravity = 1;
    }
else{
     gravity_direction = 270;
     gravity = 0;
     }
     
if(vspeed == MAX_SPEED)
   vspeed = MAX_SPEED;
