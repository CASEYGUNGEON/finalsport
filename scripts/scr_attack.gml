var hurtbox;

switch (self.playerChar) {
    case "rail": {
        hurtbox = instance_create(x,y,obj_fist);
        hurtbox.sprite_index = hurtbox_rail;
        hurtbox.image_angle = (floor((dir + 22) / 45) + 2) * 45;
        hurtbox.image_xscale = scale;
        hurtbox.image_yscale = scale;
        hurtbox.startup = 16;
        hurtbox.player = id;
        hurtbox.ignore = hitbox;

        hurtbox.disjointx = 0;
        hurtbox.disjointy = 0;
        onCooldown = 1;
        alarm[0] = 60;      //attack cooldown
        alarm[1] = 29;      //attack animation duration
        audio_play_sound(snd_swipe,50,false);
        return hurtbox;
        break;
    }

    case "hira": {
        if(ammo > 0) {
            knifemovex = lengthdir_x(12,dir);
            knifemovey = lengthdir_y(12,dir);
            hurtbox = instance_create(x+(knifemovex * 5),y+(knifemovey * 5),obj_knife);
            hurtbox.movex = knifemovex;
            hurtbox.movey = knifemovey;
            hurtbox.image_xscale = scale * .75;
            hurtbox.image_yscale = scale * .75;
            hurtbox.image_angle = dir;
            hurtbox.startup = 5;
            hurtbox.ignore = hitbox;
            hurtbox.player = id;
            onCooldown = 1;
            alarm[0] = 30;
            alarm[1] = 14;
            ammo -= 1;
            audio_play_sound(snd_throw,50,false);
            return hurtbox;
        }
        alarm[0] = 1;
        alarm[1] = 1;
        break;
    }
}
