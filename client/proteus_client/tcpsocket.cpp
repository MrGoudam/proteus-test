#include <iostream>
#include <arpa/inet.h>
#include <sys/ioctl.h>
#include <unistd.h>

#include "tcpsocket.h"

TcpSocket::TcpSocket() {}

TcpSocket::~TcpSocket() {
    // Закрытие соединения
    close(_socketDescriptor);
}

bool TcpSocket::connect(const std::string &ip, const unsigned short int &port)
{    
    // Инициализация сокета
    _socketDescriptor = socket(AF_INET, SOCK_STREAM, 0);
    if(_socketDescriptor < 0)
    {
        std::cerr << "Error when create socket" << std::endl;
        return false;
    }

    // Заполнение адреса сервера
    sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);
    inet_pton(AF_INET, ip.c_str(), &addr.sin_addr);

    // Установка соединения с сервером
    if(::connect(_socketDescriptor, reinterpret_cast<sockaddr*>(&addr), sizeof(addr)) < 0)
    {
        std::cerr << "Error when connect to host: " << ip
                  << " with port: " << port
                  << std::endl;
        return false;
    }

    return true;
}

int TcpSocket::send(const char *data, const int &size)
{
    // Отправка сообщения
    return ::send(_socketDescriptor, data, size, 0);
}

int TcpSocket::recv(char *buffer, const int &maxSize)
{
    // Получение сообщения
    return ::recv(_socketDescriptor, buffer, maxSize, 0);
}
