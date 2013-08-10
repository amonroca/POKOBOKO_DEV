var obj = argument0;
var velocity = argument1;
var movespeed = VELOCITY;
with(obj){

if argument1 = "left" {
   dir = -1
   }
else if argument1 = "right" {
     dir = 1
     }

anglesweep = -90+40*dir;
anglerem = 100;
pathclear = 0;

while (anglerem >= 0 && pathclear = 0){
      anglesweep += 5*dir;
      anglerem -= 5;
      groundspotx = x+lengthdir_x(movespeed,anglesweep)
      groundspoty = y+lengthdir_y(movespeed,anglesweep)
      if place_free(groundspotx,groundspoty) && !place_free(groundspotx,groundspoty+5)
             pathclear = 1 
      }

if (pathclear == 1 && !place_free(x,y+1)){
   x+=lengthdir_x(movespeed,anglesweep)
   y+=lengthdir_y(movespeed,anglesweep)
   move_contact_solid(270,15)
   vspeed = 0
   hspeed = 0
}

else if place_free(x+lengthdir_x(movespeed, 90-90*dir), y)
     x += dir*max(movespeed-abs(hspeed), 0)

else{
     move_contact_solid(90-90*dir, max(movespeed-abs(hspeed), 0))
     movingleft = 0
     movingright = 0
}
}
