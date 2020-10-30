my $expected_version = "3.75";
print("import: File::Spec::Functions\n");
use File::Spec::Functions;

if (defined File::Spec::Functions->VERSION) {
	my $given_version = File::Spec::Functions->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . File::Spec::Functions->VERSION . '
');

}
