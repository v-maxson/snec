cmake_minimum_required(VERSION 3.31)

set(PROJECT_NAME "snec")
string(TOUPPER ${PROJECT_NAME} PROJECT_NAME_UPPER)
set(PROJECT_VERSION "0.1.0")
set(PROJECT_REPOSITORY https://github.com/v-maxson/snec)

project (
        ${PROJECT_NAME}
        LANGUAGES C
        VERSION ${PROJECT_VERSION}
)

set(CMAKE_C_STANDARD 23)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -pedantic -Werror") # Enable all warnings

add_executable(${PROJECT_NAME} src/main.c)

# Generate version.h file
set(HEADER_GEN ${CMAKE_BINARY_DIR}/${PROJECT_NAME}_include)
configure_file(
        include/version.h.in
        ${HEADER_GEN}/version.h
)
include_directories(${HEADER_GEN})

# Dependencies
include(deps.cmake)