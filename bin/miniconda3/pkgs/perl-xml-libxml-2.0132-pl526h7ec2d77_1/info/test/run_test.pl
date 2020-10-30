my $expected_version = "2.0132";
print("import: XML::LibXML\n");
use XML::LibXML;

if (defined XML::LibXML->VERSION) {
	my $given_version = XML::LibXML->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML->VERSION . '
');

}
print("import: XML::LibXML::AttributeHash\n");
use XML::LibXML::AttributeHash;

if (defined XML::LibXML::AttributeHash->VERSION) {
	my $given_version = XML::LibXML::AttributeHash->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML::AttributeHash->VERSION . '
');

}
print("import: XML::LibXML::Boolean\n");
use XML::LibXML::Boolean;

if (defined XML::LibXML::Boolean->VERSION) {
	my $given_version = XML::LibXML::Boolean->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML::Boolean->VERSION . '
');

}
print("import: XML::LibXML::Common\n");
use XML::LibXML::Common;

if (defined XML::LibXML::Common->VERSION) {
	my $given_version = XML::LibXML::Common->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML::Common->VERSION . '
');

}
print("import: XML::LibXML::Devel\n");
use XML::LibXML::Devel;

if (defined XML::LibXML::Devel->VERSION) {
	my $given_version = XML::LibXML::Devel->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML::Devel->VERSION . '
');

}
print("import: XML::LibXML::ErrNo\n");
use XML::LibXML::ErrNo;

if (defined XML::LibXML::ErrNo->VERSION) {
	my $given_version = XML::LibXML::ErrNo->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML::ErrNo->VERSION . '
');

}
print("import: XML::LibXML::Error\n");
use XML::LibXML::Error;

if (defined XML::LibXML::Error->VERSION) {
	my $given_version = XML::LibXML::Error->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML::Error->VERSION . '
');

}
print("import: XML::LibXML::Literal\n");
use XML::LibXML::Literal;

if (defined XML::LibXML::Literal->VERSION) {
	my $given_version = XML::LibXML::Literal->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML::Literal->VERSION . '
');

}
print("import: XML::LibXML::NodeList\n");
use XML::LibXML::NodeList;

if (defined XML::LibXML::NodeList->VERSION) {
	my $given_version = XML::LibXML::NodeList->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML::NodeList->VERSION . '
');

}
print("import: XML::LibXML::Number\n");
use XML::LibXML::Number;

if (defined XML::LibXML::Number->VERSION) {
	my $given_version = XML::LibXML::Number->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML::Number->VERSION . '
');

}
print("import: XML::LibXML::Reader\n");
use XML::LibXML::Reader;

if (defined XML::LibXML::Reader->VERSION) {
	my $given_version = XML::LibXML::Reader->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML::Reader->VERSION . '
');

}
print("import: XML::LibXML::SAX\n");
use XML::LibXML::SAX;

if (defined XML::LibXML::SAX->VERSION) {
	my $given_version = XML::LibXML::SAX->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML::SAX->VERSION . '
');

}
print("import: XML::LibXML::SAX::Builder\n");
use XML::LibXML::SAX::Builder;

if (defined XML::LibXML::SAX::Builder->VERSION) {
	my $given_version = XML::LibXML::SAX::Builder->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML::SAX::Builder->VERSION . '
');

}
print("import: XML::LibXML::SAX::Generator\n");
use XML::LibXML::SAX::Generator;

if (defined XML::LibXML::SAX::Generator->VERSION) {
	my $given_version = XML::LibXML::SAX::Generator->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML::SAX::Generator->VERSION . '
');

}
print("import: XML::LibXML::SAX::Parser\n");
use XML::LibXML::SAX::Parser;

if (defined XML::LibXML::SAX::Parser->VERSION) {
	my $given_version = XML::LibXML::SAX::Parser->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML::SAX::Parser->VERSION . '
');

}
print("import: XML::LibXML::XPathContext\n");
use XML::LibXML::XPathContext;

if (defined XML::LibXML::XPathContext->VERSION) {
	my $given_version = XML::LibXML::XPathContext->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::LibXML::XPathContext->VERSION . '
');

}
