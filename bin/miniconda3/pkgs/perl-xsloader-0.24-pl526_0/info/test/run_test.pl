my $expected_version = "0.24";
print("import: XSLoader\n");
use XSLoader;

if (defined XSLoader->VERSION) {
	my $given_version = XSLoader->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XSLoader->VERSION . '
');

}
