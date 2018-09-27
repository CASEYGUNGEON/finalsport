var hurtbox;

hurtbox = instance_create(x,y,obj_block);

hurtbox.blockDisjoint = 40;
hurtbox.image_angle = dir
hurtbox.disjoint = 80;

hurtbox.image_xscale = scale;
hurtbox.image_yscale = scale;

hurtbox.startup = 4;
hurtbox.player = id;
onCooldown = 1;

hurtbox.caught = 0;
