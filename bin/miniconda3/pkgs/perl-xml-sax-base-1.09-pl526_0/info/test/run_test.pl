my $expected_version = "1.09";
print("import: XML::SAX::Base\n");
use XML::SAX::Base;

if (defined XML::SAX::Base->VERSION) {
	my $given_version = XML::SAX::Base->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::SAX::Base->VERSION . '
');

}
