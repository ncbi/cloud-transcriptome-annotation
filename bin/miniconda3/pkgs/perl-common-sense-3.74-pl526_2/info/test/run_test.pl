my $expected_version = "3.74";
print("import: common::sense\n");
use common::sense;

if (defined common::sense->VERSION) {
	my $given_version = common::sense->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . common::sense->VERSION . '
');

}
