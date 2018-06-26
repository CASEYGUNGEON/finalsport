#define scr_server_handle_connect

var socket_id = argument0;

network = instance_create(0,0, obj_network);
network.socket_id = socket_id;

#define scr_server_handle_disconnect

var socket_id = argument0;

with network {
    instance_destroy();
}

#define scr_server_handle_message

var socket_id = argument0;
buffer = argument1;

while(true) {
    buffer_seek(send_buffer, buffer_seek_start, 0);
    var message_id = buffer_read(buffer, buffer_u8);
    
    switch(message_id) {
        case 1: {
            global.player2Name = buffer_read(buffer, buffer_string);
            break;
        }
        case 2: {
            global.player2Char = buffer_read(buffer, buffer_string);
            break;
        }
        case 3: {
            var xx = buffer_read(buffer, buffer_u16);
            var yy = buffer_read(buffer, buffer_u16);
            obj_player2.x = xx;
            obj_player2.y = yy;
            break;
        }
        case 4: {
            var angle = buffer_read(buffer,buffer_string);
            player2.sprite_index = scr_getSprite(global.player2Char,angle);
            break;
        }
    }
    if(buffer_tell(buffer) == buffer_get_size(buffer)) {
        break;
    }
}
