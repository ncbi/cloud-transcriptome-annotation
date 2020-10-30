my $expected_version = "1.05";
print("import: Encode::Locale\n");
use Encode::Locale;

if (defined Encode::Locale->VERSION) {
	my $given_version = Encode::Locale->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Encode::Locale->VERSION . '
');

}
