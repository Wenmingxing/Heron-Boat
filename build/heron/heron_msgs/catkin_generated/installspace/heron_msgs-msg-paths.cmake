# generated from genmsg/cmake/pkg-msg-paths.cmake.em

# message include dirs in installspace
_prepend_path("${heron_msgs_DIR}/.." "msg" heron_msgs_MSG_INCLUDE_DIRS UNIQUE)
set(heron_msgs_MSG_DEPENDENCIES std_msgs)
