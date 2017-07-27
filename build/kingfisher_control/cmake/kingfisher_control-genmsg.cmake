# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kingfisher_control: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ikingfisher_control:/home/lukewen/heron_ws/src/kingfisher_control/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kingfisher_control_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kingfisher_control
  "/home/lukewen/heron_ws/src/kingfisher_control/msg/PidDiagnose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kingfisher_control
)

### Generating Services

### Generating Module File
_generate_module_cpp(kingfisher_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kingfisher_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kingfisher_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kingfisher_control_generate_messages kingfisher_control_generate_messages_cpp)

# target for backward compatibility
add_custom_target(kingfisher_control_gencpp)
add_dependencies(kingfisher_control_gencpp kingfisher_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kingfisher_control_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kingfisher_control
  "/home/lukewen/heron_ws/src/kingfisher_control/msg/PidDiagnose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kingfisher_control
)

### Generating Services

### Generating Module File
_generate_module_lisp(kingfisher_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kingfisher_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kingfisher_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kingfisher_control_generate_messages kingfisher_control_generate_messages_lisp)

# target for backward compatibility
add_custom_target(kingfisher_control_genlisp)
add_dependencies(kingfisher_control_genlisp kingfisher_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kingfisher_control_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kingfisher_control
  "/home/lukewen/heron_ws/src/kingfisher_control/msg/PidDiagnose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kingfisher_control
)

### Generating Services

### Generating Module File
_generate_module_py(kingfisher_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kingfisher_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kingfisher_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kingfisher_control_generate_messages kingfisher_control_generate_messages_py)

# target for backward compatibility
add_custom_target(kingfisher_control_genpy)
add_dependencies(kingfisher_control_genpy kingfisher_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kingfisher_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kingfisher_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kingfisher_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(kingfisher_control_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kingfisher_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kingfisher_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(kingfisher_control_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kingfisher_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kingfisher_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kingfisher_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(kingfisher_control_generate_messages_py std_msgs_generate_messages_py)
