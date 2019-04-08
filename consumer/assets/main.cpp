
#include "Poco/MD5Engine.h"
#include "Poco/DigestStream.h"
#include <iostream>

int main()
{
    Poco::MD5Engine md5;
    Poco::DigestOutputStream ds(md5);
    ds << "abcdefghijklmnopqrstuvwxyz";
    ds.close();
    std::cout << "Hello World! Here's the MD5 hash: " << Poco::DigestEngine::digestToHex(md5.digest()) << std::endl;

    #if defined _DEBUG
        std::cout << "This is Debug exe" << std::endl;
    #else
        std::cout << "This is a Release exe" << std::endl;
    #endif

    return 0;
}
