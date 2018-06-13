#!/usr/bin/env perl

use 5.010000;
use strict;
use warnings;

sub main {
	# このコードは引数と標準出力を用いたサンプルコードです。
	# このコードは好きなように編集・削除してもらって構いません。
	# ---
	# This is a sample code to use arguments and outputs.
	# Edit and remove this code as you like.

	foreach my $i (0 .. $#_) {
		print("argv[$i] $_[$i]\n");
	}
}

main(@ARGV);
