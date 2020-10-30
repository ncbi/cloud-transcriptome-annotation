my $expected_version = "0.428";
print("import: List::MoreUtils::XS\n");
use List::MoreUtils::XS;

if (defined List::MoreUtils::XS->VERSION) {
	my $given_version = List::MoreUtils::XS->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . List::MoreUtils::XS->VERSION . '
');

}
