#!/bin/bash
# SPDX-FileCopyrightText: 2023 Ryusei Matsuki
# SPDX-License-Identifier: BSD-3-clause

ng() {
  echo "NG at Line $1"
  res=1
}

res=0

### PRIME FACTORIZATION TEST ###
out=$(echo "12" | python prime_factorization.py)
expected="12 の素因数分解結果: [2, 2, 3]"
echo "out: ${out}"
echo "expected: ${expected}"
[ "${out}" == "${expected}" ] || ng $LINENO

out=$(echo "60" | python prime_factorization.py)
expected="60 の素因数分解結果: [2, 2, 3, 5]"
echo "out: ${out}"
echo "expected: ${expected}"
[ "${out}" == "${expected}" ] || ng $LINENO

out=$(echo "97" | python prime_factorization.py)
expected="97 の素因数分解結果: [97]"
echo "out: ${out}"
echo "expected: ${expected}"
[ "${out}" == "${expected}" ] || ng $LINENO

out=$(echo "1" | python prime_factorization.py)
expected="1 の素因数分解結果: []"
echo "out: ${out}"
echo "expected: ${expected}"
[ "${out}" == "${expected}" ] || ng $LINENO

### ADD MORE TEST CASES IF NEEDED ###

[ "$res" == 0 ] && echo "OK" || echo "Test Failed"

