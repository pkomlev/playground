load("@com_github_pkomlev_rules_facebook//:folly.bzl", "folly_genrule")

cc_library(
  name = "base",
  visibility = ["//visibility:public"],
  includes=["."],
  hdrs = glob([
    "folly/*.h", 
    "folly/concurrency/*.h",
    "folly/container/*.h",
    "folly/container/detail/*.h",
    "folly/detail/*.h",
    "folly/experimental/*.h",
    "folly/functional/*.h",
    "folly/gen/*.h",
    "folly/hash/*.h",
    "folly/io/*.h",
    "folly/lang/*.h",
    "folly/logging/*.h",
    "folly/memory/*.h",
    "folly/memory/detail/*.h",
    "folly/net/*.h",
    "folly/net/detail/*.h",
    "folly/portability/*.h",
    "folly/synchronization/*.h",
    "folly/synchronization/detail/*.h",
    "folly/system/*.h",
  ]),
  srcs = glob(["folly/*.cpp"]),
	copts = [
	  "-std=c++17",
    "-stdlib=libc++",
	],
  deps=[
    "@boost//:algorithm",
    "@boost//:multi_index",
    "@boost//:preprocessor",
    "@com_github_glog_glog//:glog",
    "@com_github_google_double_conversion//:double-conversion",
    "@com_github_libfmt_fmt//:fmt",
    "@com_github_pkomlev_rules_facebook//:folly-config",
  ],
)
