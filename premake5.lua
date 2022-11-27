project "msdf-atlas-gen"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
    staticruntime "off"
	systemversion "latest"
	disablewarnings { "4505","4201","4189","4100","4463","5054","4458","4456","4706","26495", "26812", "26451", "26439", "33010", "28251", "6001", "6262", "6031", "6387", "33011", "6385", "6011", "6201", "28160", "6255", "6385", "6335", "26495", "26439", "28196", "6285","26437", "26498"}
	warnings "off"


	files
	{
		"msdf-atlas-gen/**.h",
    	"msdf-atlas-gen/**.hpp",
    	"msdf-atlas-gen/**.cpp"
	}


	files
	{
		"msdfgen/core/**.h",
		"msdfgen/core/**.hpp",
		"msdfgen/core/**.cpp",
		"msdfgen/ext/**.h",
		"msdfgen/ext/**.hpp",
		"msdfgen/ext/**.cpp",
		"msdfgen/lib/**.cpp",
		"msdfgen/include/**.h"
	}

	flags { "MultiProcessorCompile" }

	includedirs
	{
		"msdf-atlas-gen",
		"msdfgen/include"
	}

	externalincludedirs
	{
		"msdfgen",
		"msdfgen/include",
		"../freetype/include"
	}

	defines
	{
		"_CRT_SECURE_NO_WARNINGS",
		"MSDFGEN_USE_CPP11"
	}

	links
	{
		"freetype"
	}
	
	-- links
	-- {
	-- 	"msdfgen",
	-- 	"pthread"
	-- }

	removefiles
	{
		"msdf-atlas-gen/main.cpp"
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