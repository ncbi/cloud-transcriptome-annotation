my $expected_version = "0.2304";
print("import: File::Temp\n");
use File::Temp;

if (defined File::Temp->VERSION) {
	my $given_version = File::Temp->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . File::Temp->VERSION . '
');

}
