REM====================
	SET FILENAME=BadMojo-MegaWad
REM====================
set path="C:\Program Files\WinRAR\";%path%

move %FILENAME%.pk3 BadMojoMWBackups
cd BadMojoMWBackups
ren %FILENAME%.pk3 %FILENAME%-%date:~4,2%%date:~7,2%%date:~10,4%%time:~1,1%%time:~3,2%.pk3

cd ..\%FILENAME%

winrar a -r -u -x@"*.zip *.pk3" -x*.git* -x*.git*/ -afzip %FILENAME%.zip *.*

move %FILENAME%.zip ../

cd ..

zip2pk3rev %FILENAME%.zip

