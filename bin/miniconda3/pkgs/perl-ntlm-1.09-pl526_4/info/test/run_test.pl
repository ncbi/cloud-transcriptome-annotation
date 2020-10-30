my $expected_version = "1.09";
print("import: Authen::NTLM\n");
use Authen::NTLM;

if (defined Authen::NTLM->VERSION) {
	my $given_version = Authen::NTLM->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . Authen::NTLM->VERSION . '
');

}
