with(obj_red){
   if(global.jumping){
        sprite_index = spr_red_jump;
        image_speed = 0.6;
        }
   else if(global.rolling){
      sprite_index = spr_red_roll;
      image_speed = 0.7;
      if(x == xprevious){
         image_speed = 0;
         image_index = 0;
         }
      }
   else if(x != xprevious){
      sprite_index = spr_red_walk;
      image_speed = 0.6;
      }
   /*else if(hspeed < 0){
      sprite_index = spr_red_walk;
      image_speed = 0.6;
      }*/        
   else{
        sprite_index = spr_red_stop;
        image_speed = 0.25;
        }
   }
