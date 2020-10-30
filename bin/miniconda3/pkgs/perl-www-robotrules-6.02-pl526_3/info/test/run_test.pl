my $expected_version = "6.02";
print("import: WWW::RobotRules\n");
use WWW::RobotRules;

if (defined WWW::RobotRules->VERSION) {
	my $given_version = WWW::RobotRules->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . WWW::RobotRules->VERSION . '
');

}
