#pragma once

#include "Entity.h"
#include <vector>
#include "Mechanism.h"

class PressurePlate : public Mechanism {
public:
	PressurePlate();
	virtual ~PressurePlate();

	void onTriggerStart(Entity* other) override;
	void onTriggerEnd(Entity* other) override;

	virtual void activate() override;

	virtual void deactivate() override;
protected:
	int _entitiesColliding;
};