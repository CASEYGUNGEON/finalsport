startx = x;
starty = y;
backx = 4 * sign((image_angle + 90.5) % 360 - 180);
backy = 4 * sign(image_angle - 179.5);
val = 1;

while(instance_place(x,y,obj_gen_enviro_left) && instance_place(x,y,obj_gen_enviro_right) && instance_place(x,y,obj_gen_hitbox)) {
    val = 0;
    x += backx;
    if((instance_place(x,y,obj_gen_enviro_left) ^^ instance_place(x,y,obj_gen_enviro_right)) && instance_place(x,y,obj_gen_hitbox)) {
        val = 1;
    }
}

x = startx;

while(instance_place(x,y,obj_gen_enviro_top) && instance_place(x,y,obj_gen_enviro_bottom) && instance_place(x,y,obj_gen_hitbox)) {
    val = 0;
    y -= backy;
    if((instance_place(x,y,obj_gen_enviro_top) ^^ instance_place(x,y,obj_gen_enviro_bottom)) && instance_place(x,y,obj_gen_hitbox)) {
        val = 1;
    }
}

y = starty;

return val;
