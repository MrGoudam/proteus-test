#include <iostream>
#include <unistd.h>
#include <arpa/inet.h>

#include "tcpserver.h"


TcpServer::TcpServer() {}
TcpServer::~TcpServer()  {}

bool TcpServer::startServer(const unsigned short int &port, const unsigned short int &queue_length) {
    sockaddr_in addr;
    // Инициализация сокета
    _listener = socket(AF_INET, SOCK_STREAM, 0);
    if(_listener < 0) {
        std::cerr << "socket" << std::endl;
        return false;
    }

    // Заполнение адреса сервера
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);
    addr.sin_addr.s_addr = htonl(INADDR_ANY);

    // Именование сокета
    if(bind(_listener, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
        std::cerr << "bind" << std::endl;
        return false;
    }

    // Ожидание запросов со стороны клиентов
    listen(_listener, queue_length);
    return true;
}

bool TcpServer::incomingConnection() {
    _socketDescriptor = accept(_listener, NULL, NULL);
    if(_socketDescriptor < 0) {
        std::cerr << "accept" << std::endl;
        return false;
    }
    return true;
}

void TcpServer::socketDisc() {
    close(_socketDescriptor);
}

int TcpServer::send(const char *data, const int &size)
{
    return ::send(_socketDescriptor, data, size, 0);
}

int TcpServer::recv(char *buffer, const int &maxSize)
{
    return ::recv(_socketDescriptor, buffer, maxSize, 0);
}
