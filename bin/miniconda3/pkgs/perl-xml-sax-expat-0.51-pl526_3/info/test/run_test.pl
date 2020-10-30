my $expected_version = "0.51";
print("import: XML::SAX::Expat\n");
use XML::SAX::Expat;

if (defined XML::SAX::Expat->VERSION) {
	my $given_version = XML::SAX::Expat->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::SAX::Expat->VERSION . '
');

}
