cmake_minimum_required(VERSION 3.29)

project(
  Beast_fighting_chess
  VERSION 0.3
  LANGUAGES CXX)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)
find_package(Qt6 REQUIRED COMPONENTS LinguistTools)

qt_standard_project_setup(REQUIRES 6.7)

qt_add_executable(appBeast_fighting_chess main.cpp
                  Beast_fighting_chess_zh_CN.ts)

qt_create_translation(QM_FILES ${CMAKE_SOURCE_DIR}
                      Beast_fighting_chess_zh_CN.ts)
qt_add_qml_module(
  appBeast_fighting_chess
  URI
  Beast_fighting_chess
  VERSION
  1.0
  SOURCES
  QML_FILES
  Beast_fighting_chess.js
  QML_FILES
  Board.qml
  QML_FILES
  Window.qml
  SOURCES
  main.cpp
  RESOURCES
  Image.qrc
  QML_FILES
  Chess.qml
  QML_FILES
  QML_FILES
  Actions.qml
  QML_FILES Start.qml)

target_compile_features(appBeast_fighting_chess PRIVATE cxx_std_20)

set_target_properties(
  appBeast_fighting_chess
  PROPERTIES AUTORCC TRUE
             MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
             MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
             MACOSX_BUNDLE_SHORT_VERSION_STRING
             ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
             MACOSX_BUNDLE TRUE
             WIN32_EXECUTABLE TRUE)

target_link_libraries(appBeast_fighting_chess PRIVATE Qt6::Quick)

include(GNUInstallDirs)
install(
  TARGETS appBeast_fighting_chess
  BUNDLE DESTINATION .
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})

# qt_add_executable(Beast_fighting_chess)  //Creates and finalizes an
# application target of a platform-specific type. This command performs the
# following tasks: 1. Create a CMake target of the appropriate type for the
# target platform. 2. Link the target to the Qt::Core library. 3. Handle
# finalization of the CMake target.

# qt_standard_project_setup()     #set(CMAKE_AUTOUIC ON)  set(CMAKE_AUTOMOC ON)

# @if %{HasTranslation} find_package(Qt6 REQUIRED COMPONENTS Core Quick
# LinguistTools) @else find_package(Qt6 REQUIRED COMPONENTS Core Quick) @endif

# target_sources(appBeast_fighting_chess PRIVATE main.cpp qml.qrc @if
# %{HasTranslation} %{TsFileName} @endif
#
# PUBLIC
#
# )

# qt_import_qml_plugins(Beast_fighting_chess)

# cmake_minimum_required(VERSION 3.16)
#
# project(Beast_fighting_chess VERSION 0.1 LANGUAGES CXX)
#
# @if !true set(CMAKE_AUTOMOC ON) @endif set(CMAKE_CXX_STANDARD_REQUIRED ON)
#
# find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)
#
# @if true @if true qt_standard_project_setup(REQUIRES 6.5) @else
# qt_standard_project_setup() @endif @endif
#
# qt_add_executable(appBeast_fighting_chess main.cpp )
#
# qt_add_qml_module(appBeast_fighting_chess URI Beast_fighting_chess VERSION 1.0
# QML_FILES Main.qml )
#
# # Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1. #
# If you are developing for iOS or macOS you should consider setting an #
# explicit, fixed bundle identifier manually though.
# set_target_properties(appBeast_fighting_chess PROPERTIES #
# MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appBeast_fighting_chess
# MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
# MACOSX_BUNDLE_SHORT_VERSION_STRING
# ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR} MACOSX_BUNDLE TRUE
# WIN32_EXECUTABLE TRUE )
#
# target_link_libraries(appBeast_fighting_chess PRIVATE Qt6::Quick )
#
# include(GNUInstallDirs) install(TARGETS appBeast_fighting_chess BUNDLE
# DESTINATION . LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR} RUNTIME DESTINATION
# ${CMAKE_INSTALL_BINDIR} )
