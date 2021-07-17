#include "DronMissile.h"
#include "SceneManager.h"
#include "PlayerController.h"

bool DronMissile::init(const std::map<std::string, std::string>& mapa) {
	return true;
}

void DronMissile::onCollisionStart(Entity* other) {
	if (other->getName() == "Player") {
		//destruye el obj y luego se ejecuta la función para determinar el reinicio de partida
		SceneManager::GetInstance()->addEntityToRemove(_myEntity);
		other->getComponent<PlayerController>()->resetLevel();	
	}
	else {	
		SceneManager::GetInstance()->addEntityToRemove(_myEntity); //destruye el obj si colisiona con otro obj que no sea el player	
	}
}
