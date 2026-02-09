# C++ implementation (primary)
load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

cc_binary(
    name = "breadsay",
    srcs = ["main.cc"],
    visibility = ["//visibility:public"],
)

# Carbon binary only lists .carbon files
# Will require acrylamide or a full carbon build set
#load("//bazel/carbon_rules:defs.bzl", "carbon_binary")
#carbon_binary(
#    name = "breadsay",
#    srcs = ["main.carbon"],
#)
