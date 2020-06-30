# demo

This repository doesn't build and the error message is unexpected. Error message from `bazel build main`:

```
ERROR: Failed to load Starlark extension '@io_bazel_rules_go_name_hack//:def.bzl'.
Cycle in the workspace file detected. This indicates that a repository is used prior to being defined.
The following chain of repository dependencies lead to the missing definition.
 - @io_bazel_rules_go_name_hack
This could either mean you have to add the '@io_bazel_rules_go_name_hack' repository with a statement like `http_archive` in your WORKSPACE file (note that transitive dependencies are not added automatically), or move an existing definition earlier in your WORKSPACE file.
ERROR: cycles detected during target parsing
```