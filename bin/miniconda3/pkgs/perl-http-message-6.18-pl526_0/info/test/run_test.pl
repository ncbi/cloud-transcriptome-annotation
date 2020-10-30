my $expected_version = "6.18";
print("import: HTTP::Config\n");
use HTTP::Config;

if (defined HTTP::Config->VERSION) {
	my $given_version = HTTP::Config->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTTP::Config->VERSION . '
');

}
print("import: HTTP::Headers\n");
use HTTP::Headers;

if (defined HTTP::Headers->VERSION) {
	my $given_version = HTTP::Headers->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTTP::Headers->VERSION . '
');

}
print("import: HTTP::Headers::Auth\n");
use HTTP::Headers::Auth;

if (defined HTTP::Headers::Auth->VERSION) {
	my $given_version = HTTP::Headers::Auth->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTTP::Headers::Auth->VERSION . '
');

}
print("import: HTTP::Headers::ETag\n");
use HTTP::Headers::ETag;

if (defined HTTP::Headers::ETag->VERSION) {
	my $given_version = HTTP::Headers::ETag->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTTP::Headers::ETag->VERSION . '
');

}
print("import: HTTP::Headers::Util\n");
use HTTP::Headers::Util;

if (defined HTTP::Headers::Util->VERSION) {
	my $given_version = HTTP::Headers::Util->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTTP::Headers::Util->VERSION . '
');

}
print("import: HTTP::Message\n");
use HTTP::Message;

if (defined HTTP::Message->VERSION) {
	my $given_version = HTTP::Message->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTTP::Message->VERSION . '
');

}
print("import: HTTP::Request\n");
use HTTP::Request;

if (defined HTTP::Request->VERSION) {
	my $given_version = HTTP::Request->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTTP::Request->VERSION . '
');

}
print("import: HTTP::Request::Common\n");
use HTTP::Request::Common;

if (defined HTTP::Request::Common->VERSION) {
	my $given_version = HTTP::Request::Common->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTTP::Request::Common->VERSION . '
');

}
print("import: HTTP::Response\n");
use HTTP::Response;

if (defined HTTP::Response->VERSION) {
	my $given_version = HTTP::Response->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTTP::Response->VERSION . '
');

}
print("import: HTTP::Status\n");
use HTTP::Status;

if (defined HTTP::Status->VERSION) {
	my $given_version = HTTP::Status->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . HTTP::Status->VERSION . '
');

}
