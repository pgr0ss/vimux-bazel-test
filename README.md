# vimux-bazel-test

Vim plugin to run bazel tests in [vimux](https://github.com/benmills/vimux).

## Requirements

- [vimux](https://github.com/benmills/vimux)

## Commands

* RunAllBazelTests - runs all tests (`bazel test //...`)
* RunTargetBazelTests - runs all tests in the current target (e.g. `bazel test //mytarget:all`)
