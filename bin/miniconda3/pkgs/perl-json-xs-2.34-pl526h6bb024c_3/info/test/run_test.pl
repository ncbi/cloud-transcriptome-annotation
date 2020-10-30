my $expected_version = "2.34";
print("import: JSON::XS\n");
use JSON::XS;

if (defined JSON::XS->VERSION) {
	my $given_version = JSON::XS->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . JSON::XS->VERSION . '
');

}
