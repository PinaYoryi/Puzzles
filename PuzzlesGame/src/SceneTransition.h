#pragma once

#include "Component.h"

class SceneTransition : public Component {
public:
	SceneTransition() {};
	bool init(const std::map<std::string, std::string>& mapa) override;

	void onTriggerStart(Entity* other) override;
private:
	std::string _scene;
};