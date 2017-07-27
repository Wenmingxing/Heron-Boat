# Install script for directory: /home/lukewen/heron_ws/src

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/lukewen/heron_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/lukewen/heron_ws/install/_setup_util.py")
FILE(INSTALL DESTINATION "/home/lukewen/heron_ws/install" TYPE PROGRAM FILES "/home/lukewen/heron_ws/build/catkin_generated/installspace/_setup_util.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/lukewen/heron_ws/install/env.sh")
FILE(INSTALL DESTINATION "/home/lukewen/heron_ws/install" TYPE PROGRAM FILES "/home/lukewen/heron_ws/build/catkin_generated/installspace/env.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/lukewen/heron_ws/install/setup.bash")
FILE(INSTALL DESTINATION "/home/lukewen/heron_ws/install" TYPE FILE FILES "/home/lukewen/heron_ws/build/catkin_generated/installspace/setup.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/lukewen/heron_ws/install/setup.sh")
FILE(INSTALL DESTINATION "/home/lukewen/heron_ws/install" TYPE FILE FILES "/home/lukewen/heron_ws/build/catkin_generated/installspace/setup.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/lukewen/heron_ws/install/setup.zsh")
FILE(INSTALL DESTINATION "/home/lukewen/heron_ws/install" TYPE FILE FILES "/home/lukewen/heron_ws/build/catkin_generated/installspace/setup.zsh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/lukewen/heron_ws/install/.rosinstall")
FILE(INSTALL DESTINATION "/home/lukewen/heron_ws/install" TYPE FILE FILES "/home/lukewen/heron_ws/build/catkin_generated/installspace/.rosinstall")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/catkin/profile.d" TYPE FILE FILES "/opt/ros/hydro/share/catkin/cmake/env-hooks/05.catkin_make.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/catkin/profile.d" TYPE FILE FILES "/opt/ros/hydro/share/catkin/cmake/env-hooks/05.catkin_make_isolated.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/lukewen/heron_ws/build/gtest/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/heron_robot/heron_bringup/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/heron_robot/heron_robot/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/ntu10_heron/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/robot_upstart/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/heron/heron_msgs/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/heron_robot/heron_localization/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/heron_robot/heron_base/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/heron/heron_description/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/LMS1xx/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/kingfisher_control/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/robotx_sensor/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/heron_controller/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/heron_nav/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/heron_robot/heron_nmea/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/robotx_control/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/um6/cmake_install.cmake")
  INCLUDE("/home/lukewen/heron_ws/build/using_markers/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/lukewen/heron_ws/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/lukewen/heron_ws/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
