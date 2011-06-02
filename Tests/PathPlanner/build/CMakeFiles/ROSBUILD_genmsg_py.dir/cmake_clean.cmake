FILE(REMOVE_RECURSE
  "../src/PathPlanner/msg"
  "../src/PathPlanner/srv"
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/PathPlanner/msg/__init__.py"
  "../src/PathPlanner/msg/_configMessage.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
