my $expected_version = "3.004";
print("import: Business::ISBN\n");
use Business::ISBN;

if (defined Business::ISBN->VERSION) {
	my $given_version = Business::ISBN->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Business::ISBN->VERSION . '
');

}
print("import: Business::ISBN10\n");
use Business::ISBN10;

if (defined Business::ISBN10->VERSION) {
	my $given_version = Business::ISBN10->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Business::ISBN10->VERSION . '
');

}
print("import: Business::ISBN13\n");
use Business::ISBN13;

if (defined Business::ISBN13->VERSION) {
	my $given_version = Business::ISBN13->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Business::ISBN13->VERSION . '
');

}
