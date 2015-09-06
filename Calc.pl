print "Enter first number :";
chomp($num1 =<STDIN>);
while ($num1=~/\D/)
#comments
print "Enter Second number :";
chomp($num2 =<STDIN>);
while ($num2=~/\D/){
	print "Enter a valid number :";
	chomp($num2 =<STDIN>);
}
%operation=('1', 'Addition','2','Subtraction','3','Multiplication','4','Division');
%oper=('1', 'Add','2','Minus','3','Multi','4','Divide');

print "choose operation from the following list: \n";
foreach (sort keys %operation) {
        print "$_ \t $operation{$_}\n";
		}

print "Choose now: ";
chomp($operin=<STDIN>);

while ($operin!~/[1234]/){
	print "Enter a valid number :";
	chomp($operin =<STDIN>);
}
$m=$oper{$operin};
print $m;
&$m;
#if ($oper==1){
#	&Add;
#} elsif ($oper==2) {
	#&Multi;
#}
sub Add{
	$add=$num1+$num2;
	print " Sum of $num1 and $num2 is : $add";
}

sub Multi {
	$multi=$num1*$num2;
	print " Multiplication of $num1 and $num2 is : $multi"; 
}

sub Minus{
$minus = $num1-$num2;
print "Subtration of $num1 and $num2 is : $minus";
}

sub Divide{
$divide = $num1 / $num2;
print "Division of $num1 and $num2 is : $divide";
}
