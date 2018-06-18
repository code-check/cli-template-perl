# コマンドラインアプリケーション(CLI アプリ)作成用テンプレート(Python3.x)

[main.pl](main.pl) を編集して，CLI アプリを実装してください。
チャレンジ内でファイルの作成が許可されていれば、可読性等のためにファイルを分割する事も可能です。

## コマンドライン引数の取得方法

[main.pl](main.pl) 内で定義されている `main` という関数に、コマンドラインからの引数が渡されます。

```perl
sub main {
    # code to run ...
}

main(@ARGV);
```

## コマンド実行結果の標準出力への出力

標準で提供されている `print` メソッドを利用することで、標準出力への出力が可能です。

```perl
print(result);
```

## 外部ライブラリの追加方法

外部ライブラリをインストールする場合には用意された _[cpanfile](./cpanfile)_ に依存関係を記載してください。
**[Carton](https://github.com/perl-carton/carton)** を使った外部ライブラリのインストールがサポートされています。

次の [cpanfile のサンプル](https://metacpan.org/pod/cpanfile#SYNOPSIS) が動作する事は確認されています。

```cpanfile
requires 'Plack', '1.0'; # 1.0 or newer
requires 'JSON', '>= 2.00, < 2.80';
 
recommends 'JSON::XS', '2.0';
conflicts 'JSON', '< 1.0';
 
on 'test' => sub {
      requires 'Test::More', '>= 0.96, < 2.0';
        recommends 'Test::TCP', '1.12';
};
 
on 'develop' => sub {
      recommends 'Devel::NYTProf';
};
 
feature 'sqlite', 'SQLite support' => sub {
      recommends 'DBD::SQLite';
};
```
