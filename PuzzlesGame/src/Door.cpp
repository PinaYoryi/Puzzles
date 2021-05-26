#include "Door.h"
#include "Rigidbody.h"
#include "Renderer.h"

Door::Door(): _openPermanently(false)
{
}

Door::~Door()
{
}

bool Door::init(const std::map<std::string, std::string>& mapa)
{
	if (Mechanism::init(mapa)) {
		if (mapa.find("permanent") == mapa.end()) return false;

		if (!(_rb = _myEntity->getComponent<Rigidbody>()) || !(_rn = _myEntity->getComponent<Renderer>())) return false;

		if (mapa.at("permanent") == "true") _openPermanently = true;
		else if (mapa.at("permanent") == "false") _openPermanently = false;
		else return false;

		return true;
	}

	return false;
}

void Door::activate()
{
	_rb->setTrigger(true);
	_rn->setVisible(false);
}

void Door::deactivate()
{
	if (!_openPermanently) {
		_rb->setTrigger(false);
		_rn->setVisible(true);
	}
}
