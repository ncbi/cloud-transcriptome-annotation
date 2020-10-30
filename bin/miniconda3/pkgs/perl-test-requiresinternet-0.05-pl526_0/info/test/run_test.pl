my $expected_version = "0.05";
print("import: Test::RequiresInternet\n");
use Test::RequiresInternet;

if (defined Test::RequiresInternet->VERSION) {
	my $given_version = Test::RequiresInternet->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Test::RequiresInternet->VERSION . '
');

}
