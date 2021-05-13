REM THIS BATCH FILE HAS TO BE CALLED BY A X64 NATIVE TOOLS COMMAND PROMPT

cd P32021
call PinaMotor.bat
cd ..

echo BUILD PUZZLES
cd PuzzlesGame
msbuild PuzzlesGame.sln -p:Configuration=Debug
msbuild PuzzlesGame.sln -p:Configuration=Release
echo BUILDING DONE