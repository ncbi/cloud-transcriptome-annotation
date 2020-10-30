my $expected_version = "2.087";
print("import: IO::Compress::Adapter::Bzip2\n");
use IO::Compress::Adapter::Bzip2;

if (defined IO::Compress::Adapter::Bzip2->VERSION) {
	my $given_version = IO::Compress::Adapter::Bzip2->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Compress::Adapter::Bzip2->VERSION . '
');

}
print("import: IO::Compress::Adapter::Deflate\n");
use IO::Compress::Adapter::Deflate;

if (defined IO::Compress::Adapter::Deflate->VERSION) {
	my $given_version = IO::Compress::Adapter::Deflate->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Compress::Adapter::Deflate->VERSION . '
');

}
print("import: IO::Compress::Adapter::Identity\n");
use IO::Compress::Adapter::Identity;

if (defined IO::Compress::Adapter::Identity->VERSION) {
	my $given_version = IO::Compress::Adapter::Identity->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Compress::Adapter::Identity->VERSION . '
');

}
print("import: IO::Compress::Base\n");
use IO::Compress::Base;

if (defined IO::Compress::Base->VERSION) {
	my $given_version = IO::Compress::Base->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Compress::Base->VERSION . '
');

}
print("import: IO::Compress::Base::Common\n");
use IO::Compress::Base::Common;

if (defined IO::Compress::Base::Common->VERSION) {
	my $given_version = IO::Compress::Base::Common->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Compress::Base::Common->VERSION . '
');

}
print("import: IO::Compress::Bzip2\n");
use IO::Compress::Bzip2;

if (defined IO::Compress::Bzip2->VERSION) {
	my $given_version = IO::Compress::Bzip2->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Compress::Bzip2->VERSION . '
');

}
print("import: IO::Compress::Deflate\n");
use IO::Compress::Deflate;

if (defined IO::Compress::Deflate->VERSION) {
	my $given_version = IO::Compress::Deflate->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Compress::Deflate->VERSION . '
');

}
print("import: IO::Compress::Gzip\n");
use IO::Compress::Gzip;

if (defined IO::Compress::Gzip->VERSION) {
	my $given_version = IO::Compress::Gzip->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Compress::Gzip->VERSION . '
');

}
print("import: IO::Compress::Gzip::Constants\n");
use IO::Compress::Gzip::Constants;

if (defined IO::Compress::Gzip::Constants->VERSION) {
	my $given_version = IO::Compress::Gzip::Constants->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Compress::Gzip::Constants->VERSION . '
');

}
print("import: IO::Compress::RawDeflate\n");
use IO::Compress::RawDeflate;

if (defined IO::Compress::RawDeflate->VERSION) {
	my $given_version = IO::Compress::RawDeflate->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Compress::RawDeflate->VERSION . '
');

}
print("import: IO::Compress::Zip\n");
use IO::Compress::Zip;

if (defined IO::Compress::Zip->VERSION) {
	my $given_version = IO::Compress::Zip->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Compress::Zip->VERSION . '
');

}
print("import: IO::Compress::Zip::Constants\n");
use IO::Compress::Zip::Constants;

if (defined IO::Compress::Zip::Constants->VERSION) {
	my $given_version = IO::Compress::Zip::Constants->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Compress::Zip::Constants->VERSION . '
');

}
print("import: IO::Compress::Zlib::Constants\n");
use IO::Compress::Zlib::Constants;

if (defined IO::Compress::Zlib::Constants->VERSION) {
	my $given_version = IO::Compress::Zlib::Constants->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Compress::Zlib::Constants->VERSION . '
');

}
print("import: IO::Compress::Zlib::Extra\n");
use IO::Compress::Zlib::Extra;

if (defined IO::Compress::Zlib::Extra->VERSION) {
	my $given_version = IO::Compress::Zlib::Extra->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Compress::Zlib::Extra->VERSION . '
');

}
print("import: IO::Uncompress::Adapter::Bunzip2\n");
use IO::Uncompress::Adapter::Bunzip2;

if (defined IO::Uncompress::Adapter::Bunzip2->VERSION) {
	my $given_version = IO::Uncompress::Adapter::Bunzip2->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Uncompress::Adapter::Bunzip2->VERSION . '
');

}
print("import: IO::Uncompress::Adapter::Identity\n");
use IO::Uncompress::Adapter::Identity;

if (defined IO::Uncompress::Adapter::Identity->VERSION) {
	my $given_version = IO::Uncompress::Adapter::Identity->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Uncompress::Adapter::Identity->VERSION . '
');

}
print("import: IO::Uncompress::Adapter::Inflate\n");
use IO::Uncompress::Adapter::Inflate;

if (defined IO::Uncompress::Adapter::Inflate->VERSION) {
	my $given_version = IO::Uncompress::Adapter::Inflate->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Uncompress::Adapter::Inflate->VERSION . '
');

}
print("import: IO::Uncompress::AnyInflate\n");
use IO::Uncompress::AnyInflate;

if (defined IO::Uncompress::AnyInflate->VERSION) {
	my $given_version = IO::Uncompress::AnyInflate->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Uncompress::AnyInflate->VERSION . '
');

}
print("import: IO::Uncompress::AnyUncompress\n");
use IO::Uncompress::AnyUncompress;

if (defined IO::Uncompress::AnyUncompress->VERSION) {
	my $given_version = IO::Uncompress::AnyUncompress->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Uncompress::AnyUncompress->VERSION . '
');

}
print("import: IO::Uncompress::Base\n");
use IO::Uncompress::Base;

if (defined IO::Uncompress::Base->VERSION) {
	my $given_version = IO::Uncompress::Base->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Uncompress::Base->VERSION . '
');

}
print("import: IO::Uncompress::Bunzip2\n");
use IO::Uncompress::Bunzip2;

if (defined IO::Uncompress::Bunzip2->VERSION) {
	my $given_version = IO::Uncompress::Bunzip2->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Uncompress::Bunzip2->VERSION . '
');

}
print("import: IO::Uncompress::Gunzip\n");
use IO::Uncompress::Gunzip;

if (defined IO::Uncompress::Gunzip->VERSION) {
	my $given_version = IO::Uncompress::Gunzip->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Uncompress::Gunzip->VERSION . '
');

}
print("import: IO::Uncompress::Inflate\n");
use IO::Uncompress::Inflate;

if (defined IO::Uncompress::Inflate->VERSION) {
	my $given_version = IO::Uncompress::Inflate->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Uncompress::Inflate->VERSION . '
');

}
print("import: IO::Uncompress::RawInflate\n");
use IO::Uncompress::RawInflate;

if (defined IO::Uncompress::RawInflate->VERSION) {
	my $given_version = IO::Uncompress::RawInflate->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Uncompress::RawInflate->VERSION . '
');

}
print("import: IO::Uncompress::Unzip\n");
use IO::Uncompress::Unzip;

if (defined IO::Uncompress::Unzip->VERSION) {
	my $given_version = IO::Uncompress::Unzip->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . IO::Uncompress::Unzip->VERSION . '
');

}
