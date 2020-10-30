my $expected_version = "3.15";
print("import: Storable\n");
use Storable;

if (defined Storable->VERSION) {
	my $given_version = Storable->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Storable->VERSION . '
');

}
