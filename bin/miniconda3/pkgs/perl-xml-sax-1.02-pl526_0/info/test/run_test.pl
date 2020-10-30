my $expected_version = "1.02";
print("import: XML::SAX\n");
use XML::SAX;

if (defined XML::SAX->VERSION) {
	my $given_version = XML::SAX->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::SAX->VERSION . '
');

}
print("import: XML::SAX::DocumentLocator\n");
use XML::SAX::DocumentLocator;

if (defined XML::SAX::DocumentLocator->VERSION) {
	my $given_version = XML::SAX::DocumentLocator->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::SAX::DocumentLocator->VERSION . '
');

}
print("import: XML::SAX::PurePerl\n");
use XML::SAX::PurePerl;

if (defined XML::SAX::PurePerl->VERSION) {
	my $given_version = XML::SAX::PurePerl->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::SAX::PurePerl->VERSION . '
');

}
print("import: XML::SAX::PurePerl::DebugHandler\n");
use XML::SAX::PurePerl::DebugHandler;

if (defined XML::SAX::PurePerl::DebugHandler->VERSION) {
	my $given_version = XML::SAX::PurePerl::DebugHandler->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::SAX::PurePerl::DebugHandler->VERSION . '
');

}
print("import: XML::SAX::PurePerl::Exception\n");
use XML::SAX::PurePerl::Exception;

if (defined XML::SAX::PurePerl::Exception->VERSION) {
	my $given_version = XML::SAX::PurePerl::Exception->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::SAX::PurePerl::Exception->VERSION . '
');

}
print("import: XML::SAX::PurePerl::Productions\n");
use XML::SAX::PurePerl::Productions;

if (defined XML::SAX::PurePerl::Productions->VERSION) {
	my $given_version = XML::SAX::PurePerl::Productions->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::SAX::PurePerl::Productions->VERSION . '
');

}
print("import: XML::SAX::PurePerl::Reader\n");
use XML::SAX::PurePerl::Reader;

if (defined XML::SAX::PurePerl::Reader->VERSION) {
	my $given_version = XML::SAX::PurePerl::Reader->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::SAX::PurePerl::Reader->VERSION . '
');

}
print("import: XML::SAX::PurePerl::Reader::Stream\n");
use XML::SAX::PurePerl::Reader::Stream;

if (defined XML::SAX::PurePerl::Reader::Stream->VERSION) {
	my $given_version = XML::SAX::PurePerl::Reader::Stream->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::SAX::PurePerl::Reader::Stream->VERSION . '
');

}
print("import: XML::SAX::PurePerl::Reader::String\n");
use XML::SAX::PurePerl::Reader::String;

if (defined XML::SAX::PurePerl::Reader::String->VERSION) {
	my $given_version = XML::SAX::PurePerl::Reader::String->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::SAX::PurePerl::Reader::String->VERSION . '
');

}
print("import: XML::SAX::PurePerl::Reader::URI\n");
use XML::SAX::PurePerl::Reader::URI;

if (defined XML::SAX::PurePerl::Reader::URI->VERSION) {
	my $given_version = XML::SAX::PurePerl::Reader::URI->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::SAX::PurePerl::Reader::URI->VERSION . '
');

}
