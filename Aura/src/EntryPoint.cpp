#include "aurapch.h"
#include "Core/Application/Application.h"

int main()
{
	Aura::Application* app = Aura::CreateApplication();
	app->Run();
	delete app;

	return 0;
}