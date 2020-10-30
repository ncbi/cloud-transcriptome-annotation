my $expected_version = "1.52";
print("import: Scalar::Util\n");
use Scalar::Util;

if (defined Scalar::Util->VERSION) {
	my $given_version = Scalar::Util->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Scalar::Util->VERSION . '
');

}
