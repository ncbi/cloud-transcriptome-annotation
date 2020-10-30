my $expected_version = "2.027";
print("import: Socket\n");
use Socket;

if (defined Socket->VERSION) {
	my $given_version = Socket->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Socket->VERSION . '
');

}
