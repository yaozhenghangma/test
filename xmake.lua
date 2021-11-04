add_rules("mode.release", "mode.debug")

set_languages("c++17")

add_requires("cmake")

package("boost")
    on_fetch(function (package, opt)
         return package:find_package("cmake::Boost", opt)
    end)
package_end()

package("mpi")
    on_fetch(function (package, opt)
         return package:find_package("cmake::MPI", opt)
    end)
package_end()

add_requires("mpi")
add_requires("boost")

target("MMC")
    set_kind("binary")
    add_files("src/test.cpp")
    add_packages("mpi")
    add_packages("boost")