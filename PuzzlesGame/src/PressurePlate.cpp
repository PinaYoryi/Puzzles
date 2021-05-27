#include "PressurePlate.h"
#include "Rigidbody.h"

PressurePlate::PressurePlate() : _entitiesColliding(0)
{
}

PressurePlate::~PressurePlate()
{
}


void PressurePlate::onTriggerStart(Entity* other)
{
	if (!other->getComponent<Rigidbody>()->isKinematic()) {
		++_entitiesColliding;
		activate();
	}
}

void PressurePlate::onTriggerEnd(Entity* other)
{
	if (!other->getComponent<Rigidbody>()->isKinematic()) {
		if((--_entitiesColliding) == 0)
		deactivate();
	}
}

void PressurePlate::activate()
{
	for (auto mech : _connectedMechanisms) {
		mech->activate();
	}
}

void PressurePlate::deactivate()
{
	for (auto mech : _connectedMechanisms) {
		mech->deactivate();
	}
}
