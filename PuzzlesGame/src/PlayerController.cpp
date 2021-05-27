#include "PlayerController.h"
#include "Entity.h"
#include "Input.h"
#include "GameManager.h"
#include "Animation.h"

PlayerController::PlayerController() :
	_trans(nullptr),
	_rigidbody(nullptr),
	_ai(nullptr),
	_an(nullptr),
	_time(0) {
}

bool PlayerController::init(const std::map<std::string, std::string>& mapa) {
	if (mapa.find("idle") == mapa.end() || mapa.find("move") == mapa.end()) return false;

	_trans = _myEntity->getComponent<Transform>();
	_rigidbody = _myEntity->getComponent<Rigidbody>();
	_ai = _myEntity->getComponent<BasicAI>();
	_an = _myEntity->getComponent<Animation>();

	std::string s = mapa.at("idle");
	_idle = s;

	s = mapa.at("move");
	_move = s;
	_moving = false;

	return true;
}

void PlayerController::update()
{
	_time += GameManager::GetInstance()->getDeltaTime();
	if (Input::GetInstance()->keyDown(SDL_SCANCODE_R)) {
		GameManager::GetInstance()->reloadLevel();
		return;
	}

	if (Input::GetInstance()->keyDown(SDL_SCANCODE_ESCAPE)) {
		GameManager::GetInstance()->toScene("", sceneState::Pauses);
	}

	bool input = false;
	Vector3<> obj = _trans->position();
	if (Input::GetInstance()->keyHold(SDL_SCANCODE_W)) {
		input = true;
		obj.z -= _ai->getThreshhold() + _ai->getStep(); // El margen de error mas un valor lo suficientemente grande como para no dar problemas
	}
	else if (Input::GetInstance()->keyHold(SDL_SCANCODE_S)) {
		input = true;
		obj.z += _ai->getThreshhold() + _ai->getStep();
	}

	if (Input::GetInstance()->keyHold(SDL_SCANCODE_A)) {
		input = true;
		obj.x -= _ai->getThreshhold() + _ai->getStep();
	}
	else if (Input::GetInstance()->keyHold(SDL_SCANCODE_D)) {
		input = true;
		obj.x += _ai->getThreshhold() + _ai->getStep();
	}

	if (input) {
		_ai->rotateTo(obj); // Solo se rota si se da una nueva direccion
		if (!_moving) {
			_moving = true;
			std::cout << "moviendo\n";
			_an->changeAnimation(_move);
		}
	}
	else if (_moving) {
		_moving = false;
		_an->changeAnimation(_idle);
	}
	
	_ai->moveTo(obj); // Si no tiene a donde moverse se queda en el sitio
}

void PlayerController::resetLevel() {
	GameManager::GetInstance()->reloadLevel();
}