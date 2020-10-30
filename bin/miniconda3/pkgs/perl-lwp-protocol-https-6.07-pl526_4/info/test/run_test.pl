my $expected_version = "6.07";
print("import: LWP::Protocol::https\n");
use LWP::Protocol::https;

if (defined LWP::Protocol::https->VERSION) {
	my $given_version = LWP::Protocol::https->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Protocol::https->VERSION . '
');

}
