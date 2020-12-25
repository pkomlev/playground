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
