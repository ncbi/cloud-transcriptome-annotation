my $expected_version = "6.04";
print("import: LWP::MediaTypes\n");
use LWP::MediaTypes;

if (defined LWP::MediaTypes->VERSION) {
	my $given_version = LWP::MediaTypes->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::MediaTypes->VERSION . '
');

}
