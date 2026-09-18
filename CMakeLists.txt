cmake_minimum_required(VERSION 3.16)
project(VulkanMemoryAllocatorStatic LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Vulkan REQUIRED)

add_library(vma STATIC vma.cpp)

if(TARGET Vulkan::Headers)
    target_link_libraries(vma PRIVATE Vulkan::Headers)
else()
    target_include_directories(vma PRIVATE ${Vulkan_INCLUDE_DIRS})
endif()
