#include <iostream>
#include <PinaMotor.h>
#include "ComponentFactoryRegistration.h"

#include "PressurePlate.h"
#include "Door.h"


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

    PinaMotor motor;
    motor.init("Test");

    motor.launch("escenaprueba.lua");

    motor.close();
}