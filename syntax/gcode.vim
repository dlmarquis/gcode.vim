" Vim syntax file
" Language: G-Code Instructions
" Maintainer: Danielle Marquis
" Latest Revision: 07 November 2019

if exists("b:current_syntax")
  finish
endif

syntax match gcodeArg "[SPXYZEFCRIJKUVW]"

syntax match gcodeErr "^\s*[^;GMT].*$"

syntax match gcodeExec contained "[;]@execute"
syntax match gcodeExecFull "[;]@execute.*$" contains=gcodeExec
syntax match gcodeExec contained "[;]@pause"
syntax match gcodeExecFull "[;]@pause.*$" contains=gcodeExec

syntax match gcodeExec "[;]@info"
syntax match gcodeExec "[;]@sound"
syntax match gcodeExec "[;]@isathome"

syntax match gcodeComment ";[^@].*$"
syntax match gcodeComment ";$"

syntax match gcodeGCode 'G\d\+'
syntax match gcodeMCode 'M\d\+'
syntax match gcodeTCode 'T\d\+'


let b:current_syntax = "gcode"

hi def link gcodeExec Preproc
hi def link gcodeExecFull Operator
hi def link gcodeComment Comment
hi def link gcodeGCode Type
hi def link gcodeMCode Identifier
hi def link gcodeTCode String
hi def link gcodeErr Error
hi def link gcodeArg Statement
