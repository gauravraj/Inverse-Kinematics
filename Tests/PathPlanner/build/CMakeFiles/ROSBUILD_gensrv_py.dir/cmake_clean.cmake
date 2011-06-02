FILE(REMOVE_RECURSE
  "../src/PathPlanner/msg"
  "../src/PathPlanner/srv"
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/PathPlanner/srv/__init__.py"
  "../src/PathPlanner/srv/_configService.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
