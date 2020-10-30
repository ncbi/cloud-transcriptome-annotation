my $expected_version = "6.01";
print("import: HTTP::Daemon\n");
use HTTP::Daemon;

if (defined HTTP::Daemon->VERSION) {
	my $given_version = HTTP::Daemon->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTTP::Daemon->VERSION . '
');

}
