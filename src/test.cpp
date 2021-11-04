#include <mpi.h>
#include <boost/mpi.hpp>
#include <iostream>

namespace mpi = boost::mpi;

int main() {
    mpi::environment env;
    mpi::communicator world;
    std::cout << world.rank() << std::endl;
    return 0;
}