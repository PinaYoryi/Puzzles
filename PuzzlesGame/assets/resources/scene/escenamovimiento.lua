local mapa = {
  ambient="0.1,0.1,0.1",
  gravity="0 -9.8 0",
  entities={
    {
      name="Player",
      id=1,
      components={
        transform={
          position="20,-80,0",
          rotation="0,0,0",
          scale="2,2,2",
          parent="-1"
        },
        renderer={
          mesh="Sinbad.mesh",
          material="",
          visible="true"
        },
        rigidbody={
          shape="0",
          mass="10",
          inertia="0,0,0",
          restitution="0.2",
          damping="0.2,0.2",
          trigger="false",
          kinematic ="false"
        },
        audiolistener={
          position="20, -80, 0"
        },
        basicai={
          step="500",
          threshold="0.5",
          thresholdRot="0.1",
          stepRot="0.002"
        },
        playercontroller={
        }
      }
    },
    {
      name="Camera",
      id=2,
      components={
        transform={
          position="0,-80,200",
          rotation="0,0,0",
          scale="2,2,2",
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
          color="1.0,0.5,0.3137"
        }
      }
    },
    {
      name="Follower",
      id=5,
      components={
        transform={
          position="0,10,0",
          rotation="0,0,0",
          scale="0.5,0.5,0.5",
          parent="-1"
        },
        renderer={
          mesh="Sinbad.mesh",
          material="",
          visible="true"
        },
        rigidbody={
          shape="0",
          mass="20",
          inertia="0,0,0",
          restitution="0.2",
          damping="0.2,0.2",
          trigger="false",
          kinematic="true"
        },
        basicai={
          step="100",
          threshold="0.5",
          thresholdRot="0.1",
          stepRot="0.002"
        },
        follower={
          strength="250",
          objective="1"
        }
      }
    },
    {
    name="Luz",
    id=3,
    components={
      transform={
        position="50,0,0",
        rotation="0,0,0",
        scale="1,1,1",
        parent="-1"
      },
      light={
        type="0",
        attenuation="",
        shadows="true",
        diffuse="1,0.2,1,1",
        specular="1,1,1,1",
        spotinner="",
        spotouter=""
        }
      }
    },
    {
      name="Suelo",
      id=4,
      components={
        transform={
          position="0,-100,0",
          rotation="0,0,0",
          scale="3,0.2,3",
          parent="-1"
        },
        renderer={
          mesh="cube.mesh",
          material="",
          visible="true"
        },
        rigidbody={
          shape="0",
          mass="0",
          inertia="0,0,0",
          restitution="0.2",
          damping="0.2,0.2",
          trigger="false",
          kinematic ="false"
        }
      }
    }
  }
}

function GetMapa ()
  return mapa
end
