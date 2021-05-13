echo COPY DEPENDENCIES
cd ../P32021/bin
echo comprobando si hay que a copiar
if not exist ../../PuzzlesGame/bin goto copydependencies
if not exist ../../PuzzlesGame/bin/plugins.cfg goto copydependencies
if not exist ../../PuzzlesGame/bin/resources.cfg goto copydependencies
if not exist ../../PuzzlesGame/bin/Codec_STBI.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/Codec_STBI_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/fmodL64.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/lua54.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreMain.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreMain_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreMeshLodGenerator.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreMeshLodGenerator_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreOverlay.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreOverlay_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgrePaging.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgrePaging_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreProperty.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreProperty_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreRTShaderSystem.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreRTShaderSystem_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/Plugin_ParticleFX.dll copydependencies
if not exist ../../PuzzlesGame/bin/Plugin_ParticleFX_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/RenderSystem_Direct3D11.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/RenderSystem_Direct3D11_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/SDL2.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/zlib.dll goto copydependencies
goto endcopy

:copydependencies
echo hace falta copiar
cd ../../PuzzlesGame & mkdir bin & cd ../P32021/bin
REM copy /Y ogre.cfg "../../PuzzlesGame/bin/ogre.cfg"
copy /Y plugins.cfg "../../PuzzlesGame/bin/plugins.cfg"
copy /Y resources.cfg "../../PuzzlesGame/bin/resources.cfg"
copy /Y Codec_STBI.dll "../../PuzzlesGame/bin/Codec_STBI.dll"
copy /Y Codec_STBI_d.dll "../../PuzzlesGame/bin/Codec_STBI_d.dll"
copy /Y fmodL64.dll "../../PuzzlesGame/bin/fmodL64.dll"
copy /Y lua54.dll "../../PuzzlesGame/bin/lua54.dll"
copy /Y OgreMain.dll "../../PuzzlesGame/bin/OgreMain.dll"
copy /Y OgreMain_d.dll "../../PuzzlesGame/bin/OgreMain_d.dll"
copy /Y OgreMeshLodGenerator.dll "../../PuzzlesGame/bin/OgreMeshLodGenerator.dll"
copy /Y OgreMeshLodGenerator_d.dll "../../PuzzlesGame/bin/OgreMeshLodGenerator_d.dll"
copy /Y OgreOverlay.dll "../../PuzzlesGame/bin/OgreOverlay.dll"
copy /Y OgreOverlay_d.dll "../../PuzzlesGame/bin/OgreOverlay_d.dll"
copy /Y OgrePaging.dll "../../PuzzlesGame/bin/OgrePaging.dll"
copy /Y OgrePaging_d.dll "../../PuzzlesGame/bin/OgrePaging_d.dll"
copy /Y OgreProperty.dll "../../PuzzlesGame/bin/OgreProperty.dll"
copy /Y OgreProperty_d.dll "../../PuzzlesGame/bin/OgreProperty_d.dll"
copy /Y OgreRTShaderSystem.dll "../../PuzzlesGame/bin/OgreRTShaderSystem.dll"
copy /Y OgreRTShaderSystem_d.dll "../../PuzzlesGame/bin/OgreRTShaderSystem_d.dll"
copy /Y Plugin_ParticleFX.dll "../../PuzzlesGame/bin/Plugin_ParticleFX.dll"
copy /Y Plugin_ParticleFX_d.dll "../../PuzzlesGame/bin/Plugin_ParticleFX_d.dll"
copy /Y RenderSystem_Direct3D11.dll "../../PuzzlesGame/bin/RenderSystem_Direct3D11.dll"
copy /Y RenderSystem_Direct3D11_d.dll "../../PuzzlesGame/bin/RenderSystem_Direct3D11_d.dll"
copy /Y SDL2.dll "../../PuzzlesGame/bin/SDL2.dll"
copy /Y zlib.dll "../../PuzzlesGame/bin/zlib.dll"
:endcopy
echo fin

cd ../../PuzzlesGame