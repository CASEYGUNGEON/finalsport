//this script is run by the defending player's hitbox

if(!player.hurt) {
    if((collision_line(x,y,other.x,other.y,obj_gen_enviro_hitbox,true,true) == noone)) {
        if((collision_line(x,y,other.x,other.y,obj_block,true,true) == noone)) {
            player.hurt = 1;
            player.hurtToggle = player.hurt;
            with player {
                if(!global.networkJoin) {
                    htme_globalSet("remotehurthost",1,buffer_bool);
                } else {
                    htme_globalSet("remotehurtclient",1,buffer_bool);
                }
            }
            obj_camera.shake = 20;
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
