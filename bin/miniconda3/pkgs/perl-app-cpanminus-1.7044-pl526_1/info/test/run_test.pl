my $expected_version = "1.7044";
print("import: App::cpanminus\n");
use App::cpanminus;

if (defined App::cpanminus->VERSION) {
	my $given_version = App::cpanminus->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . App::cpanminus->VERSION . '
');

}
