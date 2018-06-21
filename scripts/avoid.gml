foundGoodDir = 0;          //script is called when movement in a direction is impossible,
current = argument0 + 2;    //to find nearest possible direction.
checkedOpposite = 0;
check_x = 0;         //arg0 is the impossible direction.
check_y = 0;
while(!foundGoodDir) {
    check_x = lengthdir_x(moveSpeed,current);
    check_y = lengthdir_y(moveSpeed,current);
    if(place_meeting(x+check_x,y+check_y,argument1)) { //arg1 is the object blocking movement
        if(!checkedOpposite) {                            //in arg0's direction.
            current -= (current - argument0) * 2;
            checkedOpposite = 1;
        } else {                                    //checks arg0 + 2, then arg0 - 2,
            current += sign(current - argument0) * 2;  //then arg0 + 4, arg0 - 4, etc.
            checkedOpposite = 0;
          }
        if(current == argument0 - 90) {
            check_x = lengthdir_x(8,current);       //preventing infinite loops while testing. why are infinites happening
            check_y = lengthdir_y(8,current);
            foundGoodDir = 1;
        }
    } else {
        foundGoodDir = 1;
    }
}

x += check_x;   //when good direction is found,
y += check_y;     //move calling instance in that direction.
