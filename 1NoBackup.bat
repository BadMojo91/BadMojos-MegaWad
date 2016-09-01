REM====================
	SET FILENAME=BadMojo-MegaWad
REM====================
set path="C:\Program Files\WinRAR\";%path%

del %FILENAME%.pk3

cd %FILENAME%

winrar a -r -u -x@"*.zip *.pk3" -x*.git* -x*.git*/ -afzip %FILENAME%.zip *.*

move %FILENAME%.zip ../

cd ..

zip2pk3rev %FILENAME%.zip

