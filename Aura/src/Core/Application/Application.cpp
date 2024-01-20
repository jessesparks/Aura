#include "aurapch.h"
#include "Application.h"

namespace Aura
{
	Application* Application::s_Instance;

	Application::Application()
	{
		if (s_Instance == nullptr)
		{
			s_Instance = this;
		}
	}

	void Application::Run()
	{
		while (m_Running)
		{
			std::cout << "Aura running\n";
			std::cin.get();
			m_Running = false;
		}
	}

	Application::~Application()
	{
		std::cout << "Aura closing\n";
	}
}