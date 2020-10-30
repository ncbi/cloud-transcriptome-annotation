my $expected_version = "3.15";
print("import: MIME::Base64\n");
use MIME::Base64;

if (defined MIME::Base64->VERSION) {
	my $given_version = MIME::Base64->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . MIME::Base64->VERSION . '
');

}
