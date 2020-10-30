my $expected_version = "1.88";
print("import: Net::SSLeay\n");
use Net::SSLeay;

if (defined Net::SSLeay->VERSION) {
	my $given_version = Net::SSLeay->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Net::SSLeay->VERSION . '
');

}
