disjointx = lengthdir_x(disjoint,dir);
disjointy = lengthdir_y(disjoint,dir);
var hurtbox = instance_create(x+disjointx,y+disjointy,obj_fist);
hurtbox.disjointx = disjointx;
hurtbox.disjointy = disjointy;      //draw hurtbox <disjoint> length away from player
hurtbox.depth = depth + 1;

hurtbox.image_xscale = scale;
hurtbox.image_yscale = scale;   //resize hurtbox

hurtbox.startup = attackStartup;
onCooldown = 1;
alarm[0] = attackCooldown;      //time until player can attack again
alarm[1] = attackDuration;      //time until player can do move anims

switch (argument0) {
    case "rail": {
        hurtbox.sprite_index = hurtbox_rail;
        hurtbox.image_angle = (floor((dir + 22) / 45) + 2) * 45;
    }

}




return hurtbox;
