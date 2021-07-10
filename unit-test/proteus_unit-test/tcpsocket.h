#ifndef TCPSOCKET_H
#define TCPSOCKET_H

class TcpSocket {
public:
    TcpSocket();
    ~TcpSocket();

    bool connect(const std::string& ip, const unsigned short int& port);
    int send(const char* data, const int& size);
    int recv(char* buffer, const int& maxSize);

private:
    int _socketDescriptor = -1;
};

#endif // TCPSOCKET_H
