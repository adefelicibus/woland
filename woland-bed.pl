# WOLAND-BED-TO-PROFILE 0.1 (15-02-2015)
#
# WOLAND-BED-TO-PROFILE is a software based on Perl for nucleotide length calculation using a .BED coordinate file as input.
# Please observe file requirements.
#
#
# USAGE
#
# perl woland-bed-to-profile.pl <file.bed> 
# 
# e.g.: perl woland-bed-to-profile.pl mouse_exome_mm9.bed
#
# INPUT FILE REQUIREMENTS
# 
# <file.bed> : Coordinate bed file. IDs must be in the format: chr1, chr2, chr3 ...



#! /usr/bin/perl

use List::Util qw(sum); #module for sum of chromosome coordinates
use strict;
use warnings;

# main Warning

unless (@ARGV){
	die "ERROR: USAGE: $0 filename.bed \n";	
}

# loading files

$input = $ARGV[0];
open (INPUT, $input);
@rawfile=<INPUT>;
close (INPUT);

unless (@rawfile){
	die "ERROR: Could not load .bed file\n";
}

# Start Screen

$datestring = localtime();
print "\n\nWOLAND BETA 1 - 01-12-2015\n";
print "Analysis started at $datestring\n";
print "Coordinate bed file           : $input\n";
print "\nOpening file .bed\n";


# loading outputs

open (OUTPUT, ">>WOLAND-BED-PROFILE-$input");

# Conversion of each column in a dedicated array
foreach $rawline (@rawfile){
	@i = split (/\t/, $rawline);
	chomp (@i);
	push (@chrbed, "$i[0]");
	push (@pos1, $i[1]);
	push (@pos2, $i[2]);
}

# Calculating lengths of fragments in .bed file

print "Calculating length (bp)...\n";

for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr1"){
		$tam_1[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr2"){
		$tam_2[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr3"){
		$tam_3[$i]=$pos2[$i]-$pos1[$i];
	}
}
	for my $i (0 .. $#pos1){
		if($chrbed[$i] eq "chr4"){
			$tam_4[$i]=$pos2[$i]-$pos1[$i];
	}
}
	for my $i (0 .. $#pos1){
		if($chrbed[$i] eq "chr5"){
			$tam_5[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr6"){
		$tam_6[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr7"){
		$tam_7[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr8"){
		$tam_8[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr9"){
		$tam_9[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr10"){
		$tam_10[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr11"){
		$tam_11[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr12"){
		$tam_12[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr13"){
		$tam_13[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr14"){
		$tam_14[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr15"){
		$tam_15[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr16"){
		$tam_16[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr17"){
		$tam_17[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr18"){
		$tam_18[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr19"){
		$tam_19[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr20"){
		$tam_20[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr21"){
		$tam_21[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chr22"){
		$tam_22[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chrX"){
		$tam_X[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chrY"){
		$tam_Y[$i]=$pos2[$i]-$pos1[$i];
	}
}
for my $i (0 .. $#pos1){
	if($chrbed[$i] eq "chrM"){
		$tam_M[$i]=$pos2[$i]-$pos1[$i];
	}
}
	
# Array for sum of fragment length for each chromosome.

push @res, sum(@tam_1);
push @res, sum(@tam_2);
push @res, sum(@tam_3);
push @res, sum(@tam_4);
push @res, sum(@tam_5);
push @res, sum(@tam_6);
push @res, sum(@tam_7);
push @res, sum(@tam_8);
push @res, sum(@tam_9);
push @res, sum(@tam_10);
push @res, sum(@tam_11);
push @res, sum(@tam_12);
push @res, sum(@tam_13);
push @res, sum(@tam_14);
push @res, sum(@tam_15);
push @res, sum(@tam_16);
push @res, sum(@tam_17);
push @res, sum(@tam_18);
push @res, sum(@tam_19);
push @res, sum(@tam_20);
push @res, sum(@tam_21);
push @res, sum(@tam_22);
push @res, sum(@tam_X);
push @res, sum(@tam_Y);
push @res, sum(@tam_M);

$total=sum(@res);
$i2=1;

##### SCREEN PRINTING FORMAT ####

print "\nSaving file WOLAND-BED-PROFILE-$input \n";
print "\n";
print "Total target nucleotide length\(bp\)\=$total"; 
print "\n";

##### CROMOSOME PROFILE PRINTING FORMAT ####


foreach $res (@res){
	if ($i2<=22){
		print OUTPUT "chr$i2\t";
		if ($res ne 0){
	    	print OUTPUT "$res\n";
	    }
	    else{
	    	print OUTPUT "\0\n";
		}
	    ++$i2;
	}
	if ($i2==23){
		print OUTPUT "chrX\t";
		if ($res ne 0){
			print OUTPUT "$res[22]\n";
		}
		else{
			print OUTPUT"\0\n";
		}
		++$i2;
	}
	if ($i2==24){
		print OUTPUT "chrY\t";
		if ($res ne 0){
			print OUTPUT "$res[23]\n";
		}
		else{
			print OUTPUT "\0\n";
		}
		++$i2;
	}
	if ($i2==25){
		print OUTPUT "chrM\t";
		if ($res ne 0){
			print OUTPUT "$res[24]\n";
		}
		else{
			print OUTPUT "\1\n";
		}
		++$i2;
	}
}
exit;

