#ifndef TCPSERVER_H
#define TCPSERVER_H

class TcpServer {
public:
    TcpServer();
    ~TcpServer();

    bool startServer(const unsigned short &port, const unsigned short &queue_length);
    bool incomingConnection();
    void socketDisc();

    int send(const char* data, const int& size);
    int recv(char* buffer, const int& maxSize);

private:
    int _listener = -1;
    int _socketDescriptor = -1;
};

#endif // TCPSERVER_H
