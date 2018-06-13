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
If you want to use external libraries, do the following:

- Write the library name and version in [requirements.txt](requirements.txt)
- Example:   
```
numpy==1.11.0
requests==2.12.4
```
