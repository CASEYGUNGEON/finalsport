attack = 1;
alarm[1] = 29;

if(!global.networkJoin) {
    htme_globalSet("hostmeter",0,buffer_u8);
} else {
    htme_globalSet("clientmeter",0,buffer_u8);
}

switch(self.playerChar) {
    case "rail": {
        if(!htme_isLocal()) {
            global.railability = 1;
            alarm[4] = room_speed * 5;
        }
        break;
    }
    case "hira": {
        with(obj_knife) {
            returnattack = 1;
            glowalpha = 1 / room_speed;
            audio_play_sound(snd_knifecharge,50,false);
        }
        break;
    }



}
