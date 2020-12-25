#include <boost/core/noncopyable.hpp>
#include <fmt/format.h>
#include <gflags/gflags.h>
#include <glog/logging.h>

DEFINE_string(username, "%username%", "a username to say hello to");

int main(int argc, char *argv[]) {
  gflags::ParseCommandLineFlags(&argc, &argv, true);
  LOG(INFO) << "Hello " << FLAGS_username;
  LOG(INFO) << fmt::format("Hello {0}", FLAGS_username);
  return 0;
}