cmake_minimum_required(VERSION 3.10)

project(MyPlugin)

# 设置编译器标志
set(CMAKE_CXX_STANDARD 17)  # 或者你需要的 C++ 标准

# 设置包含目录
include_directories(
    ./out/include
    .haxelib/hxcpp/git/include
)

# 使用 GLOB_RECURSE 添加所有源文件
file(GLOB_RECURSE PRIVATE_SRCS "${CMAKE_CURRENT_SOURCE_DIR}/out/src/*.cpp")

# 添加可执行文件
add_executable(MyPlugin 
    ${PRIVATE_SRCS}
)

# 添加链接库
# 如果你需要链接其他库，请在这里添加
# 例如：target_link_libraries(MyPlugin MyOtherLibrary)