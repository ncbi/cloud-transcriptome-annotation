my $expected_version = "2.066";
print("import: IO::Socket::SSL\n");
use IO::Socket::SSL;

if (defined IO::Socket::SSL->VERSION) {
	my $given_version = IO::Socket::SSL->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Socket::SSL->VERSION . '
');

}
