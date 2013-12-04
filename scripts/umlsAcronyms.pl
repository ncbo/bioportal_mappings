#!/usr/bin/env perl

# Convert the list of acronyms into a long string that can be used in
# the Mapping.properties file.

$SABsep = ',';
$ONTsep = ';';

while(<>){
    chomp;
    @c = split(',');
    $ontSAB = @c[0];
    $ontVrtID = @c[1];
    @sab = split(';', $ontSAB);
    $n=@sab;
    if ($n == 1) {
        print "@sab[0]${SABsep}@sab[0]${SABsep}";
    } else {
        print "@sab[0]${SABsep}@sab[1]${SABsep}";
    }
    print "${ontVrtID}${ONTsep}";
}
print "\n";

