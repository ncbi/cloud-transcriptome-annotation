my $expected_version = "6.04";
print("import: File::Listing\n");
use File::Listing;

if (defined File::Listing->VERSION) {
	my $given_version = File::Listing->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . File::Listing->VERSION . '
');

}
