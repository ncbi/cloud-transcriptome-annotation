my $expected_version = "20140910.003";
print("import: Business::ISBN::Data\n");
use Business::ISBN::Data;

if (defined Business::ISBN::Data->VERSION) {
	my $given_version = Business::ISBN::Data->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Business::ISBN::Data->VERSION . '
');

}
