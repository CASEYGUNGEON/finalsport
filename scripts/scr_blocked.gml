//run by player who blocked

self.blockeddir = (dir + 180) % 360 //point_direction(other.x,other.y,x,y);
movex += lengthdir_x(15,blockeddir);
movey += lengthdir_y(15,blockeddir);
