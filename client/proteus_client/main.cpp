#include <iostream>
#include <vector>
#include <string>

#include "tcpsocket.h"

int main()
{
    TcpSocket client;
    if (!client.connect("10.0.2.15", 5555)) return 1;

    while (true) {
        std::cout << "Enter message: ";
        std::string message;
        std::getline(std::cin, message);
        //std::cout << message<< std::endl;

        if (message.empty()) break;

        client.send(message.c_str(), message.size());

        char buf[1024];
        int num_characters = client.recv(buf, 1024);
        std::cout << "Received message: " << std::string(buf, num_characters) << std::endl << std::endl;
    }

    return 0;
}
