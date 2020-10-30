my $expected_version = "0.3";
print("import: Try::Tiny\n");
use Try::Tiny;

if (defined Try::Tiny->VERSION) {
	my $given_version = Try::Tiny->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Try::Tiny->VERSION . '
');

}
