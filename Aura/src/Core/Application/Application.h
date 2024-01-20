#pragma once

namespace Aura
{
	class Application
	{
	public:
		Application();
		virtual ~Application();

		void Run();
	private:
		static Application* s_Instance;
		bool m_Running = true;
	};
	extern Application* CreateApplication();
}