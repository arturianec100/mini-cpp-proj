#pragma once

#include "common.hpp"

mininumber digits_count(number num) {
    mininumber count = 0;
    while (num != 0) {
        count++;
        num /= 10;
    }
    return count;
}

ilist number_digits(number num) {
    size_t count = digits_count(num);
    ilist lst; lst.reserve(count);
    for (auto n = count; n > 0; --n) {
        auto divn = n - 1 ? num / pow(10, n - 1) : num;
        lst.push_back(static_cast<number>(floor(divn)) % 10);
    }
    return move(lst);
}

bool is_armstrong_number(number num) {
    size_t count = digits_count(num);
    ilist digits = number_digits(num);
    transform(begin(digits), end(digits), begin(digits),
                [count](auto n) {
                    return pow(n, count);
                });
    return accumulate(begin(digits), end(digits), number{0}) == num;
}

ostream& operator <<(ostream& s, ilist& lst) {
    s << '[';
    for (auto i = 0; i < lst.size() - 1; ++i) {
        s << lst[i] << ", ";
    }
    s << lst[lst.size() - 1] << ']';
    return s;
}
