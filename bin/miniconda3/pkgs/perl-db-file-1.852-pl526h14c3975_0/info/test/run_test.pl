my $expected_version = "1.852";
print("import: DB_File\n");
use DB_File;

if (defined DB_File->VERSION) {
	my $given_version = DB_File->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . DB_File->VERSION . '
');

}
