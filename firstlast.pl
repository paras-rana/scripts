$file="c:/scripts/file.txt";

print "How many lines do you want in the file (Min 5) :";
chomp ($lines=<STDIN>);
while ($lines<5){
	print "Please enter at least 5 lines :";
 	chomp ($lines=<STDIN>);
}
open FILE, ">$file" or die "Cannot open $file for write : $!";


for $i (1..$lines) {
	print FILE "This is line number $i.\n";
}

open FILE, "$file" or die "Cannot open $out for write :$!";


foreach (<FILE>){
	push (@list,$_);
}

print "$list[0]";
print "$list[$#list]";

