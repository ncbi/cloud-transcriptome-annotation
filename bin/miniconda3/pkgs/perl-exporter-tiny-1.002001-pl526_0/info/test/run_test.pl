my $expected_version = "1.002001";
print("import: Exporter::Shiny\n");
use Exporter::Shiny;

if (defined Exporter::Shiny->VERSION) {
	my $given_version = Exporter::Shiny->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Exporter::Shiny->VERSION . '
');

}
print("import: Exporter::Tiny\n");
use Exporter::Tiny;

if (defined Exporter::Tiny->VERSION) {
	my $given_version = Exporter::Tiny->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Exporter::Tiny->VERSION . '
');

}
