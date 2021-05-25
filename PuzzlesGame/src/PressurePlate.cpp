#include "PressurePlate.h"
#include "Rigidbody.h"

PressurePlate::PressurePlate()
{
}

PressurePlate::~PressurePlate()
{
}


void PressurePlate::onTriggerStart(Entity* other)
{
	if (!other->getComponent<Rigidbody>()->isKinematic()) {
		activate();
	}
}

void PressurePlate::onTriggerEnd(Entity* other)
{
	if (!other->getComponent<Rigidbody>()->isKinematic()) {
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
