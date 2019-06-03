///scr_get_sprite(character,angle,[att/move])

if(argument_count == 3) {
    return(asset_get_index(string(argument[0]) + "_" + string(argument[1]) + "_" + string(argument[2])));
} else {
    if(argument_count == 2) {
    return(asset_get_index(string(argument[0]) + "_" + string(argument[1])));
    }
}
