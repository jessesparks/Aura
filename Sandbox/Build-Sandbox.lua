project "Sandbox"
   kind "ConsoleApp"
   language "C++"
   cppdialect "C++20"
   staticruntime "on"

   files { "src/**.h", "src/**.cpp" }

   includedirs
   {
      "src",

	  -- Include Aura
	  "../Aura/src"
   }

   links
   {
      "Aura"
   }

   targetdir ("../bin/" .. OutputDir .. "/%{prj.name}")
   objdir ("../bin-tmp/" .. OutputDir .. "/%{prj.name}")

   filter "system:windows"
       systemversion "latest"
       defines { "WINDOWS" }

   filter "configurations:Debug"
       defines { "DEBUG" }
       runtime "Debug"
       symbols "On"

   filter "configurations:Release"
       defines { "RELEASE" }
       runtime "Release"
       optimize "On"
       symbols "On"

   filter "configurations:Dist"
       defines { "DIST" }
       runtime "Release"
       optimize "On"
       symbols "Off"