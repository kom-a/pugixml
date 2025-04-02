project "pugixml"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    targetdir "%{wks.location}/Bin/%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
    objdir "%{wks.location}/Bin-int/%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

    files { 
        "src/**"
    }

    filter "configurations:Debug"
    defines { "DEBUG" }
    symbols "On"

    filter "configurations:Release"
    defines { "NDEBUG" }
    optimize "On"
