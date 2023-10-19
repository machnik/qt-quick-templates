cmake_minimum_required(VERSION 3.16)

project(QtQuickCppTemplate LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(QT NAMES Qt6 COMPONENTS Core Quick REQUIRED)
find_package(Qt6 COMPONENTS Core Quick REQUIRED)

add_executable(QtQuickCppTemplate
  src_cpp/main.cpp
  src_cpp/ExampleButtonActions.h
  src_cpp/ExampleButtonActions.cpp
  src_cpp/ExampleListModel.cpp
  src_cpp/ExampleListModel.h
  resources.qrc
)

target_compile_definitions(QtQuickCppTemplate
  PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(QtQuickCppTemplate
  PRIVATE Qt6::Core Qt6::Quick)
