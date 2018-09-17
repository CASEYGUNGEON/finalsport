if(!player.hurt) {
    player.hurt = (collision_line(x,y,other.x,other.y,obj_gen_enviro_hitbox,true,true) == noone) - block;
    player.hurtToggle = player.hurt;
}
