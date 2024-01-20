#include "Aura.h"

#include <iostream>

class Sandbox : public Aura::Application
{
public:
	Sandbox()
	{
		std::cout << "Sandbox running\n";
	}
	~Sandbox()
	{
		std::cout << "Sandbox closing\n";
	}
};

Aura::Application* Aura::CreateApplication()
{
	return new Sandbox;
}