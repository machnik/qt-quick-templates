cmake_minimum_required(VERSION 3.16)
project(HelloWidgetsWithXML)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 COMPONENTS Widgets REQUIRED)

add_executable(HelloWidgetsWithXML
    main.cpp
    maindialog.cpp
    exampledialog.cpp
)

target_link_libraries(HelloWidgetsWithXML Qt6::Widgets)

