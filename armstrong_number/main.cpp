#include "number_helpers.hpp"

int main(int argc, char **argv) {
    if (argc < 2) {
        cerr << "Correct unsigned max number must be provided." << endl;
        return 1;
    }
    const number from = 1;
    const number to = strtoull(argv[1], nullptr, 10);
    if (to == 0) {
        cerr << "Correct unsigned max number must be provided." << endl;
        return 1;
    }
    const mininumber thread_count = 4;
    numbers result = find_arm(from, to, thread_count);
    cout << result << endl;
    return 0;
}
