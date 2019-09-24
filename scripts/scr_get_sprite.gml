///scr_get_sprite(character,angle,[att/move])
str = "";
for(i = 0;i<argument_count;i++)
{
    str += string(argument[i]);
    if(i+1<argument_count)
    {
        str += "_";
    }
}
return(asset_get_index(str));
/* 
    if(argument_count == 3) {
        return(asset_get_index(string(argument[0]) + "_" + string(argument[1]) + "_" + string(argument[2])));
    } else {
        if(argument_count == 2) {
        return(asset_get_index(string(argument[0]) + "_" + string(argument[1])));
        }
    }
*/
