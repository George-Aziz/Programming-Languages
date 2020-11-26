#!/bin/perl
#AUTHOR: George Aziz
#DATE CREATED: 31/08/2020
#PURPOSE: Find all files on a computer system with extension '.conf'
use File::Find;

my $dir = "/"; # Starting Directory

find(\&print_if_conf_file_found, $dir);

sub print_if_conf_file_found
{
    return unless /\.conf$/; #Will only continue if it the file has .conf extension
    print "$File::Find::name\n" #Prints the file name and its location in the system
}