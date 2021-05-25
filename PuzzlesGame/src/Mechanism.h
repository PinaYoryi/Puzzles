#pragma once

#include "Entity.h"
#include <vector>
#include "Component.h"

class Mechanism : public Component {
public:
	Mechanism();
	virtual ~Mechanism();
	bool init(const std::map<std::string, std::string>& mapa) override;

	virtual void activate() = 0;
	virtual void deactivate() = 0;
protected:
	std::vector<Mechanism*> _connectedMechanisms;
};