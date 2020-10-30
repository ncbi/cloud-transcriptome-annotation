my $expected_version = "3.2";
print("import: HTML::Tagset\n");
use HTML::Tagset;

if (defined HTML::Tagset->VERSION) {
	my $given_version = HTML::Tagset->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTML::Tagset->VERSION . '
');

}
