load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

# container
load("@io_bazel_rules_docker//repositories:repositories.bzl", container_repositories = "repositories")
load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")
load("@io_bazel_rules_docker//container:container.bzl", "container_pull")
load("@io_bazel_rules_docker//go:image.bzl", go_image_repositories = "repositories")

def init():
    go_rules_dependencies()
    go_register_toolchains(nogo = "@debug_rules//go:vet")
    gazelle_dependencies()
    container_repositories()
    container_deps()
    go_image_repositories()
    container_pull(
        name = "go_static",
        digest = "sha256:4433370ec2b3b97b338674b4de5ffaef8ce5a38d1c9c0cb82403304b8718cde9 ",
        registry = "gcr.io",
        repository = "distroless/static-debian10",
    )
