my $expected_version = "1.76";
print("import: URI\n");
use URI;

if (defined URI->VERSION) {
	my $given_version = URI->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . URI->VERSION . '
');

}
