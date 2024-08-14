#include <iostream>
#include <zmq.h>

int main(int argc, char* argv[]){
    int status = 0;
    void* zctx = zmq_ctx_new();
    status = zmq_ctx_term(zctx);
    std::cout << "Hello World!" << std::endl;
    return 0;
}