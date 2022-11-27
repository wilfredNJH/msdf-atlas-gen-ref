project "msdfgen"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
    staticruntime "off"
	systemversion "latest"
	warnings "off"
	disablewarnings { "4505","4201","4189","4100","4463","5054","4458","4456","4706","26495", "26812", "26451", "26439", "33010", "28251", "6001", "6262", "6031", "6387", "33011", "6385", "6011", "6201", "28160", "6255", "6385", "6335", "26495", "26439", "28196", "6285","26437", "26498"}


	files
	{
		"core/**.h",
		"core/**.hpp",
		"core/**.cpp",
		"ext/**.h",
		"ext/**.hpp",
		"ext/**.cpp",
		"lib/**.cpp",
		"include/**.h"
	}
	
	flags { "MultiProcessorCompile" }

	externalincludedirs
	{
		"../../freetype/include",
		"include"
	}

	defines
	{
		"MSDFGEN_USE_CPP11"
	}

	links
	{
		"freetype"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Production"
		runtime "Release"
		optimize "on"
        symbols "off"