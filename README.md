# vimux-bazel-test

Vim plugin to run bazel tests in [vimux](https://github.com/benmills/vimux).

## Requirements

- [vimux](https://github.com/benmills/vimux)

## Commands

* RunAllBazelTests - runs all tests (`bazel test //...`)
* RunTargetBazelTests - runs all tests in the current target (e.g. `bazel test //mytarget:all`)

## Mapping

You can map these commands to leader keystrokes if you like:

```
map <silent> <LocalLeader>ba :wa<CR> :RunAllBazelTests<CR>
map <silent> <LocalLeader>bt :wa<CR> :RunTargetBazelTests<CR>
```
