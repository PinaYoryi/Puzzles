echo COPY DEPENDENCIES
cd ../P32021/bin
echo comprobando si hay que a copiar
if not exist ../../PuzzlesGame/bin goto copydependencies
if not exist ../../PuzzlesGame/bin/plugins.cfg goto copydependencies
if not exist ../../PuzzlesGame/bin/Codec_STBI.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/Codec_STBI_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/fmodL64.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/lua54.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreMain.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreMain_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreMeshLodGenerator.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreMeshLodGenerator_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgrePaging.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgrePaging_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreProperty.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreProperty_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreRTShaderSystem.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/OgreRTShaderSystem_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/Plugin_ParticleFX.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/Plugin_ParticleFX_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/RenderSystem_GL.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/RenderSystem_GL_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/SDL2.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/zlib.dll goto copydependencies

if not exist ../../PuzzlesGame/bin/CEGUIBase-0.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/CEGUIBase-0_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/CEGUIOgreRenderer-0.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/CEGUIOgreRenderer-0_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/CEGUIExpatParser.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/CEGUIExpatParser_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/CEGUICoreWindowRendererSet.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/CEGUICoreWindowRendererSet_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/freetype.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/freetype_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/glew.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/glew_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/glfw.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/glfw_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/jpeg.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/jpeg_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/libexpat.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/libexpat_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/libpng.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/libpng_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/pcre.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/pcre_d.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/SILLY.dll goto copydependencies
if not exist ../../PuzzlesGame/bin/SILLY_d.dll goto copydependencies

goto endcopy

:copydependencies
echo hace falta copiar
cd ../../PuzzlesGame & mkdir bin & cd ../P32021/bin
copy /Y Codec_STBI.dll "../../PuzzlesGame/bin/Codec_STBI.dll"
copy /Y Codec_STBI_d.dll "../../PuzzlesGame/bin/Codec_STBI_d.dll"
copy /Y fmodL64.dll "../../PuzzlesGame/bin/fmodL64.dll"
copy /Y lua54.dll "../../PuzzlesGame/bin/lua54.dll"
copy /Y OgreMain.dll "../../PuzzlesGame/bin/OgreMain.dll"
copy /Y OgreMain_d.dll "../../PuzzlesGame/bin/OgreMain_d.dll"
copy /Y OgreMeshLodGenerator.dll "../../PuzzlesGame/bin/OgreMeshLodGenerator.dll"
copy /Y OgreMeshLodGenerator_d.dll "../../PuzzlesGame/bin/OgreMeshLodGenerator_d.dll"
copy /Y OgrePaging.dll "../../PuzzlesGame/bin/OgrePaging.dll"
copy /Y OgrePaging_d.dll "../../PuzzlesGame/bin/OgrePaging_d.dll"
copy /Y OgreProperty.dll "../../PuzzlesGame/bin/OgreProperty.dll"
copy /Y OgreProperty_d.dll "../../PuzzlesGame/bin/OgreProperty_d.dll"
copy /Y OgreRTShaderSystem.dll "../../PuzzlesGame/bin/OgreRTShaderSystem.dll"
copy /Y OgreRTShaderSystem_d.dll "../../PuzzlesGame/bin/OgreRTShaderSystem_d.dll"
copy /Y Plugin_ParticleFX.dll "../../PuzzlesGame/bin/Plugin_ParticleFX.dll"
copy /Y Plugin_ParticleFX_d.dll "../../PuzzlesGame/bin/Plugin_ParticleFX_d.dll"
copy /Y RenderSystem_GL.dll "../../PuzzlesGame/bin/RenderSystem_GL.dll"
copy /Y RenderSystem_GL_d.dll "../../PuzzlesGame/bin/RenderSystem_GL_d.dll"
copy /Y SDL2.dll "../../PuzzlesGame/bin/SDL2.dll"
copy /Y zlib.dll "../../PuzzlesGame/bin/zlib.dll"

copy /Y CEGUIBase-0.dll "../../PuzzlesGame/bin/CEGUIBase-0.dll"
copy /Y CEGUIBase-0_d.dll "../../PuzzlesGame/bin/CEGUIBase-0_d.dll"
copy /Y CEGUIOgreRenderer-0.dll "../../PuzzlesGame/bin/CEGUIOgreRenderer-0.dll"
copy /Y CEGUIOgreRenderer-0_d.dll "../../PuzzlesGame/bin/CEGUIOgreRenderer-0_d.dll"
copy /Y CEGUIExpatParser.dll "../../PuzzlesGame/bin/CEGUIExpatParser.dll"
copy /Y CEGUIExpatParser_d.dll "../../PuzzlesGame/bin/CEGUIExpatParser_d.dll"
copy /Y CEGUICoreWindowRendererSet.dll "../../PuzzlesGame/bin/CEGUICoreWindowRendererSet.dll"
copy /Y CEGUICoreWindowRendererSet_d.dll "../../PuzzlesGame/bin/CEGUICoreWindowRendererSet_d.dll"
copy /Y freetype.dll "../../PuzzlesGame/bin/freetype.dll"
copy /Y freetype_d.dll "../../PuzzlesGame/bin/freetype_d.dll"
copy /Y glew.dll "../../PuzzlesGame/bin/glew.dll"
copy /Y glew_d.dll "../../PuzzlesGame/bin/glew_d.dll"
copy /Y glfw.dll "../../PuzzlesGame/bin/glfw.dll"
copy /Y glfw_d.dll "../../PuzzlesGame/bin/glfw_d.dll"
copy /Y jpeg.dll "../../PuzzlesGame/bin/jpeg.dll"
copy /Y jpeg_d.dll "../../PuzzlesGame/bin/jpeg_d.dll"
copy /Y libexpat.dll "../../PuzzlesGame/bin/libexpat.dll"
copy /Y libexpat_d.dll "../../PuzzlesGame/bin/libexpat_d.dll"
copy /Y libpng.dll "../../PuzzlesGame/bin/libpng.dll"
copy /Y libpng_d.dll "../../PuzzlesGame/bin/libpng_d.dll"
copy /Y pcre.dll "../../PuzzlesGame/bin/pcre.dll"
copy /Y pcre_d.dll "../../PuzzlesGame/bin/pcre_d.dll"
copy /Y SILLY.dll "../../PuzzlesGame/bin/SILLY.dll"
copy /Y SILLY_d.dll "../../PuzzlesGame/bin/SILLY_d.dll"

:endcopy

if not exist ../../PuzzlesGame/bin/scheme.cfg copy /Y scheme.cfg "../../PuzzlesGame/bin/scheme.cfg"

echo fin

cd ../../PuzzlesGame