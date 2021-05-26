#include "SceneTransition.h"
#include "Entity.h"
#include "SceneManager.h"

bool SceneTransition::init(const std::map<std::string, std::string>& mapa) {
	if (mapa.find("scene") == mapa.end()) return false;

	std::string s = mapa.at("scene");
	_scene = s;

	return true;
}

void SceneTransition::onTriggerStart(Entity* other)
{
	if (other->getName() == "Player") {
		SceneManager::GetInstance()->newScene(_scene);
	}
}
