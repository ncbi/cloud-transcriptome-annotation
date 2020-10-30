my $expected_version = "1.12";
print("import: XML::NamespaceSupport\n");
use XML::NamespaceSupport;

if (defined XML::NamespaceSupport->VERSION) {
	my $given_version = XML::NamespaceSupport->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::NamespaceSupport->VERSION . '
');

}
