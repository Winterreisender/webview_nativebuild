package("MSWebview2")
    set_kind("library")
    set_license("https://www.nuget.org/packages/Microsoft.Web.WebView2/1.0.1518.46/License")

    -- add_urls("https://globalcdn.nuget.org/packages/microsoft.web.webview2.$(version).nupkg")
    add_urls("https://globalcdn.nuget.org/packages/microsoft.web.webview2.1.0.1518.46.nupkg#dl.zip")
    add_versions("1.0.1518.46", "63020b2d569d09a2098ae1ca20dd4cc281885f794aa00fc8812c6ab52dd49618")

    on_install(function (package)
        os.trymv("build/native/include/*", package:installdir("include"))
    end)
package_end()

package("webview")
    set_kind("library", {headeronly = true})
    set_homepage("https://github.com/webview/webview")
    set_description("Tiny cross-platform webview library for C/C++.")
    set_license("MIT")

    set_urls("https://github.com/webview/webview.git")
    add_versions("0.10.0", "14f8e24a873c7e8deb2b1dd29c8e5841529fe467")
    
    if is_plat("windows") then
        add_deps("MSWebview2 1.0.1518.46")
    elseif is_plat("linux") then 
    end

    on_install(function (package)
        os.trymv("*.h",   package:installdir("include") )
    end)

    on_test(function (package)
        -- assert(package:has_cfuncs("webview_create", {includes = "webview.h"}))
    end)
package_end()

add_requires("webview 0.10.0")

if is_plat("linux") then
    add_requires("pkgconfig::gtk+-3.0", "pkgconfig::webkit2gtk-4.0", {system = true})
end

target("webview_shared")
    set_kind("shared")
    set_languages("c++17")
    add_packages("webview")
    
    if is_plat("linux") then
        add_packages("pkgconfig::gtk+-3.0")
        add_packages("pkgconfig::webkit2gtk-4.0")
    end

    if is_plat("windows") then
        add_cxxflags("/EHsc")
        add_defines("WEBVIEW_API=__declspec(dllexport)")
    end

    if is_plat("macosx") then
        set_languages("c++11")
        add_mxflags("-framework WebKit")
        add_cflags("-framework WebKit")
    end

    add_files("src/webview.cpp")
target_end()

target("webview_test")
    set_kind("binary")
    set_languages("c++17")
    add_packages("webview")

    if is_plat("linux") then
        add_packages("pkgconfig::gtk+-3.0")
        add_packages("pkgconfig::webkit2gtk-4.0")
    end

    if is_plat("macosx") then
        set_languages("c++11")
        add_mxflags("-framework WebKit")
        add_cflags("-framework WebKit")
    end

    add_files("src/test.cpp")
target_end()



-- add_cflags("-mwindows", "-static", "-static-libgcc", "-static-libstdc++")
-- cl .\src\webview.cc /I .\libs\include /L .\libs\build\native\arm64\WebView2Loader.dll.lib /LDd