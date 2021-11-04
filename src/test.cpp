#include <mpi.h>
#include <boost/mpi.hpp>
#include <iostream>

int main() {
    mpi::environment env;
    mpi::communicator world;
    std::cout << world.rank() << std::endl;
    return 0;
}