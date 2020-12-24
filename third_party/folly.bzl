def _fullpath(path):
  return "folly/%s" % path

def folly_genrule(genrule_name, generator, output):
  full_path = _fullpath(generator) 
  return native.genrule(
    name = genrule_name,
    srcs = [
      full_path,
    ],
    cmd = "$(location %s) --install_dir=$(GENDIR)/third_party/folly" % full_path, 
    outs = [
      output,
    ],
  )

# def folly_library(name, hdrs, srcs):
# cc_library(
#   name = "base",
#   visibility = ["//visibility:public"],
#   includes = [
#     "upstream",
#     "linux-k8",
#   ],
#   hdrs = [
#     "linux-k8/folly/folly-config.h",
#     "upstream/folly/ApplyTuple.h",
#     "upstream/folly/CPortability.h",
#     "upstream/folly/Conv.h",
#     "upstream/folly/CpuId.h",
#     "upstream/folly/Demangle.h",
#     "upstream/folly/Exception.h",
#     "upstream/folly/ExceptionWrapper.h",
#     "upstream/folly/detail/ExceptionWrapper.h",
#     "upstream/folly/FBString.h",
#     "upstream/folly/FBVector.h",
#     "upstream/folly/Fingerprint.h",
#     "upstream/folly/Format-inl.h",
#     "upstream/folly/Format.h",
#     "upstream/folly/FormatArg.h",
#     "upstream/folly/FormatTraits.h",
#     "upstream/folly/Hash.h",
#     "upstream/folly/Likely.h",
#     "upstream/folly/Malloc.h",
#     "upstream/folly/MoveWrapper.h",
#     "upstream/folly/Portability.h",
#     "upstream/folly/portability/Syscall.h",
#     "upstream/folly/Preprocessor.h",
#     "upstream/folly/ProducerConsumerQueue.h",
#     "upstream/folly/Range.h",
#     "upstream/folly/ScopeGuard.h",
#     "upstream/folly/SpookyHashV1.h",
#     "upstream/folly/SpookyHashV2.h",
#     "upstream/folly/String-inl.h",
#     "upstream/folly/String.h",
#     "upstream/folly/ThreadName.h",
#     "upstream/folly/Traits.h",
#     "upstream/folly/Unicode.h",
#     "upstream/folly/experimental/io/FsUtil.h",
#   ],
#   srcs = [
#     ":generate_format_tables",
#     ":generate_escape_tables",
#     "upstream/folly/detail/Malloc.h",
#     "upstream/folly/detail/RangeCommon.h",
#     "upstream/folly/detail/RangeSse42.h",
#     "upstream/folly/detail/UncaughtExceptionCounter.h",
#     "upstream/folly/Conv.cpp",
#     "upstream/folly/Demangle.cpp",
#     "upstream/folly/Format.cpp",
#     "upstream/folly/StringBase.cpp",
#     "upstream/folly/String.cpp",
#     "upstream/folly/SpookyHashV1.cpp",
#     "upstream/folly/SpookyHashV2.cpp",
#     "upstream/folly/Unicode.cpp",
#   ],
#   deps = [
#     "//external:glog",
#     "//external:gflags",
#     "//third_party/double-conversion",
#     "//third_party/boost:config",
#     "//third_party/boost:conversion",
#     "//third_party/boost:iterator",
#     "//third_party/boost:regex",
#     "//third_party/boost:type_traits",
#     "//third_party/boost:utility",
#   ],
# )

