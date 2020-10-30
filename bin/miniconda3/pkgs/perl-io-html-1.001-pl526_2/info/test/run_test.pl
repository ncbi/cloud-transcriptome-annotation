my $expected_version = "1.001";
print("import: IO::HTML\n");
use IO::HTML;

if (defined IO::HTML->VERSION) {
	my $given_version = IO::HTML->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::HTML->VERSION . '
');

}
