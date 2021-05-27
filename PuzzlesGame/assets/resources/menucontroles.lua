local mapa = {
    ambient="0.1,0.1,0.1",
    gravity="0 -9.8 0",
    entities={
        {
            name="Camera",
            id=1,
            components={
                transform={
                    position="0,0,0",
                    rotation="0,0,0",
                    scale="1,1,1",
                    parent="-1"
                },
                camera={
                    near="0.1",
                    far="1000",
                    autoaspect="true",
                    aspect="1.78",
                    fov="50",
                    proyection="1",
                    viewport="0,0,1,1",
                    color="0,0,0"
                }
            }
        },
        {
            name="BotonO",
            id=2,
            components={
                transform={
                    position="0,0,0",
                    rotation="0,0,0",
                    scale="1,1,1",
                    parent="-1"
                },
                button={
                    text="",
                    position="0.3,0.65",
                    size="240,100",
                    name="botonAtras",
                    properties="NormalImage,TaharezLook/ButtonMenu,HoverImage,TaharezLook/ButtonMenuHover,PushedImage,TaharezLook/ButtonMenuPushed",
                    type="CHANGE_SCENE",
                    showCursor="true",
                    cursorImage="TaharezLook/MouseGeorgi",
                    continueBullet="true",
                    nextScene="menuprincipal.lua"
                }
     	    }
        },
        {
            name="skyBox",
            id=3,
            components={
                transform={
                    position="0,0,0",
                    rotation="0,0,0",
                    scale="1,1,1",
                    parent="-1"
                },        
                skybox={
                    enable="true",
                    planenormal="Z",
                    planepos="20",
                    materialname="sky/space",
                    scale="1",
                    tiling="1",
                    drawfirst="true",
                    bow="10.0",
                    xsegments="10",
                    ysegments="10"
                }
            }
        },
        {
            name="Imagen",
            id=5,
            components={
                transform={
                    position="0,0,0",
                    rotation="0,0,0",
                    scale="1,1,1",
                    parent="-1"
                },
                image={
                    source="TaharezLook/Ogrevedad",
                    position="0.15,0.1",
                    size="450,130",
                    name="Titulo",
                    properties="BackgroundEnabled,false,FrameEnabled,false,Image,TaharezLook/Ogrevedad"
                }
            }
        }       
    }
}

function GetMapa ()
    return mapa
  end