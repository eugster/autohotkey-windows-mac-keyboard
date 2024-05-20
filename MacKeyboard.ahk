;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.

#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Input

; --------------------------------------------------------------
; Mac-like screenshots in Windows (requires Windows 10 Snip & Sketch)
; --------------------------------------------------------------

; Capture entire screen with CMD/WIN + SHIFT + 3
#+3::send #{PrintScreen}

; Capture portion of the screen with CMD/WIN + SHIFT + 4
#+4::#+s

; --------------------------------------------------------------
; media/function keys all mapped to the right option key
; --------------------------------------------------------------

RAlt & F7::SendInput {Media_Prev}
RAlt & F8::SendInput {Media_Play_Pause}
RAlt & F9::SendInput {Media_Next}
F10::SendInput {Volume_Mute}
F11::SendInput {Volume_Down}
F12::SendInput {Volume_Up}

; swap left command/windows key with left alt
;LWin::LAlt
;LAlt::LWin ; add a semicolon in front of this line if you want to disable the windows key

; Remap Windows + Left OR Right to enable previous or next web page
; Use only if swapping left command/windows key with left alt
;Lwin & Left::Send, !{Left}
;Lwin & Right::Send, !{Right}

; Eject Key
;F20::SendInput {Insert} ; F20 doesn't show up on AHK anymore, see #3

; F13-15, standard windows mapping
F13::SendInput {PrintScreen}
F14::SendInput {ScrollLock}
F15::SendInput {Pause}

;F16-19 custom app launchers, see http://www.autohotkey.com/docs/Tutorial.htm for usage info
F16::Run http://twitter.com
F17::Run http://tumblr.com
F18::Run http://www.reddit.com
F19::Run https://facebook.com

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

; Make Ctrl + S work with cmd (windows) key
!s::Send, ^s

; Selecting
!a::Send, ^a

; Copying
!c::Send, ^c

; Pasting
!v::Send, ^v

; Cutting
!x::Send, ^x

; Opening
!o::Send ^o

; Finding
!f::Send ^f

; Undo
!z::Send ^z

; Redo
!y::Send ^y
!+z::Send ^y

; New tab
!t::Send ^t

; close tab
!w::Send ^w

; Close windows (cmd + q to Alt + F4)
!q::Send !{F4}


; Remap Windows + Tab to Alt + Tab.
Lwin & Tab::AltTab

; minimize windows
!m::WinMinimize,a

; new file/window
!n::Send ^n
!+n::Send ^+n

; reload 
!r::Send {F5}

; --------------------------------------------------------------
; VS-CODE keyboard mappings
; --------------------------------------------------------------
; select same
!d::Send ^d

; hide sidebar
!b::Send ^b

; command prompt
!+p::Send ^+p

; select multilines for Edit
#!up::Send ^!{Up}
#!Down::Send ^!{Down}

; move & copy line
#up::Send !{Up}
#Down::Send !{Down}
#+up::Send !+{Up}
#+Down::Send !+{Down}
;following might help if it after restart commands before will move windows again
;#right::return ;This will disable the effect of Win + -> 
;#left::return ;This will disable the effect of Win + <- 

; jump/select to beginning/end of line
!Left::Send {Home}
!Right::Send {End}
!+Left::Send +{Home}
!+Right::Send +{End}

; jump/select to beginning/end of word
#Left::Send ^{Left}
#Right::Send {Right}
#+Left::Send ^+{Left}
#+Right::Send ^+{Right}

; delete line
!+K::Send ^+K 



; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

; Map Alt + g to @
!g::SendInput {@}

; Map Alt + N to \
#+7::SendInput {\}

; Map Alt + N to ©
;!g::SendInput {©}

; Map Alt + o to ø
#o::SendInput {ø}

; Map Alt + 5 to [
#5::SendInput {[}

; Map Alt + 6 to ]
#6::SendInput {]}

; Map Alt + E to €
!e::SendInput {€}

; Map Alt + - to –
!-::SendInput {–}

; Map Alt + 8 to {
#8::SendInput {{}

; Map Alt + 9 to }
#9::SendInput {}}

; Map Alt + - to ±
!+::SendInput {±}

; Map Alt + R to ®
#r::SendInput {®}

; Map Alt + N to |
#7::SendInput {|}

; Map Alt + W to ∑
#w::SendInput {∑}

; Map Alt + N to ~
#n::SendInput {~}

; Map Alt + 3 to #
#3::SendInput {#}



; --------------------------------------------------------------
; Custom mappings for special chars
; --------------------------------------------------------------

;#ö::SendInput {[} 
;#ä::SendInput {]} 

;^ö::SendInput {{} 
;^ä::SendInput {}} 


; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

#IfWinActive

