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
            name="Nivel1",
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
                    position="0.3,0.10",
                    size="240,70",
                    name="botonNivel1",
                    properties="NormalImage,TaharezLook/ButtonJugar,HoverImage,TaharezLook/ButtonJugarHover,PushedImage,TaharezLook/ButtonJugarPushed",
                    type="CHANGE_SCENE",
                    showCursor="true",
                    cursorImage="TaharezLook/MouseGeorgi",
                    continueBullet="true",
                    nextScene="puzzle1.lua"
                }
     	    }
        },
        {
            name="Nivel2",
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
                    position="0.3,0.30",
                    size="240,70",
                    name="botonNivel2",
                    properties="NormalImage,TaharezLook/ButtonJugar,HoverImage,TaharezLook/ButtonJugarHover,PushedImage,TaharezLook/ButtonJugarPushed",
                    type="CHANGE_SCENE",
                    showCursor="true",
                    cursorImage="TaharezLook/MouseGeorgi",
                    continueBullet="true",
                    nextScene="puzzle2.lua"
                }
     	    }
        },
        {
            name="Nivel3",
            id=3,
            components={
                transform={
                    position="0,0,0",
                    rotation="0,0,0",
                    scale="1,1,1",
                    parent="-1"
                },
                button={
                    text="",
                    position="0.3,0.45",
                    size="240,70",
                    name="botonNivel3",
                    properties="NormalImage,TaharezLook/ButtonJugar,HoverImage,TaharezLook/ButtonJugarHover,PushedImage,TaharezLook/ButtonJugarPushed",
                    type="CHANGE_SCENE",
                    showCursor="true",
                    cursorImage="TaharezLook/MouseGeorgi",
                    continueBullet="true",
                    nextScene="puzzle3.lua"
                }
     	    }
        },
        {
            name="Nivel4",
            id=4,
            components={
                transform={
                    position="0,0,0",
                    rotation="0,0,0",
                    scale="1,1,1",
                    parent="-1"
                },
                button={
                    text="",
                    position="0.3,0.60",
                    size="240,70",
                    name="botonNivel4",
                    properties="NormalImage,TaharezLook/ButtonJugar,HoverImage,TaharezLook/ButtonJugarHover,PushedImage,TaharezLook/ButtonJugarPushed",
                    type="CHANGE_SCENE",
                    showCursor="true",
                    cursorImage="TaharezLook/MouseGeorgi",
                    continueBullet="true",
                    nextScene="puzzle4.lua"
                }
     	    }
        },
        {
            name="MenuPrincipal",
            id=5,
            components={
                transform={
                    position="0,0,0",
                    rotation="0,0,0",
                    scale="1,1,1",
                    parent="-1"
                },
                button={
                    text="",
                    position="0.3,0.80",
                    size="240,70",
                    name="botonMenuppal",
                    properties="NormalImage,TaharezLook/ButtonMenu,HoverImage,TaharezLook/ButtonMenuHover,PushedImage,TaharezLook/ButtonMenuPushed",
                    type="CHANGE_SCENE",
                    showCursor="true",
                    cursorImage="TaharezLook/MouseGeorgi",
                    continueBullet="false",
                    nextScene="menuprincipal"
                }
     	    }
        },
        {
            name="skyBox",
            id=6,
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
            name="musicBox",
            id=8,
            components={
                transform={
                position="0,0,0",
                rotation="0,0,0",
                scale="1,1,1",
                parent="-1"
                },
                musicplayer={
                },
                audiosource={
                sound="TremLoadingloopl.wav",
                volume="0.125",
                velocity="0,0,0"
                }
            }
        }
    }
}

function GetMapa ()
    return mapa
  end