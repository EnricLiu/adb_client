# Install script for directory: C:/Users/EnricLiu/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.27.1/aws-lc

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/Users/EnricLiu/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.27.1/aws-lc/include/openssl" REGEX "/boringssl\\_prefix\\_symbols\\.h$" EXCLUDE REGEX "/boringssl\\_prefix\\_symbols\\_asm\\.h$" EXCLUDE REGEX "/boringssl\\_prefix\\_symbols\\_nasm\\.inc$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/aws-lc/symbol_prefix_include/openssl")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/aws-lc/crypto/cmake_install.cmake")
  include("C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/aws-lc/util/fipstools/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/aws-lc/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
