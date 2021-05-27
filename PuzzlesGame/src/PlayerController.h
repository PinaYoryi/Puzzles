#pragma once
#include "BasicAI.h"
#include "Animation.h"

class PlayerController : public Component {
public:
	PlayerController();

	/// <summary>
	/// Inicializa el componente con los valores pasador por parametro
	/// utiliza setMesh para poner su mesh y setMaterial para poner su material
	/// </summary>
	bool init(const std::map<std::string, std::string>& mapa) override;

	/// <summary>
	/// Lee los inputs del jugador y los procesa y traduce a posiciones a las que moverse
	/// </summary>
	void update() override;

	/// <summary>
	/// Le dice al game manager que cambia de escena con todo lo que conlleva
	/// </summary>
	void resetLevel();

private:
	Transform* _trans;
	Rigidbody* _rigidbody;
	BasicAI* _ai;
	Animation* _an;
	std::string _idle;
	std::string _move;
	bool _moving = false;
	float _time;	//	Tiempo que ha tardado el jugador en resolver el puzzle
};