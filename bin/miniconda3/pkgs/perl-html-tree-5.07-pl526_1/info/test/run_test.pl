my $expected_version = "5.07";
print("import: HTML::AsSubs\n");
use HTML::AsSubs;

if (defined HTML::AsSubs->VERSION) {
	my $given_version = HTML::AsSubs->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTML::AsSubs->VERSION . '
');

}
print("import: HTML::Element\n");
use HTML::Element;

if (defined HTML::Element->VERSION) {
	my $given_version = HTML::Element->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTML::Element->VERSION . '
');

}
print("import: HTML::Parse\n");
use HTML::Parse;

if (defined HTML::Parse->VERSION) {
	my $given_version = HTML::Parse->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTML::Parse->VERSION . '
');

}
print("import: HTML::Tree\n");
use HTML::Tree;

if (defined HTML::Tree->VERSION) {
	my $given_version = HTML::Tree->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTML::Tree->VERSION . '
');

}
print("import: HTML::TreeBuilder\n");
use HTML::TreeBuilder;

if (defined HTML::TreeBuilder->VERSION) {
	my $given_version = HTML::TreeBuilder->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTML::TreeBuilder->VERSION . '
');

}
