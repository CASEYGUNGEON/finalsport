//run by defending player when hit
//objs: fist (in a With{})

if(isLocal) {
    addmeter = 0;
    if(!player.hurt) {
        if((collision_line(x,y,other.x,other.y,obj_gen_enviro_hitbox,true,true) == noone)) {
            addmeter = 1;
            if(collision_line(x,y,other.x,other.y,obj_block,true,true) == noone) {
                player.hurt = 1;
                player.hurtToggle = player.hurt;
                if(isOnline)
                {
                    with player {
                        if(!global.networkJoin) {
                            htme_globalSet("remotehurthost",1,buffer_bool);
                        } else {
                            htme_globalSet("remotehurtclient",1,buffer_bool);
                        }
                    }
                }
                obj_camera.shake = 20;
            } else {
                with player {
                    scr_blocked();
                }
                with other {
                    scr_got_blocked();
                }
            }
        }
    }
    
    if(addmeter) {
        if(isOnline)
        {
            if(!global.networkJoin) {
                tempvar = htme_globalGet("clientmeter") + 20;
                if(tempvar <= 100) {
                    htme_globalSet("clientmeter",tempvar,buffer_u8);
                }
            } else {
                tempvar = htme_globalGet("hostmeter") + 20;
                if(tempvar <= 100) {
                    htme_globalSet("hostmeter",tempvar,buffer_u8);
                }
            }
        }
        else
        {
            if(player.meter < 100)
            {
                player.meter += 5;
            }
        }
    }
}
