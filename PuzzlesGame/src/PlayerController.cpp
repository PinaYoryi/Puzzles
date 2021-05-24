#include "PlayerController.h"
#include "Entity.h"
#include "Input.h"
#include "GameManager.h"

PlayerController::PlayerController() :
	_trans(nullptr),
	_ai(nullptr),
	_time(0) {
}

bool PlayerController::init(const std::map<std::string, std::string>& mapa) {
	if (mapa.find("speed") == mapa.end()) return false;

	_trans = _myEntity->getComponent<Transform>();
	if (_trans == nullptr || !_trans->isInitialized()) return false;
	_ai = _myEntity->getComponent<BasicAI>();
	if (_ai == nullptr || !_ai->isInitialized()) return false;

	return true;
}

void PlayerController::update()
{
	_time += GameManager::GetInstance()->getDeltaTime();
	if (Input::GetInstance()->keyDown(SDL_SCANCODE_R)) {
		GameManager::GetInstance()->reloadLevel();
		return;
	}

	bool input = false;
	Vector3<> obj = _trans->position();
	if (Input::GetInstance()->keyHold(SDL_SCANCODE_W)) {
		input = true;
		obj.z -= 10;
	}
	else if (Input::GetInstance()->keyHold(SDL_SCANCODE_S)) {
		input = true;
		obj.z += 10;
	}

	if (Input::GetInstance()->keyHold(SDL_SCANCODE_A)) {
		input = true;
		obj.x -= 10;
	}
	else if (Input::GetInstance()->keyHold(SDL_SCANCODE_D)) {
		input = true;
		obj.x += 10;
	}

	_ai->MoveTo(obj);
	if(input) _ai->RotateTo(obj);
}

void PlayerController::resetLevel() {
	GameManager::GetInstance()->reloadLevel();
}