cmake_minimum_required(VERSION 3.5)
project(tetris C)

set(CMAKE_C_STANDARD 99)

# find SDL2
include(cmake/sdl2.cmake)
message(STATUS "SDL2 include dir: ${SDL2_ALL_INC}")
message(STATUS "SDL2 all libraries: ${SDL2_ALL_LIBS}")
include_directories(${SDL2_ALL_INC})
include_directories(.)

add_executable(tetris main.c pieces.inl primlib.c primlib.h game.c game.h audio/audio.h audio/audio.c userInterface.c userInterface.h)
target_link_libraries(${PROJECT_NAME} ${SDL2_ALL_LIBS} m)

file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/music/ DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/music/)
