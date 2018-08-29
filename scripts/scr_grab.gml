var hurtbox;

grabDisjointx = lengthdir_x(grabDisjoint,dir);
grabDisjointy = lengthdir_y(grabDisjoint,dir);

hurtbox = instance_create(x+grabDisjointx,y+grabDisjointy,obj_grab);
hurtbox.image_angle = dir;
hurtbox.disjoint = grabDisjoint;

hurtbox.image_xscale = scale;
hurtbox.image_yscale = scale;

hurtbox.startup = 4;
hurtbox.player = id;
onCooldown = 1;

alarm[0] = 76;      //attack cooldown
alarm[1] = 36;      //attack animation duration

return hurtbox;

