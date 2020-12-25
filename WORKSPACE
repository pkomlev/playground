workspace(name="com_github_pkomlev_playground")

local_repository(
  name = "com_google_absl",
  path = "third_party/abseil-cpp",
)

local_repository(
  name = "com_github_gflags_gflags",
  path = "third_party/gflags",
)

local_repository(
  name = "com_github_glog_glog",
  path = "third_party/glog",
)

local_repository(
  name = "com_github_google_double_conversion",
  path = "third_party/double-conversion",
)

local_repository(
  name = "com_github_nelhage_rules_boost",
  path = "third_party/rules_boost",
)

load("@com_github_nelhage_rules_boost//:boost/boost.bzl", "boost_deps")
boost_deps()

new_local_repository(
  name = "com_github_libfmt_fmt",
  path = "third_party/fmt",
  build_file = "third_party/rules_facebook/libfmt.BUILD",
)
