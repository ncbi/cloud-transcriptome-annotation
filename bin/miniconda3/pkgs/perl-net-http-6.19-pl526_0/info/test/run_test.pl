my $expected_version = "6.19";
print("import: Net::HTTP\n");
use Net::HTTP;

if (defined Net::HTTP->VERSION) {
	my $given_version = Net::HTTP->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Net::HTTP->VERSION . '
');

}
print("import: Net::HTTP::Methods\n");
use Net::HTTP::Methods;

if (defined Net::HTTP::Methods->VERSION) {
	my $given_version = Net::HTTP::Methods->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Net::HTTP::Methods->VERSION . '
');

}
print("import: Net::HTTP::NB\n");
use Net::HTTP::NB;

if (defined Net::HTTP::NB->VERSION) {
	my $given_version = Net::HTTP::NB->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Net::HTTP::NB->VERSION . '
');

}
print("import: Net::HTTPS\n");
use Net::HTTPS;

if (defined Net::HTTPS->VERSION) {
	my $given_version = Net::HTTPS->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Net::HTTPS->VERSION . '
');

}
