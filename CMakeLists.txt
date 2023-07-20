cmake_minimum_required(VERSION 3.16)

project(qt-app VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appqt-app
    main.cpp
)
qt_add_qml_module(appqt-app
    URI qt-app
    VERSION 1.0
    #    qui vanno specificate tutte le risorse, es:
    #    RESOURCES qt-logo.png
    QML_FILES
        Main.qml
        ui/BottomBar/BottomBar.qml
        ui/RightSide/RightSide.qml
        ui/LeftSide/LeftSide.qml
    )

set_target_properties(appqt-app PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appqt-app
    PRIVATE Qt6::Quick
)

install(TARGETS appqt-app
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
