workspace(name = "iq_jannis_schnitzer_debug")

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "debug_rules",
    commit = "7caa9c3a99c936ef8d9d1f37e882a0dc48a26705",
    remote = "https://github.com/Xjs/bazel-debug-rules-go.git",
)

load("@debug_rules//:deps.bzl", "repositories")

repositories()

load("@debug_rules//go:def.bzl", "init")

init()

