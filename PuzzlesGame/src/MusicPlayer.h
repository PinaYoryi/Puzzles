#pragma once
#include "Component.h"

class MusicPlayer : public Component {	
public:
	MusicPlayer() {};	
	~MusicPlayer();
	bool init(const std::map<std::string, std::string>& mapa) override;	// Simplemente iniciar� la m�sica de su AudioSource
};