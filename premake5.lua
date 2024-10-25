workspace "Lang"
    architecture "x64"
    configurations { "Debug", "Release" }
    startproject "Lang"

project "Lang"
    location "build"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    
    targetdir "bin/%{cfg.buildcfg}"
    objdir "bin-int/%{cfg.buildcfg}"

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
