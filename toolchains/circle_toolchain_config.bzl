load("@rules_cc//cc:cc_toolchain_config_lib.bzl", "tool_path")

def _impl(ctx):
    tool_paths = [
        tool_path(
            name = "gcc",
            path = "circle_wrapper",
        ),
        tool_path(
            name = "ar",
            path = "not_implemented",
        ),
        tool_path(
            name = "cpp",
            path = "not_implemented",
        ),
        tool_path(
            name = "ld",
            path = "not_implemented",
        ),
        tool_path(
            name = "nm",
            path = "not_implemented",
        ),
        tool_path(
            name = "objdump",
            path = "not_implemented",
        ),
        tool_path(
            name = "strip",
            path = "not_implemented",
        ),
    ]

    return cc_common.create_cc_toolchain_config_info(
        ctx = ctx,
        toolchain_identifier = "circle",
        target_system_name = "local",
        target_cpu = "sample_cpu",
        target_libc = "unknown",
        compiler = "gcc",
        #abi_version = "unknown",
        #abi_libc_version = "unknown",
        tool_paths = tool_paths,
    )

circle_toolchain_config = rule(
    implementation = _impl,
    provides = [CcToolchainConfigInfo],
)
