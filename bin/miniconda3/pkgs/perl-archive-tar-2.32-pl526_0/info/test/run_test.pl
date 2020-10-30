my $expected_version = "2.32";
print("import: Archive::Tar\n");
use Archive::Tar;

if (defined Archive::Tar->VERSION) {
	my $given_version = Archive::Tar->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Archive::Tar->VERSION . '
');

}
print("import: Archive::Tar::Constant\n");
use Archive::Tar::Constant;

if (defined Archive::Tar::Constant->VERSION) {
	my $given_version = Archive::Tar::Constant->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Archive::Tar::Constant->VERSION . '
');

}
print("import: Archive::Tar::File\n");
use Archive::Tar::File;

if (defined Archive::Tar::File->VERSION) {
	my $given_version = Archive::Tar::File->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Archive::Tar::File->VERSION . '
');

}
