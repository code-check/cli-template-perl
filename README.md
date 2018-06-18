# Command line application template for Perl

Implement CLI application by editing [main.pl](main.pl).  
You may add new files to keep your code clean, if it is allowed in your challenge.

## How to get input parameters

In [main.pl](main.pl), there is a function called `main`, which receives command line arguments as-is.

```perl
sub main {
    # code to run ...
}

main(@ARGV);
```

## How to output result

You can use the standard `print()` method to output results to standard output.

``` perl
print("text to output");
```

## Install External Libraries

To install external libraries, write dependencies in _[cpanfile](./cpanfile)_.
Dependencies will be install by using **[Carton](https://github.com/perl-carton/carton)**.

Following sample [from cpanfile](https://metacpan.org/pod/cpanfile#SYNOPSIS) has been verified to installs dependencies as expected.

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
