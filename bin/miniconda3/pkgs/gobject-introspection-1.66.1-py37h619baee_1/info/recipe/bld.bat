@ECHO ON

@REM I cannot for the life of me figure out how Cygwin/MSYS2 figures out its
@REM root directory, which it uses to find the /etc/fstab which *sometimes*
@REM affects the choice of the cygdrive prefix. But, regardless of *why*,
@REM I find that we need this to work:
mkdir %BUILD_PREFIX%\Library\etc
echo none / cygdrive binary,user 0 0 >%BUILD_PREFIX%\Library\etc\fstab
echo none /tmp usertemp binary,posix=0 0 0 >>%BUILD_PREFIX%\Library\etc\fstab

mkdir forgebuild
cd forgebuild

@REM pkg-config setup
FOR /F "delims=" %%i IN ('cygpath.exe -m "%LIBRARY_PREFIX%"') DO set "LIBRARY_PREFIX_M=%%i"
set PKG_CONFIG_PATH=%LIBRARY_PREFIX_M%/lib/pkgconfig;%LIBRARY_PREFIX_M%/share/pkgconfig

@REM Work around a Windows build failure in Python 3.6. This is unneeded in 3.7.
@REM See https://www.python.org/dev/peps/pep-0528/ and https://github.com/mesonbuild/meson/issues/4827 .
set "PYTHONLEGACYWINDOWSSTDIO=1"
set "PYTHONIOENCODING=UTF-8"

@REM Pass Python to meson with a mixed-style (forward slash) path. This fixes a bug
@REM where build prefix replacement would fail with the g-ir-scanner and
@REM g-ir-annotation-tool Python scripts because the build prefix would appear within
@REM them having two slash styles (forward and backward slashes). With this fix, the
@REM Python path inserted at the top of the installed Python scripts will use the same
@REM forward slash style as with the paths that meson substitutes later in those scripts
@REM (meson will use forward slash no matter what style of prefix is passed, so have to
@REM fix the env python path to match).
FOR /F "delims=" %%i IN ('cygpath.exe -m "%PYTHON%"') DO set "PYTHON_M=%%i"

%PYTHON% %PREFIX%\Scripts\meson --buildtype=release --prefix=%LIBRARY_PREFIX_M% --wrap-mode=nofallback --backend=ninja -Dcairo=enabled -Dcairo-libname=cairo-gobject.dll -Dpython=%PYTHON_M% ..
if errorlevel 1 exit 1

ninja -v
if errorlevel 1 exit 1

ninja test
if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1

del %LIBRARY_PREFIX%\bin\*.pdb

@REM For some reason conda-build decides that the meson files in Scripts are new?
del %PREFIX%\Scripts\meson* %PREFIX%\Scripts\wraptool*
