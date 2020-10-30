my $expected_version = "1.1";
print("import: IO::Zlib\n");
use IO::Zlib;

if (defined IO::Zlib->VERSION) {
	my $given_version = IO::Zlib->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Zlib->VERSION . '
');

}
