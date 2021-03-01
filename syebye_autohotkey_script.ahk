;The next section is adapted from JKL Mouse: http://www.jklmouse.com/
;For some reason, it only works when I break it up into two sections.
;The other section for the mouse is at the end.

#SingleInstance force

SetCapsLockState, alwaysoff
SetNumLockState, AlwaysOn

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%

;Here are the toggle for Caps Lock State - I put in a second one (Alt + /) that I can activate with just my right hand.
;I toggle the CapsLockState also so that the light on CapsLock will indicate when it is on or off.

CapsLock::
toggle=1
return

CapsLock Up::
toggle=0
return

RWin::
 if (numkey_toggle=1) {
     numkey_toggle=0
 }
 else {
     numkey_toggle=1
 }
return

!/::
 if (toggle=1) {
  toggle=0
  SetCapsLockState, Off
 }
 else {
  toggle=1
  SetCapsLockState, On
 }
Return

#If (numkey_toggle=1)
Space::Send,{Numpad0}
m::Send,{Numpad1}
,::Send,{Numpad2}
.::Send,{Numpad3}
j::Send,{Numpad4}
k::Send,{Numpad5}
l::Send,{Numpad6}
u::Send,{Numpad7}
i::Send,{Numpad8}
o::Send,{Numpad9}
return


#If (toggle=1)
w::Send,+{Up}
s::Send,+{Down}
a::Send,+{Left}
d::Send,+{Right}
q::Send,+{Home}
e::Send,+{End}

k::Send,{Up}
+k::Send,+{Up}
^k::Send,^{Up}
+^k::Send,^+{Up}
j::Send,{Down}
+j::Send,+{Down}
^j::Send,^{Down}
+^j::Send,+^{Down}
l::Send,{Right}
+l::Send,+{Right}
^l::Send,^{Right}
+^l::Send,+^{Right}
h::Send,{Left}
+h::Send,+{Left}
^h::Send,^{Left}
+^h::Send,+^{Left}
u::Send,{Home}
+u::Send,+{Home}
^u::Send,^{Home}
+^u::Send,+^{Home}
i::Send,{End}
+i::Send,+{End}
^i::Send,^{End}
+^i::Send,+^{End}

#l::Send,!{Right}
#h::Send,!{Left}

!k::Send,{PgUp}
!+k::Send,+{PgUp}
!^k::Send,^{PgUp}
!+^k::Send,^+{PgUp}
!j::Send,{PgDn}
!+j::Send,+{PgDn}
!^j::Send,^{PgDn}
!+^j::Send,+^{PgDn}
!l::Send,{End}
!+l::Send,+{End}
!^l::Send,^{End}
!+^l::Send,+^{End}
!h::Send,{Home}
!+h::Send,+{Home}
!^h::Send,^{Home}
!+^h::Send,+^{Home}


m::^c
,::^v
.::^x


;o::Send,{BackSpace}
;^o::Send,^{BackSpace}
;!o::Send,!{BackSpace}
;p::Send,{Delete}
;^p::Send,^{Delete}
;!p::Send,!{Delete}
;h::Send,{Enter}
;!h::Send,!{Enter}
;^h::Send,^{Enter}
;u::Send,{Tab}
;+u::Send,+{Tab}
;^u::Send,^{Tab}
;!u::Send,!{Tab}
;+^u::Send,+^{Tab}
;+!u::Send,+!{Tab}
;y::AppsKey
;+o::Send,!{Left}
;+p::Send,!{Right}
;[::Send,{Esc}
;/::LWin

return