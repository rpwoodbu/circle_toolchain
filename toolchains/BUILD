load(":circle_toolchain_config.bzl", "circle_toolchain_config")
load("@rules_cc//cc/toolchains:cc_toolchain.bzl", "cc_toolchain")

cc_toolchain(
    name = "circle_cc_toolchain",
    all_files = ":circle_files",
    compiler_files = ":circle_files",
    dwp_files = ":circle_files",
    linker_files = ":circle_files",
    objcopy_files = ":circle_files",
    strip_files = ":circle_files",
    toolchain_config = ":circle_config",
)

filegroup(
    name = "circle_files",
    srcs = [
        "@circle-cpp",
        "circle_wrapper",
    ],
)

circle_toolchain_config(
    name = "circle_config",
)

toolchain(
    name = "circle",
    target_compatible_with = [
        "@platforms//cpu:x86_64",
        "@platforms//os:linux",
    ],
    toolchain = ":circle_cc_toolchain",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)
