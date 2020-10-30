my $expected_version = "2.44_01";
print("import: XML::Parser\n");
use XML::Parser;

if (defined XML::Parser->VERSION) {
	my $given_version = XML::Parser->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::Parser->VERSION . '
');

}
print("import: XML::Parser::Expat\n");
use XML::Parser::Expat;

if (defined XML::Parser::Expat->VERSION) {
	my $given_version = XML::Parser::Expat->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::Parser::Expat->VERSION . '
');

}
print("import: XML::Parser::Style::Debug\n");
use XML::Parser::Style::Debug;

if (defined XML::Parser::Style::Debug->VERSION) {
	my $given_version = XML::Parser::Style::Debug->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::Parser::Style::Debug->VERSION . '
');

}
print("import: XML::Parser::Style::Objects\n");
use XML::Parser::Style::Objects;

if (defined XML::Parser::Style::Objects->VERSION) {
	my $given_version = XML::Parser::Style::Objects->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::Parser::Style::Objects->VERSION . '
');

}
print("import: XML::Parser::Style::Stream\n");
use XML::Parser::Style::Stream;

if (defined XML::Parser::Style::Stream->VERSION) {
	my $given_version = XML::Parser::Style::Stream->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::Parser::Style::Stream->VERSION . '
');

}
print("import: XML::Parser::Style::Subs\n");
use XML::Parser::Style::Subs;

if (defined XML::Parser::Style::Subs->VERSION) {
	my $given_version = XML::Parser::Style::Subs->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::Parser::Style::Subs->VERSION . '
');

}
print("import: XML::Parser::Style::Tree\n");
use XML::Parser::Style::Tree;

if (defined XML::Parser::Style::Tree->VERSION) {
	my $given_version = XML::Parser::Style::Tree->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . XML::Parser::Style::Tree->VERSION . '
');

}
