# Install script for directory: C:/Users/EnricLiu/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.27.1/aws-lc/crypto

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/artifacts/aws_lc_0_27_1_crypto.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/artifacts/aws_lc_0_27_1_crypto.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/artifacts/aws_lc_0_27_1_crypto.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/artifacts/aws_lc_0_27_1_crypto.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/crypto/cmake" TYPE FILE FILES "C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/aws-lc/crypto/crypto-config.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/crypto/cmake/static/crypto-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/crypto/cmake/static/crypto-targets.cmake"
         "C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/aws-lc/crypto/CMakeFiles/Export/b7a05eb6ae5ecdee26676a84881cbc5e/crypto-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/crypto/cmake/static/crypto-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/crypto/cmake/static/crypto-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/crypto/cmake/static" TYPE FILE FILES "C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/aws-lc/crypto/CMakeFiles/Export/b7a05eb6ae5ecdee26676a84881cbc5e/crypto-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/crypto/cmake/static" TYPE FILE FILES "C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/aws-lc/crypto/CMakeFiles/Export/b7a05eb6ae5ecdee26676a84881cbc5e/crypto-targets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/crypto/cmake/static" TYPE FILE FILES "C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/aws-lc/crypto/CMakeFiles/Export/b7a05eb6ae5ecdee26676a84881cbc5e/crypto-targets-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/crypto/cmake/static" TYPE FILE FILES "C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/aws-lc/crypto/CMakeFiles/Export/b7a05eb6ae5ecdee26676a84881cbc5e/crypto-targets-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/crypto/cmake/static" TYPE FILE FILES "C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/aws-lc/crypto/CMakeFiles/Export/b7a05eb6ae5ecdee26676a84881cbc5e/crypto-targets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/aws-lc/crypto/fipsmodule/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/Users/EnricLiu/Desktop/Projects/Rust/adb_client/target/debug/build/aws-lc-sys-90b72a9e6ae4ee59/out/build/aws-lc/crypto/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
