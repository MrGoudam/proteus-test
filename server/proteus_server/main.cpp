#include <iostream>
#include <unistd.h>
#include <vector>
#include <algorithm>
#include <numeric>
#include <cstring>

#include "tcpserver.h"


template <class Type>
void vectorShow(const std::vector<Type> &v) {
    for(const Type &el: v)
        std::cout << el << std::endl;
}

bool isSpace(const char& c) {
    return isspace(c);
}

std::vector<std::string> split(const std::string& s){
    using citer = std::string::const_iterator;
    std::vector<std::string> ret;
    citer i = s.cbegin();
    while(i != s.cend()){
        i = find_if_not(i, s.cend(), isSpace);
        citer j= find_if(i, s.cend(), isSpace);
        if(i != s.end()){
            ret.emplace_back(i, j);
            i = j;
        }
    }
    return ret;
}

int main()
{
    TcpServer server;
    if (!server.startServer(5555, 1)) return 1;

    while(true)
    {
        // Создание нового сокета для общения с клиентом
        if (server.incomingConnection()) {
            std::cout << "client connected!" << std::endl;
        }
        else {
            break;
        }

        switch(fork())
        {
            case -1:
                std::cerr << "fork" << std::endl;
                break;
            case 0:
                while(true)
                {
                    char buf[1024];
                    int bytes_read;
                    memset(buf, 0, 1024);

                    bytes_read = server.recv(buf, 1024);

                    if(bytes_read <= 0) {
                        std::cout << "client disconnected " << std::endl << std::endl;
                        break;
                    }
                    std::cout << "Message: " << buf << std::endl;

                    // Обработка сообщения клиента
                    std::vector<std::string> vectStr = split(buf);
                    std::vector<double> numbers;

                    for(const std::string &el: vectStr) {
                        try {
                            numbers.push_back(std::stod( el ));
                        } catch (...) {
                            continue;
                        }
                    }


                    // Отправка результа
                    if (!numbers.empty()) {
                        /*
                        // Для отправки суммы и отсортированного массива найденных чисел
                        std::sort(numbers.begin(), numbers.end());
                        std::string res;
                        for(const double &el: numbers)
                            res += std::to_string(el) + " ";
                        res += '\n';

                        double sum = std::accumulate(numbers.cbegin(), numbers.cend(), 0.0);
                        res += std::to_string(sum);
                        server.send(res.c_str(), res.size());
                        */
                        double sum = std::accumulate(numbers.cbegin(), numbers.cend(), 0.0);
                        std::string str = std::to_string(sum);
                        server.send(str.c_str(), str.size());
                    }
                    else {
                        server.send(buf, bytes_read);
                    }
                }
                server.socketDisc();
                _exit(0);
            default:
                server.socketDisc();
        }
    }

    return 0;
}
