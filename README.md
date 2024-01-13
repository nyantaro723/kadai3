# prime_factorizationコマンド

![test](https://github.com/nyantaro723/prime_factorization/actions/workflows/test.yml/badge.svg)

このコマンドは、素因数分解の計算を行うためのものです。

<br>

## ダウンロード

```
$ git clone https://github.com/nyantaro723/prime_factorization.git
$ cd prime_factorization/
```

## 使い方

```
$ echo "2以上の整数" | ./prime_factorization
```

と入力すると、指定した整数を素因数分解した値が出力されます。

<br>

* 実行例
```
$ echo 12 | ./prime_factorization
```

と入力し、実行すると、

```
12 の素因数分解結果: [2, 2, 3]
```

と出力されます。

## 必要なソフトウェア

* Python
  * テスト済みバージョン: 3.7～3.10

## テスト環境

* Ubuntu 20.04

## 著作権・ライセンス
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます． 

© 2024 Ryusei Matsuki
