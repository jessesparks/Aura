project "Aura"
   kind "StaticLib"
   language "C++"
   cppdialect "C++20"
   staticruntime "on"

   pchheader "aurapch.h"
   pchsource "src/aurapch.cpp"

   files { "src/**.h", "src/**.cpp" }

   includedirs
   {
      "src"
   }

   targetdir ("../bin/" .. OutputDir .. "/%{prj.name}")
   objdir ("../bin-tmp/" .. OutputDir .. "/%{prj.name}")

   filter "system:windows"
       systemversion "latest"
       defines { }

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