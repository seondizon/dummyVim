; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

; Make Ctrl + S work with cmd (windows) key
#s::^s
#s::Send ^s

; Selecting
#a::^a
#a::Send ^a

; Copying
#c::^c
#c::Send ^c

; Pasting
#v::^v
#v::Send ^v

; Cutting
#x::^x
#x::Send ^x

; Opening
#o::^o
#o::Send ^o

; Finding
#f::Send ^f

; Undo
#z::^z

; Redo
#y::^y

; New tab
#t::^t

; close tab
#w::^w
Return
; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
Lwin & Tab::AltTab

; minimize windows
#m::WinMinimize,a

#Space::Send # Return
