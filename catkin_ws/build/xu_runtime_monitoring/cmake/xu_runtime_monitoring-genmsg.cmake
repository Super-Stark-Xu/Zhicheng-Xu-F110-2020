# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "xu_runtime_monitoring: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ixu_runtime_monitoring:/home/stark/catkin_ws/src/xu_runtime_monitoring/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(xu_runtime_monitoring_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/stark/catkin_ws/src/xu_runtime_monitoring/msg/speed.msg" NAME_WE)
add_custom_target(_xu_runtime_monitoring_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xu_runtime_monitoring" "/home/stark/catkin_ws/src/xu_runtime_monitoring/msg/speed.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(xu_runtime_monitoring
  "/home/stark/catkin_ws/src/xu_runtime_monitoring/msg/speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xu_runtime_monitoring
)

### Generating Services

### Generating Module File
_generate_module_cpp(xu_runtime_monitoring
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xu_runtime_monitoring
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(xu_runtime_monitoring_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(xu_runtime_monitoring_generate_messages xu_runtime_monitoring_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/stark/catkin_ws/src/xu_runtime_monitoring/msg/speed.msg" NAME_WE)
add_dependencies(xu_runtime_monitoring_generate_messages_cpp _xu_runtime_monitoring_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xu_runtime_monitoring_gencpp)
add_dependencies(xu_runtime_monitoring_gencpp xu_runtime_monitoring_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xu_runtime_monitoring_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(xu_runtime_monitoring
  "/home/stark/catkin_ws/src/xu_runtime_monitoring/msg/speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xu_runtime_monitoring
)

### Generating Services

### Generating Module File
_generate_module_eus(xu_runtime_monitoring
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xu_runtime_monitoring
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(xu_runtime_monitoring_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(xu_runtime_monitoring_generate_messages xu_runtime_monitoring_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/stark/catkin_ws/src/xu_runtime_monitoring/msg/speed.msg" NAME_WE)
add_dependencies(xu_runtime_monitoring_generate_messages_eus _xu_runtime_monitoring_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xu_runtime_monitoring_geneus)
add_dependencies(xu_runtime_monitoring_geneus xu_runtime_monitoring_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xu_runtime_monitoring_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(xu_runtime_monitoring
  "/home/stark/catkin_ws/src/xu_runtime_monitoring/msg/speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xu_runtime_monitoring
)

### Generating Services

### Generating Module File
_generate_module_lisp(xu_runtime_monitoring
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xu_runtime_monitoring
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(xu_runtime_monitoring_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(xu_runtime_monitoring_generate_messages xu_runtime_monitoring_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/stark/catkin_ws/src/xu_runtime_monitoring/msg/speed.msg" NAME_WE)
add_dependencies(xu_runtime_monitoring_generate_messages_lisp _xu_runtime_monitoring_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xu_runtime_monitoring_genlisp)
add_dependencies(xu_runtime_monitoring_genlisp xu_runtime_monitoring_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xu_runtime_monitoring_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(xu_runtime_monitoring
  "/home/stark/catkin_ws/src/xu_runtime_monitoring/msg/speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xu_runtime_monitoring
)

### Generating Services

### Generating Module File
_generate_module_nodejs(xu_runtime_monitoring
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xu_runtime_monitoring
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(xu_runtime_monitoring_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(xu_runtime_monitoring_generate_messages xu_runtime_monitoring_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/stark/catkin_ws/src/xu_runtime_monitoring/msg/speed.msg" NAME_WE)
add_dependencies(xu_runtime_monitoring_generate_messages_nodejs _xu_runtime_monitoring_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xu_runtime_monitoring_gennodejs)
add_dependencies(xu_runtime_monitoring_gennodejs xu_runtime_monitoring_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xu_runtime_monitoring_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(xu_runtime_monitoring
  "/home/stark/catkin_ws/src/xu_runtime_monitoring/msg/speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xu_runtime_monitoring
)

### Generating Services

### Generating Module File
_generate_module_py(xu_runtime_monitoring
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xu_runtime_monitoring
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(xu_runtime_monitoring_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(xu_runtime_monitoring_generate_messages xu_runtime_monitoring_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/stark/catkin_ws/src/xu_runtime_monitoring/msg/speed.msg" NAME_WE)
add_dependencies(xu_runtime_monitoring_generate_messages_py _xu_runtime_monitoring_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xu_runtime_monitoring_genpy)
add_dependencies(xu_runtime_monitoring_genpy xu_runtime_monitoring_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xu_runtime_monitoring_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xu_runtime_monitoring)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xu_runtime_monitoring
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xu_runtime_monitoring)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xu_runtime_monitoring
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xu_runtime_monitoring)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xu_runtime_monitoring
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xu_runtime_monitoring)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xu_runtime_monitoring
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xu_runtime_monitoring)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xu_runtime_monitoring\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xu_runtime_monitoring
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
