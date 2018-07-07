var hurtbox;

switch (global.playerChar) {
    case "rail": {
        hurtbox = instance_create(x,y,obj_fist);
        hurtbox.sprite_index = hurtbox_rail;
        hurtbox.image_angle = (floor((dir + 22) / 45) + 2) * 45;
        hurtbox.image_xscale = scale;
        hurtbox.image_yscale = scale;
        hurtbox.startup = 15;
        onCooldown = 1;
        alarm[0] = 60;      //attack cooldown
        alarm[1] = 29;      //attack animation duration
        return hurtbox;
        break;
    }
        
    case "hira": {
        if(ammo > 0) {
            hurtbox = instance_create(x,y,obj_knife);
            hurtbox.movex = lengthdir_x(8,dir);
            hurtbox.movey = lengthdir_y(8,dir);
            hurtbox.image_xscale = scale;
            hurtbox.image_yscale = scale;
            hurtbox.image_angle = dir;
            hurtbox.startup = 5;
            onCooldown = 1;
            alarm[0] = 30;
            alarm[1] = 14;
            ammo -= 1;
            return hurtbox;
        }
        alarm[0] = 1;
        alarm[1] = 1;
        break;
    }
}
