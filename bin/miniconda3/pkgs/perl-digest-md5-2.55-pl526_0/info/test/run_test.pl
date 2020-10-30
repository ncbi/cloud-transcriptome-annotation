my $expected_version = "2.55";
print("import: Digest::MD5\n");
use Digest::MD5;

if (defined Digest::MD5->VERSION) {
	my $given_version = Digest::MD5->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Digest::MD5->VERSION . '
');

}
