:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Zips up all directories. Use it to pack templates or styles
:: to be uploaded to the server.
::
:: Created: 2007-11-05, Holger
:: (c) 2007 Preclick Corporation
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


:: Set the Zip Software (see http://www.7zip.org):

SET ZIPPER="C:\Program Files\7-Zip\7z.exe"


:: Build a listing of the directories:

dir /B /A:D * >dirs.txt


:: Zip up each directory:

for /F %%f in (dirs.txt) do (
	%ZIPPER% a -rtzip download\%%f.zip %%f -x!.svn*
)


:: Delete unneeded files:

del download\.svn.zip
del dirs.txt

pause