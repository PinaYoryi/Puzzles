local mapa = {
  ambient="0.1,0.1,0.1",
  gravity="0 -9.8 0",
  entities={
    {
      name="Suelo",
      id=1,
      components={
        transform={
          position="0,0,0",
          rotation="0,0,0",
          scale="0.75,0.03,0.75",
          parent="-1"
        },
        renderer={
          mesh="cube.mesh",
          material="metalPlatform",
          visible="true"
        },
        rigidbody={
          shape="0",
          mass="0",
          inertia="0,0,0",
          restitution="0.2",
          damping="0.2,0.2",
          trigger="false",
          kinematic="true"
        }
      }
    },
    {
      name="paredN1",
      id=2,
      components={
        transform={
          position="-20,1,-36",
          rotation="0,0,0",
          scale="0.29,0.15,0.03",
          parent="-1"
        },
        renderer={
          mesh="cube.mesh",
          material="metalPlatform",
          visible="true"
        },
        rigidbody={
          shape="0",
          mass="0",
          inertia="0,0,0",
          restitution="0.2",
          damping="0.2,0.2",
          trigger="false",
          kinematic="true"
        }
      }
    },
    {
      name="paredN2",
      id=2,
      components={
        transform={
          position="20,1,-36",
          rotation="0,0,0",
          scale="0.29,0.15,0.03",
          parent="-1"
        },
        renderer={
          mesh="cube.mesh",
          material="metalPlatform",
          visible="true"
        },
        rigidbody={
          shape="0",
          mass="0",
          inertia="0,0,0",
          restitution="0.2",
          damping="0.2,0.2",
          trigger="false",
          kinematic="true"
        }
      }
    },
    {
      name="paredS",
      id=3,
      components={
        transform={
          position="0,1,36",
          rotation="0,0,0",
          scale="0.75,0.15,0.03",
          parent="-1"
        },
        renderer={
          mesh="cube.mesh",
          material="metalPlatform",
          visible="true"
        },
        rigidbody={
          shape="0",
          mass="0",
          inertia="0,0,0",
          restitution="0.2",
          damping="0.2,0.2",
          trigger="false",
          kinematic="true"
        }
      }
    },
    {
      name="paredW",
      id=4,
      components={
        transform={
          position="-36,1,0",
          rotation="0,0,0",
          scale="0.03,0.15,0.75",
          parent="-1"
        },
        renderer={
          mesh="cube.mesh",
          material="metalPlatform",
          visible="true"
        },
        rigidbody={
          shape="0",
          mass="0",
          inertia="0,0,0",
          restitution="0.2",
          damping="0.2,0.2",
          trigger="false",
          kinematic="true"
        }
      }
    },
    {
      name="paredE",
      id=5,
      components={
        transform={
          position="36,1,0",
          rotation="0,0,0",
          scale="0.03,0.15,0.75",
          parent="-1"
        },
        renderer={
          mesh="cube.mesh",
          material="metalPlatform",
          visible="true"
        },
        rigidbody={
          shape="0",
          mass="0",
          inertia="0,0,0",
          restitution="0.2",
          damping="0.2,0.2",
          trigger="false",
          kinematic="true"
        }
      }
    },
    {
      name="cam",
      id=6,
      components={
        transform={
          position="0,80,50",
          rotation="-60,0,0",
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
          color="0.0,0.0,0.0"
        }
      }
    },
    {
      name="light",
      id=7,
      components={
        transform={
          position="0,0,0",
          rotation="-70,0,0",
          scale="1,1,1",
          parent="-1"
        },
        light={
          type="1",
          attenuation="",
          shadows="true",
          diffuse="1,1,1,1",
          specular="1,1,1,1",
          spotinner="",
          spotouter=""
        }
      }
    },
    {
      name="Placa",
      id=8,
      components={
        transform={
          position="15,3,0",
          rotation="0,0,0",
          scale="5,5,5",
          parent="-1"
        },
        pressureplate={
          connected="9"
        },
        renderer={
          mesh="Cylinder.mesh",
          material="blue",
          visible="true"
        },
        rigidbody={
          shape="0",
          mass="0",
          inertia="0,0,0",
          restitution="0.2",
          damping="0.2,0.2",
          trigger="true",
          kinematic="true"
        }
      }
    },
    {
      name="Puerta",
      id=9,
      components={
        transform={
          position="0,0,-36",
          rotation="0,0,0",
          scale="0.12,0.15,0.04",
          parent="-1"
        },
        door={
          connected="",
          permanent="false"
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
          kinematic="true"
        }
      }
    },
    {
      name="Player",
      id=10,
      components={
        transform={
          position="-15,5,15",
          rotation="0,0,0",
          scale="1,1,1",
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
          damping="0.7,0.7",
          trigger="false",
          kinematic ="false"
        },
        audiolistener={
          position="-15, 5, 0"
        },
        basicai={
          step="500",
          threshold="0.5",
          thresholdRot="0.1",
          stepRot="0.002"
        },
        playercontroller={
        },
        animation={
          animations="RunBase",
          playing="true",
          loop="true"
        }
      }
    },
    {
      name="box",
      id=10,
      components={
        transform={
          position="-15,2,0",
          rotation="0,0,0",
          scale="3,3,3",
          parent="-1"
        },
        renderer={
          mesh="Mesh.mesh",
          material="red",
          visible="true"
        },
        rigidbody={
          shape="0",
          mass="10",
          inertia="0,0,0",
          restitution="0.2",
          damping="0.9,0.9",
          trigger="false",
          kinematic="false"
        }
      }
    },
    {
      name="Exit",
      id=12,
      components={
        transform={
          position="0,0,-42",
          rotation="0,0,0",
          scale="0.12,0.15,0.06",
          parent="-1"
        },
        renderer={
          mesh="cube.mesh",
          material="",
          visible="false"
        },
        rigidbody={
          shape="0",
          mass="0",
          inertia="0,0,0",
          restitution="0.2",
          damping="0.2,0.2",
          trigger="true",
          kinematic="true"
        },
        scenetransition={
          scene="puzzle2.lua"
        }
      }
    }
  }
}

function GetMapa ()
  return mapa
end

