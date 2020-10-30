my $expected_version = "2.16";
print("import: File::Path\n");
use File::Path;

if (defined File::Path->VERSION) {
	my $given_version = File::Path->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . File::Path->VERSION . '
');

}
