my $expected_version = "6.04";
print("import: HTTP::Cookies\n");
use HTTP::Cookies;

if (defined HTTP::Cookies->VERSION) {
	my $given_version = HTTP::Cookies->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTTP::Cookies->VERSION . '
');

}
print("import: HTTP::Cookies::Netscape\n");
use HTTP::Cookies::Netscape;

if (defined HTTP::Cookies::Netscape->VERSION) {
	my $given_version = HTTP::Cookies::Netscape->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTTP::Cookies::Netscape->VERSION . '
');

}
