# debug-rules-go

This repository serves as a minimal example for a bug that occurs somewhere at the boundary between Bazel, rules_go and rules_docker.

## Name hack loop

Based on the wanted state, I tried to predeclare all dependencies that are required by the `load("@io_bazel_rules_docker//go:image.bzl", go_image_repositories = "repositories")` statement in def.bzl. At this stage I encountered the problem that a virtual repository `io_bazel_rules_go_name_hack` appears to be required at some place and I thought it better to report a bug than working around this.

Error message: 

```
ERROR: Failed to load Starlark extension '@io_bazel_rules_go_name_hack//:def.bzl'.
Cycle in the workspace file detected. This indicates that a repository is used prior to being defined.
The following chain of repository dependencies lead to the missing definition.
 - @io_bazel_rules_go_name_hack
This could either mean you have to add the '@io_bazel_rules_go_name_hack' repository with a statement like `http_archive` in your WORKSPACE file (note that transitive dependencies are not added automatically), or move an existing definition earlier in your WORKSPACE file.
ERROR: cycles detected during target parsing                                                                                                                                                                                        
```
