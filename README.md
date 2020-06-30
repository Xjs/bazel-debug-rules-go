# debug-rules-go

This repository serves as a minimal example for a bug that occurs somewhere at the boundary between Bazel, rules_go and rules_docker.

## Wanted state

This is the state I intend to use. It can apparently not be built because the `load("@io_bazel_rules_docker//go:image.bzl", go_image_repositories = "repositories")` statement in def.bzl requires that `go_rules_dependencies()` and/or `go_register_toolchains()` has already been called, but `load()` statements can at the same time only be executed at the top level of a package.

See also the name hack loop state.
