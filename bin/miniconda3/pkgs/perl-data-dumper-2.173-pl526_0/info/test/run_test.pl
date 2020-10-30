my $expected_version = "2.173";
print("import: Data::Dumper\n");
use Data::Dumper;

if (defined Data::Dumper->VERSION) {
	my $given_version = Data::Dumper->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Data::Dumper->VERSION . '
');

}
