cmake_minimum_required(VERSION 3.14)

project(HelloQML LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(QT NAMES Qt6 COMPONENTS Core Quick REQUIRED)
find_package(Qt6 COMPONENTS Core Quick REQUIRED)

add_executable(HelloQML
  main.cpp
  resources.qrc
)

target_link_libraries(HelloQML
  PRIVATE Qt6::Core Qt6::Quick)
