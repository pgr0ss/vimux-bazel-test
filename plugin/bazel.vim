if exists("g:loaded_vimux_bazel_test") || &cp
  finish
endif
let g:loaded_vimux_bazel_test = 1

command RunAllBazelTests :call s:RunAllBazelTests()
command RunTargetBazelTests :call s:RunTargetBazelTests()

function s:RunAllBazelTests()
   call VimuxRunCommand("clear && " . "bazel test //...")
endfunction

function s:RunTargetBazelTests()
   let file_name = @%
   let top_level_target = split(system("bazel --quiet query " . file_name), ":")[0]
   call VimuxRunCommand("clear && " . "bazel test " . top_level_target . ":all")
endfunction
