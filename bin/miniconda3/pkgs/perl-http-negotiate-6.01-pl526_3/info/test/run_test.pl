my $expected_version = "6.01";
print("import: HTTP::Negotiate\n");
use HTTP::Negotiate;

if (defined HTTP::Negotiate->VERSION) {
	my $given_version = HTTP::Negotiate->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTTP::Negotiate->VERSION . '
');

}
