my $expected_version = "2.25";
print("import: XML::Simple\n");
use XML::Simple;

if (defined XML::Simple->VERSION) {
	my $given_version = XML::Simple->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::Simple->VERSION . '
');

}
