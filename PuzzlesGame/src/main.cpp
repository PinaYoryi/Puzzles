#include <iostream>
#include <PinaMotor.h>
#include "ComponentFactoryRegistration.h"
#include "GameManager.h"
#include "PlayerController.h"
#include "Follower.h"

#include "PressurePlate.h"
#include "Door.h"
#include "SceneTransition.h"


#if (defined _DEBUG)
#include <crtdbg.h>
int main() {
    _CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF); // Check Memory Leaks
#else
#include <windows.h>
int WINAPI
WinMain(HINSTANCE zhInstance, HINSTANCE prevInstance, LPSTR lpCmdLine, int nCmdShow) {
#endif
    ComponentFactoryRegistrations::ComponentFactoryRegistration<PressurePlate>("pressureplate");
    ComponentFactoryRegistrations::ComponentFactoryRegistration<Door>("door");
    ComponentFactoryRegistrations::ComponentFactoryRegistration<PlayerController>("playercontroller");
    ComponentFactoryRegistrations::ComponentFactoryRegistration<Follower>("follower");
    ComponentFactoryRegistrations::ComponentFactoryRegistration<SceneTransition>("scenetransition");

    srand(time(NULL));

    GameManager::Init();

    PinaMotor motor;
    if (!motor.init("Test")) {
#if (defined _DEBUG)
        std::cerr << "\nError en init\n";
#endif
        delete GameManager::GetInstance();
        motor.close();
        return -1;
    }

    if (!motor.launch("menuprincipal.lua")) {
#if (defined _DEBUG)
        std::cerr << "\nError en launch\n";
#endif
        delete GameManager::GetInstance();
        motor.close();
        return -1;
    }

    motor.close();

    delete GameManager::GetInstance();
}