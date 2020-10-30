my $expected_version = "7.36";
print("import: ExtUtils::Command\n");
use ExtUtils::Command;

if (defined ExtUtils::Command->VERSION) {
	my $given_version = ExtUtils::Command->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::Command->VERSION . '
');

}
print("import: ExtUtils::Command::MM\n");
use ExtUtils::Command::MM;

if (defined ExtUtils::Command::MM->VERSION) {
	my $given_version = ExtUtils::Command::MM->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::Command::MM->VERSION . '
');

}
print("import: ExtUtils::Liblist\n");
use ExtUtils::Liblist;

if (defined ExtUtils::Liblist->VERSION) {
	my $given_version = ExtUtils::Liblist->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::Liblist->VERSION . '
');

}
print("import: ExtUtils::Liblist::Kid\n");
use ExtUtils::Liblist::Kid;

if (defined ExtUtils::Liblist::Kid->VERSION) {
	my $given_version = ExtUtils::Liblist::Kid->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::Liblist::Kid->VERSION . '
');

}
print("import: ExtUtils::MM\n");
use ExtUtils::MM;

if (defined ExtUtils::MM->VERSION) {
	my $given_version = ExtUtils::MM->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM->VERSION . '
');

}
print("import: ExtUtils::MM_AIX\n");
use ExtUtils::MM_AIX;

if (defined ExtUtils::MM_AIX->VERSION) {
	my $given_version = ExtUtils::MM_AIX->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_AIX->VERSION . '
');

}
print("import: ExtUtils::MM_Any\n");
use ExtUtils::MM_Any;

if (defined ExtUtils::MM_Any->VERSION) {
	my $given_version = ExtUtils::MM_Any->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_Any->VERSION . '
');

}
print("import: ExtUtils::MM_BeOS\n");
use ExtUtils::MM_BeOS;

if (defined ExtUtils::MM_BeOS->VERSION) {
	my $given_version = ExtUtils::MM_BeOS->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_BeOS->VERSION . '
');

}
print("import: ExtUtils::MM_Cygwin\n");
use ExtUtils::MM_Cygwin;

if (defined ExtUtils::MM_Cygwin->VERSION) {
	my $given_version = ExtUtils::MM_Cygwin->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_Cygwin->VERSION . '
');

}
print("import: ExtUtils::MM_DOS\n");
use ExtUtils::MM_DOS;

if (defined ExtUtils::MM_DOS->VERSION) {
	my $given_version = ExtUtils::MM_DOS->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_DOS->VERSION . '
');

}
print("import: ExtUtils::MM_Darwin\n");
use ExtUtils::MM_Darwin;

if (defined ExtUtils::MM_Darwin->VERSION) {
	my $given_version = ExtUtils::MM_Darwin->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_Darwin->VERSION . '
');

}
print("import: ExtUtils::MM_MacOS\n");
use ExtUtils::MM_MacOS;

if (defined ExtUtils::MM_MacOS->VERSION) {
	my $given_version = ExtUtils::MM_MacOS->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_MacOS->VERSION . '
');

}
print("import: ExtUtils::MM_NW5\n");
use ExtUtils::MM_NW5;

if (defined ExtUtils::MM_NW5->VERSION) {
	my $given_version = ExtUtils::MM_NW5->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_NW5->VERSION . '
');

}
print("import: ExtUtils::MM_OS2\n");
use ExtUtils::MM_OS2;

if (defined ExtUtils::MM_OS2->VERSION) {
	my $given_version = ExtUtils::MM_OS2->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_OS2->VERSION . '
');

}
print("import: ExtUtils::MM_QNX\n");
use ExtUtils::MM_QNX;

if (defined ExtUtils::MM_QNX->VERSION) {
	my $given_version = ExtUtils::MM_QNX->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_QNX->VERSION . '
');

}
print("import: ExtUtils::MM_UWIN\n");
use ExtUtils::MM_UWIN;

if (defined ExtUtils::MM_UWIN->VERSION) {
	my $given_version = ExtUtils::MM_UWIN->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_UWIN->VERSION . '
');

}
print("import: ExtUtils::MM_Unix\n");
use ExtUtils::MM_Unix;

if (defined ExtUtils::MM_Unix->VERSION) {
	my $given_version = ExtUtils::MM_Unix->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_Unix->VERSION . '
');

}
print("import: ExtUtils::MM_VMS\n");
use ExtUtils::MM_VMS;

if (defined ExtUtils::MM_VMS->VERSION) {
	my $given_version = ExtUtils::MM_VMS->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_VMS->VERSION . '
');

}
print("import: ExtUtils::MM_VOS\n");
use ExtUtils::MM_VOS;

if (defined ExtUtils::MM_VOS->VERSION) {
	my $given_version = ExtUtils::MM_VOS->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_VOS->VERSION . '
');

}
print("import: ExtUtils::MM_Win32\n");
use ExtUtils::MM_Win32;

if (defined ExtUtils::MM_Win32->VERSION) {
	my $given_version = ExtUtils::MM_Win32->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_Win32->VERSION . '
');

}
print("import: ExtUtils::MM_Win95\n");
use ExtUtils::MM_Win95;

if (defined ExtUtils::MM_Win95->VERSION) {
	my $given_version = ExtUtils::MM_Win95->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MM_Win95->VERSION . '
');

}
print("import: ExtUtils::MY\n");
use ExtUtils::MY;

if (defined ExtUtils::MY->VERSION) {
	my $given_version = ExtUtils::MY->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MY->VERSION . '
');

}
print("import: ExtUtils::MakeMaker\n");
use ExtUtils::MakeMaker;

if (defined ExtUtils::MakeMaker->VERSION) {
	my $given_version = ExtUtils::MakeMaker->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MakeMaker->VERSION . '
');

}
print("import: ExtUtils::MakeMaker::Config\n");
use ExtUtils::MakeMaker::Config;

if (defined ExtUtils::MakeMaker::Config->VERSION) {
	my $given_version = ExtUtils::MakeMaker::Config->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MakeMaker::Config->VERSION . '
');

}
print("import: ExtUtils::MakeMaker::Locale\n");
use ExtUtils::MakeMaker::Locale;

if (defined ExtUtils::MakeMaker::Locale->VERSION) {
	my $given_version = ExtUtils::MakeMaker::Locale->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MakeMaker::Locale->VERSION . '
');

}
print("import: ExtUtils::MakeMaker::version\n");
use ExtUtils::MakeMaker::version;

if (defined ExtUtils::MakeMaker::version->VERSION) {
	my $given_version = ExtUtils::MakeMaker::version->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MakeMaker::version->VERSION . '
');

}
print("import: ExtUtils::MakeMaker::version::regex\n");
use ExtUtils::MakeMaker::version::regex;

if (defined ExtUtils::MakeMaker::version::regex->VERSION) {
	my $given_version = ExtUtils::MakeMaker::version::regex->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MakeMaker::version::regex->VERSION . '
');

}
print("import: ExtUtils::MakeMaker::version::vpp\n");
use ExtUtils::MakeMaker::version::vpp;

if (defined ExtUtils::MakeMaker::version::vpp->VERSION) {
	my $given_version = ExtUtils::MakeMaker::version::vpp->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::MakeMaker::version::vpp->VERSION . '
');

}
print("import: ExtUtils::Mkbootstrap\n");
use ExtUtils::Mkbootstrap;

if (defined ExtUtils::Mkbootstrap->VERSION) {
	my $given_version = ExtUtils::Mkbootstrap->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::Mkbootstrap->VERSION . '
');

}
print("import: ExtUtils::Mksymlists\n");
use ExtUtils::Mksymlists;

if (defined ExtUtils::Mksymlists->VERSION) {
	my $given_version = ExtUtils::Mksymlists->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::Mksymlists->VERSION . '
');

}
print("import: ExtUtils::testlib\n");
use ExtUtils::testlib;

if (defined ExtUtils::testlib->VERSION) {
	my $given_version = ExtUtils::testlib->VERSION;
	$given_version =~ s/0+$//;
	die('Expected version ' . $expected_version . ' but found ' . $given_version) unless ($expected_version eq $given_version);
	print('	using version ' . ExtUtils::testlib->VERSION . '
');

}
