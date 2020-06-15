#pragma once

#include "common.hpp"

inline bool is_arm(number n) {
    number s = 0;
    mininumber e = static_cast<mininumber>(log10(n) + 1);
    for (auto v = n; v != 0; v /= 10) s += pow(v % 10, e);
    return s == n;
}

template <typename T>
using vec_vec = vector<vector<T>>;

template <typename T>
vector<T> merge_vectors(vec_vec<T> const& vecs) {
    vector<T> result;
    size_t size = 0;
    for (auto& inner : vecs) { size += inner.size(); }
    result.reserve(size);
    for (auto& inner : vecs) {
        result.insert(end(result), begin(inner), end(inner));
    }
    return result;
}

numbers find_arm(number from, number to, mininumber thread_count) {
    number chunk_size = (to - from) / thread_count;
    auto fn = [](number n, number t) {
        numbers result; result.reserve(t - n);
        for (; n <= t; ++n) {
            if (is_arm(n)) {
                result.push_back(n);
            }
        }
        return result;
    };
    vector<future<numbers>> futures(thread_count);
    for (mininumber i = 0; i < thread_count - 1; ++i) {
        number from_ = from + (chunk_size * i);
        number to_ = from_ + chunk_size;
        futures[i] = async(launch::async, fn, from_, to_);
    }
    futures.back() = async(launch::async, fn, from + (chunk_size * (thread_count - 1)), to);
    vec_vec<number> chunks;
    for (auto& fut : futures) { chunks.push_back(fut.get()); }
    numbers result = merge_vectors(chunks);
    sort(begin(result), end(result));
    return result;
}

ostream& operator <<(ostream& s, numbers const& lst) {
    s << '[';
    if (!lst.empty()) {
        for_each(begin(lst), end(lst) - 1, [&s](number num) {
            s << num << ", ";
        });
        s << lst.back();
    }
    s << ']';
    return s;
}
