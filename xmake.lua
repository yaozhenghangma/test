add_rules("mode.release", "mode.debug")

set_languages("c++17")

add_requires("cmake")
add_requires("scnlib")

target("MMC")
    set_kind("binary")
    add_files("src/test.cpp")
    add_packages("scnlib")