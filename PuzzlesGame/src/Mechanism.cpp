#include "Mechanism.h"
#include "SceneManager.h"

Mechanism::Mechanism()
{
}

Mechanism::~Mechanism()
{
}

bool Mechanism::init(const std::map<std::string, std::string>& mapa)
{
	if (mapa.find("connected") == mapa.end()) return false;

	std::string an = mapa.at("connected");
	int iterator = 0;
	std::string na = "";
	while (iterator < an.length() && (na = an.substr(iterator, an.find(","))) != "") {
		iterator += na.length() + 1;
		Mechanism* mech = SceneManager::GetInstance()->getEntityByID(std::stoi(na))->getComponent<Mechanism>();
		if (!mech) return false;
		_connectedMechanisms.push_back(mech);
	};

	return true;
}
