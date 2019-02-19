//run by attack that landed

    blockeddir = (player.dir + 180) % 360 //point_direction(other.x,other.y,x,y);
    player.movex += lengthdir_x(15,blockeddir);
    player.movey += lengthdir_y(15,blockeddir);
