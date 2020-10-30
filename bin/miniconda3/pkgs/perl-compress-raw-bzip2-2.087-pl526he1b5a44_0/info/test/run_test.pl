my $expected_version = "2.087";
print("import: Compress::Raw::Bzip2\n");
use Compress::Raw::Bzip2;

if (defined Compress::Raw::Bzip2->VERSION) {
	my $given_version = Compress::Raw::Bzip2->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Compress::Raw::Bzip2->VERSION . '
');

}
