local mapa = {
  ambient="0.1,0.1,0.1",
  gravity="0 -9.8 0",
  entities={
    {
      name="Player",
      id=1,
      components={
        transform={
          position="0,0,0",
          rotation="0,0,0",
          scale="20,20,20",
          parent="-1"
        },
        renderer={
          mesh="Sinbad.mesh",
          material="",
          visible="true"
        },
        animation={
         animations="Dance",
         playing="true",
         loop="true"
        }
      }
    },
    {
      name="ent2",
      id=2,
      components={
        transform={
          position="0,0,100",
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
          proyection="0",
          viewport="0,0,1,1",
          color="1.0,0.5,0.3137"
        }--,
        --audiosource={
        --  volume="0.3",
        --  spacial="1"
        --}
      }
    },
    {
    name="ent3",
    id=3,
    components={
      transform={
        position="50,50,30",
        rotation="0,0,0",
        scale="1,1,1",
        parent="-1"
      },
      light={
        type="0",
        attenuation="",
        shadows="true",
        diffuse="1,1,1,1",
        specular="1,1,1,1",
        spotinner="",
        spotouter=""
        }
      }
    }
  }
}

function GetMapa ()
  return mapa
end

