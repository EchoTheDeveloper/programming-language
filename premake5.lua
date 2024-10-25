workspace "Lang"
    architecture "x64"
    configurations { "Debug", "Release" }
    startproject "Lang"
    version = "v1.0.0"

project "Lang"
    location "build"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    
    targetdir ("dist/" .. _ACTION .. "/%{prj.name}/%{cfg.buildcfg}-%{cfg.platform}-%{cfg.architecture}/" .. version)
    objdir ("build/" .. _ACTION .. "/%{prj.name}/%{cfg.buildcfg}-%{cfg.platform}-%{cfg.architecture}/" .. version)

    files {
        "src/**.cpp",
        "src/**.hpp",
        "src/**.h",
        "src/**.asm",
        "src/**.txt",
        "src/**.md",
        "src/**.json"
    }

    includedirs { "src" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
