my $expected_version = "1.28";
print("import: Time::Local\n");
use Time::Local;

if (defined Time::Local->VERSION) {
	my $given_version = Time::Local->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Time::Local->VERSION . '
');

}
