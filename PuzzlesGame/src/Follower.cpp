#include "Follower.h"
#include "SceneManager.h"
#include "BasicAI.h"
#include "GameManager.h"

bool Follower::init(const std::map<std::string, std::string>& mapa) {
	if (mapa.find("strength") == mapa.end() || mapa.find("objective") == mapa.end()) return false;

	std::string s = mapa.at("strength");
	_strength = std::stof(s);

	s = mapa.at("objective");
	_objective = SceneManager::GetInstance()->getEntityByID(std::stoi(s));
	if (_objective == nullptr) return false;
}

void Follower::update() {
	_myEntity->getComponent<BasicAI>()->setStep(_strength);
	_myEntity->getComponent<BasicAI>()->moveTo(_objective->getComponent<Transform>()->position());
	_myEntity->getComponent<BasicAI>()->rotateTo(_objective->getComponent<Transform>()->position());
}

void Follower::onCollisionStart(Entity* other) {
	if (other->getName() == "Player") {
		GameManager::GetInstance()->reloadLevel();
	}
}