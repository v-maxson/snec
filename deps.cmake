include(FetchContent)

# example dependency
# Raylib
FetchContent_Declare(
        raylib
        GIT_REPOSITORY https://github.com/raysan5/raylib.git
        GIT_TAG 5.5
)
FetchContent_MakeAvailable(raylib)
include_directories(${raylib_SOURCE_DIR}/src)
link_libraries(raylib)