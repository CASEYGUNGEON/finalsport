if(!player.hurt) {
        if((collision_line(x,y,other.x,other.y,obj_gen_enviro_hitbox,true,true) == noone)) {
            if((collision_line(x,y,other.x,other.y,obj_block,true,true) == noone)) {
                player.hurt = 1;
                player.hurtToggle = player.hurt;
            } else {
                with player {
                    scr_blocked();
                }
                with other {
                    scr_gotBlocked();
                }
            }
        }
}
