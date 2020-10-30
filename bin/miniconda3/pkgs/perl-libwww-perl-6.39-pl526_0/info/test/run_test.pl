my $expected_version = "6.39";
print("import: LWP\n");
use LWP;

if (defined LWP->VERSION) {
	my $given_version = LWP->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP->VERSION . '
');

}
print("import: LWP::Authen::Basic\n");
use LWP::Authen::Basic;

if (defined LWP::Authen::Basic->VERSION) {
	my $given_version = LWP::Authen::Basic->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Authen::Basic->VERSION . '
');

}
print("import: LWP::Authen::Digest\n");
use LWP::Authen::Digest;

if (defined LWP::Authen::Digest->VERSION) {
	my $given_version = LWP::Authen::Digest->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Authen::Digest->VERSION . '
');

}
print("import: LWP::Authen::Ntlm\n");
use LWP::Authen::Ntlm;

if (defined LWP::Authen::Ntlm->VERSION) {
	my $given_version = LWP::Authen::Ntlm->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Authen::Ntlm->VERSION . '
');

}
print("import: LWP::ConnCache\n");
use LWP::ConnCache;

if (defined LWP::ConnCache->VERSION) {
	my $given_version = LWP::ConnCache->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::ConnCache->VERSION . '
');

}
print("import: LWP::Debug\n");
use LWP::Debug;

if (defined LWP::Debug->VERSION) {
	my $given_version = LWP::Debug->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Debug->VERSION . '
');

}
print("import: LWP::DebugFile\n");
use LWP::DebugFile;

if (defined LWP::DebugFile->VERSION) {
	my $given_version = LWP::DebugFile->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::DebugFile->VERSION . '
');

}
print("import: LWP::MemberMixin\n");
use LWP::MemberMixin;

if (defined LWP::MemberMixin->VERSION) {
	my $given_version = LWP::MemberMixin->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::MemberMixin->VERSION . '
');

}
print("import: LWP::Protocol\n");
use LWP::Protocol;

if (defined LWP::Protocol->VERSION) {
	my $given_version = LWP::Protocol->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Protocol->VERSION . '
');

}
print("import: LWP::Protocol::cpan\n");
use LWP::Protocol::cpan;

if (defined LWP::Protocol::cpan->VERSION) {
	my $given_version = LWP::Protocol::cpan->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Protocol::cpan->VERSION . '
');

}
print("import: LWP::Protocol::data\n");
use LWP::Protocol::data;

if (defined LWP::Protocol::data->VERSION) {
	my $given_version = LWP::Protocol::data->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Protocol::data->VERSION . '
');

}
print("import: LWP::Protocol::file\n");
use LWP::Protocol::file;

if (defined LWP::Protocol::file->VERSION) {
	my $given_version = LWP::Protocol::file->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Protocol::file->VERSION . '
');

}
print("import: LWP::Protocol::ftp\n");
use LWP::Protocol::ftp;

if (defined LWP::Protocol::ftp->VERSION) {
	my $given_version = LWP::Protocol::ftp->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Protocol::ftp->VERSION . '
');

}
print("import: LWP::Protocol::gopher\n");
use LWP::Protocol::gopher;

if (defined LWP::Protocol::gopher->VERSION) {
	my $given_version = LWP::Protocol::gopher->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Protocol::gopher->VERSION . '
');

}
print("import: LWP::Protocol::http\n");
use LWP::Protocol::http;

if (defined LWP::Protocol::http->VERSION) {
	my $given_version = LWP::Protocol::http->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Protocol::http->VERSION . '
');

}
print("import: LWP::Protocol::loopback\n");
use LWP::Protocol::loopback;

if (defined LWP::Protocol::loopback->VERSION) {
	my $given_version = LWP::Protocol::loopback->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Protocol::loopback->VERSION . '
');

}
print("import: LWP::Protocol::nntp\n");
use LWP::Protocol::nntp;

if (defined LWP::Protocol::nntp->VERSION) {
	my $given_version = LWP::Protocol::nntp->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Protocol::nntp->VERSION . '
');

}
print("import: LWP::Protocol::nogo\n");
use LWP::Protocol::nogo;

if (defined LWP::Protocol::nogo->VERSION) {
	my $given_version = LWP::Protocol::nogo->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Protocol::nogo->VERSION . '
');

}
print("import: LWP::RobotUA\n");
use LWP::RobotUA;

if (defined LWP::RobotUA->VERSION) {
	my $given_version = LWP::RobotUA->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::RobotUA->VERSION . '
');

}
print("import: LWP::Simple\n");
use LWP::Simple;

if (defined LWP::Simple->VERSION) {
	my $given_version = LWP::Simple->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::Simple->VERSION . '
');

}
print("import: LWP::UserAgent\n");
use LWP::UserAgent;

if (defined LWP::UserAgent->VERSION) {
	my $given_version = LWP::UserAgent->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . LWP::UserAgent->VERSION . '
');

}
