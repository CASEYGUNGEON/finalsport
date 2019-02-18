//scr_giveMeter(player,amount)
// player: 0 = host, 1 = client

if(argument0) {
    tempvar = htme_globalGet("clientmeter") + argument1;
    if(tempvar <= 100) {
        htme_globalSet("clientmeter",tempvar,buffer_u8);
    }
} else {
    tempvar = htme_globalGet("hostmeter") + argument1;
    if(tempvar <= 100) {
        htme_globalSet("hostmeter",tempvar,buffer_u8);
    }
}
