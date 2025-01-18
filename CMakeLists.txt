cmake_minimum_required(VERSION 3.15)
project(doggy)

set(CMAKE_CXX_STANDARD 17)

# 设置输出文件夹
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output)

# 针对不同平台进行配置
if(CMAKE_SYSTEM_NAME STREQUAL "Windows")
    # Windows 特定配置
    set(CMAKE_C_COMPILER /usr/bin/x86_64-w64-mingw32-gcc)
    set(CMAKE_CXX_COMPILER /usr/bin/x86_64-w64-mingw32-g++)
    set(CMAKE_RC_COMPILER /usr/bin/x86_64-w64-mingw32-windres)
    include_directories(/usr/x86_64-w64-mingw32/include)
    link_directories(/usr/x86_64-w64-mingw32/lib)
    message(STATUS "Configuring for Windows with MinGW")
else()
    # Linux 特定配置（默认配置）
    set(CMAKE_BUILD_TYPE Debug)  # 设置调试模式
    set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -g")  # 添加调试选项
    message(STATUS "Configuring for Linux with Debug enabled")
endif()

# 添加 OpenXLSX 库
add_subdirectory(OpenXLSX)

# 添加主项目
add_executable(doggy doggy.cpp)
target_link_libraries(doggy OpenXLSX::OpenXLSX)

