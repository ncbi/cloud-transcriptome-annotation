my $expected_version = "1.03";
print("import: Digest::HMAC\n");
use Digest::HMAC;

if (defined Digest::HMAC->VERSION) {
	my $given_version = Digest::HMAC->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Digest::HMAC->VERSION . '
');

}
