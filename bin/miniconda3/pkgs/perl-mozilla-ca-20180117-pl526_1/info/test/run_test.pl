my $expected_version = "20180117";
print("import: Mozilla::CA\n");
use Mozilla::CA;

if (defined Mozilla::CA->VERSION) {
	my $given_version = Mozilla::CA->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Mozilla::CA->VERSION . '
');

}
