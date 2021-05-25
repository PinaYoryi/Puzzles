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
      name="paredN",
      id=2,
      components={
        transform={
          position="0,1,-36",
          rotation="0,0,0",
          scale="0.75,0.08,0.03",
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
          scale="0.75,0.08,0.03",
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
          scale="0.03,0.08,0.75",
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
          scale="0.03,0.08,0.75",
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
          position="15,0,0",
          rotation="0,0,0",
          scale="0.05,0.15,0.05",
          parent="-1"
        },
        pressureplate={
          connected="9"
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
          position="0,0,0",
          rotation="0,0,0",
          scale="0.05,0.15,0.05",
          parent="-1"
        },
        door={
          connected="",
          permanent="true"
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
      name="pelota",
      id=10,
      components={
        transform={
          position="15,200,0",
          rotation="0,0,0",
          scale="0.01,0.01,0.01",
          parent="-1"
        },
        renderer={
          mesh="sphere.mesh",
          material="",
          visible="true"
        },
        rigidbody={
          shape="1",
          mass="1",
          inertia="0,0,0",
          restitution="0.2",
          damping="0.2,0.2",
          trigger="false",
          kinematic="false"
        }
      }
    }
  }
}

function GetMapa ()
  return mapa
end

