my $expected_version = "0.428";
print("import: List::MoreUtils\n");
use List::MoreUtils;

if (defined List::MoreUtils->VERSION) {
	my $given_version = List::MoreUtils->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . List::MoreUtils->VERSION . '
');

}
print("import: List::MoreUtils::PP\n");
use List::MoreUtils::PP;

if (defined List::MoreUtils::PP->VERSION) {
	my $given_version = List::MoreUtils::PP->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . List::MoreUtils::PP->VERSION . '
');

}
