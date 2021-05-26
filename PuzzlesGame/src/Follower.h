#pragma once
#include "Component.h"
#include "Entity.h"

class Follower : public Component {
public:
	Follower():_objective(nullptr), _strength(10){};
	bool init(const std::map<std::string, std::string>& mapa) override;
	void update() override;
private:
	Entity* _objective;
	float _strength;
};