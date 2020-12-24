load("//third_party:folly.bzl", "folly_genrule")

cc_library(
  name = "base",
  visibility = ["//visibility:public"],
  includes=["./folly"],
  hdrs = glob([
    "folly/folly/*.h", 
    "folly/folly/portability/*.h",
    "folly/folly/lang/*.h",
    "folly/folly/hash/*.h",
    "folly/folly/functional/*.h",
    "folly/folly/detail/*.h",
  ]),
  srcs = glob(["folly/folly/*.cpp"]),
  deps=[
    "@boost//:preprocessor",
    "@boost//:multi_index",
    "@com_github_google_double_conversion//:double-conversion"
  ],
)
