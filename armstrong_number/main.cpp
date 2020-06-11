#include "number_helpers.hpp"

int main(int argc, char **argv) {
    if (argc < 2) {
        cerr << "Correct unsigned max number must be provided." << endl;
        return 1;
    }
    number to = strtoull(argv[1], nullptr, 10);
    if (to == 0) {
        cerr << "Correct unsigned max number must be provided." << endl;
        return 1;
    }
    ilist result = rv::iota(number{1}, to)
            | rv::filter(is_armstrong_number)
            | rng::to_vector;
    cout << result << endl;
    return 0;
}
