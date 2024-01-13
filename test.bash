#!/bin/bash
# SPDX-FileCopyrightText: 2023 Ryusei Matsuki
# SPDX-License-Identifier: BSD-3-clause

ng() {
  echo "Test failed: $1"
  exit 1
}

prime_factorization() {
  # 素因数分解のプログラムをコピー
  # ...

  # テストケース
  test_cases=(
    "12:2,2,3"
    "60:2,2,3,5"
    "84:2,2,3,7"
    "97:97"
    "1:"
  )

  for test_case in "${test_cases[@]}"; do
    IFS=":" read num expected_result <<< "$test_case"
    result=$(python prime_factorization.py <<< "$num")
    if [ "$result" != "$expected_result" ]; then
      ng "Input: $num, Expected: $expected_result, Got: $result"
    fi
  done

  echo "OK"
}

# 素因数分解のプログラムをテスト
prime_factorization

