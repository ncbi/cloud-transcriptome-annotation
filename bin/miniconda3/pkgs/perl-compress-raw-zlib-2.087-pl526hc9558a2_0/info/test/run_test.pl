my $expected_version = "2.087";
print("import: Compress::Raw::Zlib\n");
use Compress::Raw::Zlib;

if (defined Compress::Raw::Zlib->VERSION) {
	my $given_version = Compress::Raw::Zlib->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Compress::Raw::Zlib->VERSION . '
');

}
