#include <scn/scn.h>
#include <iostream>
#include <string_view>

int main() {
    std::string word;
    auto result = scn::scan("Hello world", "{}", word);

    std::cout << word << '\n'; // Will output "Hello"
    std::cout << result.string() << '\n';  // Will output " world!"
}
~