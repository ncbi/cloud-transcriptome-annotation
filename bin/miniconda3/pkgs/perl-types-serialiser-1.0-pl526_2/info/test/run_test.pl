my $expected_version = "1.";
print("import: Types::Serialiser\n");
use Types::Serialiser;

if (defined Types::Serialiser->VERSION) {
	my $given_version = Types::Serialiser->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Types::Serialiser->VERSION . '
');

}
print("import: Types::Serialiser::Error\n");
use Types::Serialiser::Error;

if (defined Types::Serialiser::Error->VERSION) {
	my $given_version = Types::Serialiser::Error->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Types::Serialiser::Error->VERSION . '
');

}
