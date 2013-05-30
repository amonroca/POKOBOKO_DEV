var A = argument0;
var B = argument1;

if(keyboard_check_pressed(UP) == true){
    scriptAritimetica(A,B,'SOMA');
    }
else if(keyboard_check_pressed(DOWN) == true){
    scriptAritimetica(B,A,'SUB');
    }
else if(keyboard_check_pressed(LEFT) == true){
    scriptAritimetica(A,B,'MULT');
    }
else if(keyboard_check_pressed(RIGHT) == true){
    scriptAritimetica(A,B,'DIV');
    }
