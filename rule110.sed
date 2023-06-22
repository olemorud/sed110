#!/usr/bin/sed -Ef

# Translate to intermediate step
# - Lowercase means previous state was 0
# - Uppercase means previous state was 1
# - [Aa] means new state is 1
# - [Bb] means new state is 0
# - Assume edges are 0
:a
s/([B1])1([B1$])/\1B\2/g # 111 -> 0
t a
:b
s/([B1])0([B1$])/\1a\2/g # 101 -> 1
t b
:c
s/([a0^])0([B1$])/\1a\2/g # 001 -> 1
t c

# Translate to final results
s/a/1/g
s/B/0/g
