" Vim syntax file
" Language:	Deal script *.dl (Thomas Andrews bridge dealing utility)
" Version: 1.0
" Last Change:	18.Mar.2013
"
" Deal scripts are *.tcl files with some extra keywords

if exists("b:current_syntax")
  finish
end

if version < 600
   syntax clear
elseif exists("b:current_syntax")
   finish
endif

set commentstring=#%s

syntax case ignore

" Start off with the same configuration as *.tcl files
if version < 600
   so <sfile>:p:h/tcl.vim
else
   runtime! syntax/tcl.vim
   unlet b:current_syntax
endif

" Add customisation appropriate to deal itself
syntax keyword dealCommand reject accept

highlight link dealKeyword Statement


let b:current_syntax = "Deal"

" vim: tw=130 expandtab tabstop=2 shiftwidth=2:
