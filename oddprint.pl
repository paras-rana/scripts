$line=1;
while (<>) {
if ($line%2!=0){
	print "Line No - $line : ";
	print $_ ;

}
$line++;
}
