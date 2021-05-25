#pragma once

#include "Entity.h"
#include <vector>
#include "Mechanism.h"

class Door : public Mechanism {
public:
	Door();
	virtual ~Door();
	bool init(const std::map<std::string, std::string>& mapa) override;

	virtual void activate();

	virtual void deactivate() override;
protected:
	bool _openPermanently;
	Rigidbody* _rb;
	Renderer* _rn;
};