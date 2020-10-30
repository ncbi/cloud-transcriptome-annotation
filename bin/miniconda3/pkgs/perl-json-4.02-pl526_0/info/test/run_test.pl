my $expected_version = "4.02";
print("import: JSON\n");
use JSON;

if (defined JSON->VERSION) {
	my $given_version = JSON->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . JSON->VERSION . '
');

}
