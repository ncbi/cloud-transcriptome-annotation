my $expected_version = "3.72";
print("import: HTML::Filter\n");
use HTML::Filter;

if (defined HTML::Filter->VERSION) {
	my $given_version = HTML::Filter->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTML::Filter->VERSION . '
');

}
print("import: HTML::Parser\n");
use HTML::Parser;

if (defined HTML::Parser->VERSION) {
	my $given_version = HTML::Parser->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTML::Parser->VERSION . '
');

}
