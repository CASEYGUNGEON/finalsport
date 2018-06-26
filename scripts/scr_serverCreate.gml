var port = argument0;

server = network_create_server_raw(network_socket_tcp, port, 20);

send_buffer = buffer_create(256, buffer_fixed, 1);

if(server < 0) {
    show_error("failed to create server.", true);
}

return server;
