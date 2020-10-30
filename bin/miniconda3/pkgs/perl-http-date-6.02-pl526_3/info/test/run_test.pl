my $expected_version = "6.02";
print("import: HTTP::Date\n");
use HTTP::Date;

if (defined HTTP::Date->VERSION) {
	my $given_version = HTTP::Date->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTTP::Date->VERSION . '
');

}
