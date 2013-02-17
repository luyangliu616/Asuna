@_FILE "debug_as67400.dat"
@_INCLUDE "as_def.txt"

@UnknownFlag_0x04 0

(CraftOffsetTable:s)
(CraftOffsetTableEnd:s)
(UnknownFlag_0x04:s)

; Char chip pattern info  CH_Index, CH_DAT_Index, CP_Index, CP_DAT_Index
 (0x7450:s, 0x0096:s) (0x7451:s, 0x0096:s)
 (0x7453:s, 0x0096:s)
[FF FF FF FF]

; 3d model file
""

#CraftOffsetTable
 (SysCraft_MagicEffect:s)
 (SysCraft_Stand:s)
 (SysCraft_Move:s)
 (SysCraft_UnderAttack:s)
 (SysCraft_Dead:s)
 (SysCraft_NormalAttack:s)
 (SysCraft_MagicChant:s)
 (SysCraft_MagicCast:s)
 [FF FF]
 (SysCraft_EnterBattle:s)
 [FF FF]
 (SysCraft_Stun:s)
 (SysCraft_Unknown2:s)
 (SysCraft_Reserve1:s)
 [FF FF]
 (SysCraft_Counter:s)
 (Craft_10:s) (Craft_11:s) (Craft_12:s) (Craft_13:s) (Craft_14:s)
 (Craft_15:s) (Craft_16:s) (Craft_17:s) [FF FF] [FF FF]
 (Craft_1A:s) [FF FF] [FF FF] [FF FF] [FF FF]
 [00 00]
#CraftOffsetTableEnd

[80 DB 80 DB 80 DB 80 DB 80 DB 80 DB 80 DB 80 DB]


@_MOD 16
#SysCraft_UnderAttack
SelectChip(Self, 0x2:b)
SubChip(Self, 0x0:b)
Sleep(0x28:i)
Update
Call(loc_0279:s)
End


@_MOD 16
#SysCraft_Reserve1
SelectChip(Self, 0x2:b)
SubChip(Self, 0x0:b)
End


@_MOD 16
#SysCraft_MagicChant
Condition(0x8:b, 0x1:b, 0x0:i, loc_00DC:s)
ShowEff(0xFF:b, 0xFF:b, 0x100:s, 0x0:s, 0x0:i, 0x32:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0x0:b)
TurnDirection(Self, Dest, 0x0:s, 0x1F4:s, 0x0:b)

#loc_00DC
OP_54(0x1:b)
SelectChip(Self, 0x0:b)

#loc_00E1
SubChip(Self, 0x0:b)
Sleep(0xE1:i)
Update
SubChip(Self, 0x1:b)
Sleep(0xE1:i)
Update
SubChip(Self, 0x2:b)
Sleep(0xE1:i)
Update
SubChip(Self, 0x3:b)
Sleep(0xE1:i)
Update
SubChip(Self, 0x4:b)
Sleep(0xE1:i)
Update
SubChip(Self, 0x5:b)
Sleep(0xE1:i)
Update
SubChip(Self, 0x6:b)
Sleep(0xE1:i)
Update
SubChip(Self, 0x7:b)
Sleep(0xE1:i)
Update
Goto(loc_00E1:s)
Goto(loc_00E1:s)


@_MOD 16
#SysCraft_MagicCast
ShowEff(0xFF:b, 0xFF:b, 0x101:s, 0x0:s, 0x0:i, 0x32:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
TurnDirection(Self, Dest, 0x0:s, 0x1F4:s, 0x0:b)
Sleep(0xC8:i)
Update
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x28:i)
Update
MagicCastBegin(0xFFFF:s)
MagicCastEnd
End


@_MOD 16
#SysCraft_Stun
SelectChip(Self, 0x2:b)
SubChip(Self, 0x1:b)
Sleep(0x96:i)
Update
End


@_MOD 16
#SysCraft_Unknown2
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x64:i)
Update
End

#loc_0279
ShakeChar(Self, 0xFFFFFF38:i, 0x0:i, 0xFFFFFF38:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0xC8:i, 0x0:i, 0xC8:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0xFFFFFF38:i, 0x0:i, 0xFFFFFF38:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0xC8:i, 0x0:i, 0xC8:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0xFFFFFF6A:i, 0x0:i, 0xFFFFFF6A:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0x96:i, 0x0:i, 0x96:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0xFFFFFF9C:i, 0x0:i, 0xFFFFFF9C:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0x64:i, 0x0:i, 0x64:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0xFFFFFFCE:i, 0x0:i, 0xFFFFFFCE:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0x32:i, 0x0:i, 0x32:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0xFFFFFFCE:i, 0x0:i, 0xFFFFFFCE:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0x32:i, 0x0:i, 0x32:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
Sleep(0x32:i)
Update
Ret


@_MOD 16
#SysCraft_MagicEffect
AddEff(0x100:s, "battle\\ms00002.eff")
Call(loc_04EE:s)
End


@_MOD 16
#SysCraft_Dead
ResetLoopTarget
SelectChip(Self, 0x2:b)
SubChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x64:i)
Update
Voice(0x0:b, 0x766:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
SubChip(Self, 0x1:b)
Sleep(0x190:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x190:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x3E8:i)
Update
Die
Sleep(0x3E8:i)
Update
End


@_MOD 16
#SysCraft_EnterBattle
BeginThread(Self, Thread1, SysCraft_Stand:s, 0x0:b)
Call(loc_04EE:s)
Sleep(0xBB8:i)
Update
SuspendThread(Self, Thread1)
End

#loc_04EE
Voice(0x3:b, 0x76A:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
Ret


@_MOD 16
#Craft_16
ResetLoopTarget
OP_78(0x1:b)
OP_78(0x0:b)
OP_95
SetAngleTarget(Self, "", 0x0:s)
SetAngleTarget(0xFC:b, "", 0x0:s)
MoveAngle(0x64:i, 0x4E20:s, 0x7530:s)
TurnDirection(Self, Target, 0x0:s, 0x0:s, 0x0:b)
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
BeginThread(Self, Thread1, loc_11E5:s, 0x0:b)
BeginThread(Self, Thread2, loc_128F:s, 0x0:b)
Voice(0x0:b, 0x759:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
Sleep(0x3E8:i)
Update
SuspendThread(Self, Thread1)
SuspendThread(Self, Thread2)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
End


@_MOD 16
#Craft_17
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x7:b, 0x967456:i, 0xFF:b)
OP_78(0x0:b)
OP_95
SetAngleTarget(Self, "", 0x0:s)
SetAngleTarget(0xFC:b, "", 0x0:s)
MoveAngle(0x64:i, 0x4E20:s, 0x7530:s)
TurnDirection(Self, Target, 0x0:s, 0x0:s, 0x0:b)
BeginThread(Self, Thread1, loc_11E5:s, 0x0:b)
Voice(0x0:b, 0x75A:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
SelectChip(Self, 0x7:b)
SubChip(Self, 0x0:b)
Sleep(0x5DC:i)
Update
SuspendThread(Self, Thread1)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
End


@_MOD 16
#SysCraft_Stand
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x4:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x64:i)
Update
Goto(SysCraft_Stand:s)
Goto(SysCraft_Stand:s)


@_MOD 16
#SysCraft_Move
SelectChip(Self, 0x1:b)
SubChip(Self, 0x0:b)
Sleep(0x7D:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x7D:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x7D:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x7D:i)
Update
Goto(SysCraft_Move:s)
Goto(SysCraft_Move:s)


@_MOD 16
#Craft_13
Condition(0x8:b, 0x1:b, 0x0:i, loc_0668:s)
ShowEff(0xFF:b, 0xF9:b, 0x100:s, 0x40:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x5DC:s, 0x5DC:s, 0x5DC:s, 0x0:b)
SeEx(0x102:s, 0x0:b)
TurnDirection(Self, Dest, 0x0:s, 0x1F4:s, 0x0:b)
BeginThread(Self, Thread1, loc_1248:s, 0x0:b)
Voice(0x0:b, 0x760:s, 0x761:s, 0x0:s, 0x0:s, 0xFE:b)

#loc_0668
OP_54(0x1:b)
SelectChip(Self, 0x0:b)

#loc_066D
SubChip(Self, 0x0:b)
Sleep(0x1E:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x1E:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x1E:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x1E:i)
Update
SubChip(Self, 0x4:b)
Sleep(0x1E:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x1E:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x1E:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x1E:i)
Update
Goto(loc_066D:s)
Goto(loc_066D:s)


@_MOD 16
#Craft_14
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x7:b, 0x967452:i, 0xFF:b)
AddEff(0x0:s, "battle/ms00103.eff")
AddEff(0x1:s, "battle\\cr000401.eff")
OP_78(0x0:b)
OP_95
SetAngleTarget(Self, "", 0x0:s)
SetAngleTarget(0xFC:b, "", 0x0:s)
MoveAngle(0x64:i, 0x4E20:s, 0x7530:s)
TurnDirection(Self, Target, 0x0:s, 0x1F4:s, 0x0:b)
OP_5(Self, 0x0:b, 0x0:i)
ShowEff(0xFF:b, 0xFF:b, 0x1:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SeEx(0xC5:s, 0x0:b)
Voice(0x0:b, 0x762:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
BeginThread(Self, Thread1, loc_11E5:s, 0x0:b)
Sleep(0x1F4:i)
Update
Sleep(0x1F4:i)
Update
SaveCurPos(Self)
SelectChip(Self, 0x7:b)
SubChip(Self, 0x0:b)
SubChip(Self, 0x6:b)
Sleep(0x0:i)
Update
SeEx(0xFB:s, 0x0:b)
JumpToTarget(0x1F4:s, 0x7D0:s)
SetBattleSpeed(0x1F4:i)
Blur(0x0:i, 0xBBFFFFFF:i, 0x0:i, 0x1:b, 0x5:i)
ShakeScreen(0xFA:i, 0xFA:i, 0xFA:i, 0x3E8:i)
SubChip(Self, 0x7:b)
Sleep(0x5:i)
Update
ShowEff(0xFF:b, 0xF8:b, 0xA:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
DamageAnime(Target, 0x0:b, 0x32:i)
Voice(0x0:b, 0x763:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
Sleep(0x2EE:i)
Update
SetBattleSpeed(0x3E8:i)
ShowEff(0xFF:b, 0xF8:b, 0x0:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x1F4:s, 0x1F4:s, 0x1F4:s, 0xFF:b)
SeEx(0xC4:s, 0x0:b)
DamageAnime(Target, 0x1:b, 0x32:i)
Damage(Target, 0x64:b)
Sleep(0x64:i)
Update
OP_80(0x1F4:i)
ShakeScreen(0x0:i, 0x0:i, 0x0:i, 0x3E8:i)
SubChip(Self, 0x6:b)
Sleep(0x0:i)
Update
JumpBack(0x5DC:s, 0x7D0:s)
Move(Self, 0xF0:b, 0x0:i, 0x0:i, 0x0:i, 0x1:i, 0x0:b)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
SuspendThread(Self, Thread1)
Sleep(0x5:i)
Update
BeginThread(Self, Thread1, SysCraft_Stand:s, 0x0:b)
Sleep(0x3E8:i)
Update
SuspendThread(Self, Thread1)
OP_14(0x0:s)
ReleaseEff(0x0:s)
OP_14(0x1:s)
ReleaseEff(0x1:s)
End


@_MOD 16
#SysCraft_NormalAttack
End


@_MOD 16
#Craft_10
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x7:b, 0x967452:i, 0xFF:b)
AddEff(0x0:s, "battle/ms00082.eff")
OP_78(0x0:b)
OP_95
SetAngleTarget(Self, "", 0x0:s)
SetAngleTarget(0xFC:b, "", 0x0:s)
MoveAngle(0x64:i, 0x4E20:s, 0x7530:s)
BeginThread(Self, Thread1, SysCraft_Move:s, 0x0:b)
OP_1E(0xFFFFFFFF:i)
SuspendThread(Self, Thread1)
TurnDirection(Self, Target, 0x0:s, 0x1F4:s, 0x0:b)
OP_5(Self, 0x0:b, 0x0:i)
Sleep(0xA:i)
Update
SaveCurPos(Self)
Voice(0x0:b, 0x772:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
BeginThread(Self, Thread1, loc_11AC:s, 0x0:b)
BeginThread(Self, Thread2, loc_11E5:s, 0x0:b)
SelectChip(Self, 0x7:b)
SubChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x1F4:i)
Update
WaitThread(Self, Thread1)
SuspendThread(Self, Thread1)
Sleep(0x4E2:i)
Update
Sleep(0x64:i)
Update
BeginThread(Self, Thread1, loc_11BF:s, 0x0:b)
SeEx(0x15F:s, 0x0:b)
ShowEff(0xFF:b, 0xF9:b, 0x0:s, 0x80:s, 0xFA:i, 0x64:i, 0xC8:i, 0x0:s, 0x1C:s, 0x16:s, 0x258:s, 0x258:s, 0x258:s, 0x2:b)
SubChip(Self, 0x1:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x32:i)
Update
ShowEff(0xFF:b, 0xF8:b, 0xA:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
DamageAnime(Target, 0x1:b, 0x32:i)
Damage(Target, 0x64:b)
WaitThread(Self, Thread1)
SuspendThread(Self, Thread1)
Sleep(0xA:i)
Update
BeginThread(Self, Thread1, loc_11D2:s, 0x0:b)
Sleep(0x1F4:i)
Update
SuspendThread(Self, Thread2)
WaitThread(Self, Thread1)
SuspendThread(Self, Thread1)
Move(Self, 0xF0:b, 0x0:i, 0x0:i, 0x0:i, 0x0:i, 0x0:b)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
CancelEff(Self, 0x2:b)
OP_14(0x0:s)
ReleaseEff(0x0:s)
End


@_MOD 16
#Craft_11
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x7:b, 0x967452:i, 0xFF:b)
AddEff(0x0:s, "battle/ms00125.eff")
OP_78(0x0:b)
OP_95
SetAngleTarget(Self, "", 0x0:s)
SetAngleTarget(0xFC:b, "", 0x0:s)
MoveAngle(0x64:i, 0x4E20:s, 0x7530:s)
BeginThread(Self, Thread1, SysCraft_Move:s, 0x0:b)
OP_1E(0xFFFFFFFF:i)
SuspendThread(Self, Thread1)
TurnDirection(Self, Target, 0x0:s, 0x1F4:s, 0x0:b)
OP_5(Self, 0x0:b, 0x0:i)
Sleep(0xA:i)
Update
SaveCurPos(Self)
Voice(0x0:b, 0x774:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
BeginThread(Self, Thread1, loc_11AC:s, 0x0:b)
BeginThread(Self, Thread2, loc_11E5:s, 0x0:b)
SelectChip(Self, 0x7:b)
SubChip(Self, 0x0:b)
SubChip(Self, 0x3:b)
Sleep(0x1F4:i)
Update
WaitThread(Self, Thread1)
SuspendThread(Self, Thread1)
Sleep(0x64:i)
Update
BeginThread(Self, Thread1, loc_11BF:s, 0x0:b)
SeEx(0x15F:s, 0x0:b)
ShowEff(0xFF:b, 0xF9:b, 0x0:s, 0x80:s, 0x15E:i, 0xB4:i, 0x96:i, 0x0:s, 0x28:s, 0x16:s, 0x258:s, 0x258:s, 0x258:s, 0x2:b)
SubChip(Self, 0x4:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x5:b)
Sleep(0x32:i)
Update
ShowEff(0xFF:b, 0xF8:b, 0xA:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
DamageAnime(Target, 0x1:b, 0x32:i)
Damage(Target, 0x64:b)
WaitThread(Self, Thread1)
SuspendThread(Self, Thread1)
Sleep(0xA:i)
Update
BeginThread(Self, Thread1, loc_11D2:s, 0x0:b)
Sleep(0x1F4:i)
Update
SuspendThread(Self, Thread2)
WaitThread(Self, Thread1)
SuspendThread(Self, Thread1)
Move(Self, 0xF0:b, 0x0:i, 0x0:i, 0x0:i, 0x0:i, 0x0:b)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
OP_14(0x0:s)
ReleaseEff(0x0:s)
End


@_MOD 16
#Craft_12
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x7:b, 0x967452:i, 0xFF:b)
AddEff(0x0:s, "battle/ms00082.eff")
AddEff(0x0:s, "battle/ms00125.eff")
OP_78(0x0:b)
OP_95
SetAngleTarget(Self, "", 0x0:s)
SetAngleTarget(0xFC:b, "", 0x0:s)
MoveAngle(0x64:i, 0x4E20:s, 0x7530:s)
BeginThread(Self, Thread1, SysCraft_Move:s, 0x0:b)
OP_1E(0xFFFFFFFF:i)
SuspendThread(Self, Thread1)
TurnDirection(Self, Target, 0x0:s, 0x1F4:s, 0x0:b)
OP_5(Self, 0x0:b, 0x0:i)
Sleep(0xA:i)
Update
SaveCurPos(Self)
Voice(0x0:b, 0x773:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
BeginThread(Self, Thread1, loc_11AC:s, 0x0:b)
BeginThread(Self, Thread2, loc_11E5:s, 0x0:b)
SelectChip(Self, 0x7:b)
SubChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x1F4:i)
Update
WaitThread(Self, Thread1)
SuspendThread(Self, Thread1)
Sleep(0xC8:i)
Update
BeginThread(Self, Thread1, loc_11BF:s, 0x0:b)
SeEx(0x21A:s, 0x0:b)
ShowEff(0xFF:b, 0xF9:b, 0x0:s, 0x80:s, 0xFA:i, 0x78:i, 0x64:i, 0x0:s, 0x1C:s, 0x16:s, 0x258:s, 0x258:s, 0x258:s, 0x2:b)
SubChip(Self, 0x1:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x32:i)
Update
ShowEff(0xFF:b, 0xF8:b, 0xA:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
DamageAnime(Target, 0x0:b, 0x32:i)
SubChip(Self, 0x2:b)
Sleep(0x190:i)
Update
WaitThread(Self, Thread1)
SuspendThread(Self, Thread1)
Voice(0x0:b, 0x75C:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
Sleep(0xC8:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x64:i)
Update
ShowEff(0xFF:b, 0xF9:b, 0x0:s, 0x80:s, 0x15E:i, 0xC8:i, 0xFFFFFF6A:i, 0x0:s, 0x2D:s, 0x16:s, 0x258:s, 0x258:s, 0x258:s, 0x2:b)
SeEx(0x15F:s, 0x0:b)
SubChip(Self, 0x4:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x5:b)
Sleep(0x32:i)
Update
ShowEff(0xFF:b, 0xF8:b, 0xA:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
DamageAnime(Target, 0x1:b, 0x32:i)
Damage(Target, 0x64:b)
Move(Self, 0xF0:b, 0x0:i, 0x0:i, 0x0:i, 0x0:i, 0x0:b)
Sleep(0x1F4:i)
Update
SuspendThread(Self, Thread2)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
OP_14(0x0:s)
ReleaseEff(0x0:s)
OP_14(0x1:s)
ReleaseEff(0x1:s)
End


@_MOD 16
#Craft_15
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x7:b, 0x967456:i, 0xFF:b)
AddEff(0x0:s, "battle/cr023100.eff")
OP_78(0x0:b)
OP_95
SetAngleTarget(Self, "", 0x0:s)
MoveAngle(0x64:i, 0x4E20:s, 0x7530:s)
TurnDirection(Self, Target, 0x0:s, 0x1F4:s, 0x0:b)
OP_5A(0x0:b, 0x2:b, 0x7D0:i)
SeEx(0xCB:s, 0x0:b)
ShowEff(0xFF:b, 0xF9:b, 0x0:s, 0x140:s, 0xFFFFFF38:i, 0x190:i, 0x5DC:i, 0x0:s, 0x1:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
Voice(0x0:b, 0x75F:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
SelectChip(Self, 0x7:b)
SubChip(Self, 0x0:b)
BeginThread(Self, Thread1, loc_11E5:s, 0x0:b)
Sleep(0x3E8:i)
Update
SuspendThread(Self, Thread1)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
SeEx(0xCC:s, 0x0:b)
OP_95
SetAngleTarget(0xFC:b, "", 0x0:s)
MoveAngle(0x12C:i, 0x4E20:s, 0x7530:s)
ShakeScreen(0x12C:i, 0x12C:i, 0x12C:i, 0x2710:i)
Sleep(0x190:i)
Update
BeginThread(Self, Thread1, loc_0DD5:s, 0x0:b)
Sleep(0x258:i)
Update
ShakeScreen(0x96:i, 0x96:i, 0x96:i, 0x12C:i)
ResetLoopTarget
SortTarget(0x0:b)

#loc_0DA5
LoopTargetBegin(loc_0DB5:s)
Damage(Target, 0x64:b)
Sleep(0x32:i)
Update
LoopTargetEnd
Goto(loc_0DA5:s)

#loc_0DB5
OP_8F(0x0:b)
OP_14(0x0:s)
OP_5B(0x3E8:i)
SuspendThread(Self, Thread1)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
ReleaseEff(0x0:s)
ResetSCraftChip
End

#loc_0DD5
ResetLoopTarget
SortTarget(0x0:b)

#loc_0DD8
LoopTargetBegin(loc_0DEC:s)
DamageAnime(Target, 0x0:b, 0x32:i)
Sleep(0x32:i)
Update
LoopTargetEnd
Goto(loc_0DD8:s)

#loc_0DEC
Sleep(0x64:i)
Update
Goto(loc_0DD5:s)
Goto(loc_0DD5:s)


@_MOD 16
#Craft_1A
OP_8D(0x4C:b, 0x0:i, 0x0:i, 0x0:i, 0x0:i)
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x7:b, 0x967457:i, 0xFF:b)
AddEff(0x1:s, "battle/sc023000.eff")
AddEff(0x2:s, "battle/sc023001.eff")
AddEff(0x3:s, "battle/sc023002.eff")
OP_78(0x0:b)
OP_5A(0x0:b, 0x0:b, 0x0:i)
OP_60(0xF7:b)
Voice(0x0:b, 0x760:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
Teleport(Self, 0xFD:b, 0x0:i, 0x0:i, 0x0:i)
OP_3(Self, 0x0:s)
SetChipModeFlag(0x0:b, Self, 0x2:s)
SelectChip(Self, 0x7:b)
SubChip(Self, 0x0:b)
OP_8D(0x1:b, 0x0:i, 0x0:i, 0x0:i, 0x0:i)
Hide(0xFC:b, 0x0:i)
ResetLoopTarget

#loc_0EA3
LoopTargetBegin(loc_0EB2:s)
TurnDirection(Target, Self, 0x0:s, 0x0:s, 0x0:b)
LoopTargetEnd
Goto(loc_0EA3:s)

#loc_0EB2
OP_34
KeepAngle(Self, 0x0:i, 0x3E8:i, 0x0:i, 0x0:i)
RotationAngleHorz(0x32C8:i, 0x0:i)
SetAngle(0xB4:s, 0x14:s, 0x0:s, 0x0:i)
RotationAngleHorz(0x2AF8:i, 0x7D0:i)
OP_5F(Self, 0x0:b)
SeEx(0x14D:s, 0x0:b)
Sleep(0x7D0:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x1F4:i)
Update
SeEx(0x11E:s, 0x0:b)
ShowEff(0xFF:b, 0xFF:b, 0x1:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
ShakeScreen(0x64:i, 0x64:i, 0x64:i, 0x35C:i)
SubChip(Self, 0x4:b)
Sleep(0x50:i)
Update
SubChip(Self, 0x5:b)
Sleep(0x50:i)
Update
SubChip(Self, 0x6:b)
Sleep(0x2BC:i)
Update
Voice(0x0:b, 0x762:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
SeEx(0x13F:s, 0x0:b)
ZoomAngle(0x1:b, 0x2BC:i, 0x0:i)
RotationAngleHorz(0x1B58:i, 0x0:i)
OP_3C(0x32:s, 0x0:i)
RotationAngleHorz(0x2710:i, 0xBB8:i)
OP_3C(0x0:s, 0xBB8:i)
Sleep(0xC8:i)
Update
SubChip(Self, 0x7:b)
Sleep(0x50:i)
Update
BeginThread(Self, Thread1, loc_1139:s, 0x0:b)
Sleep(0x76C:i)
Update
Sleep(0x12C:i)
Update
SuspendThread(Self, Thread1)
SubChip(Self, 0xB:b)
Sleep(0x50:i)
Update
SubChip(Self, 0xC:b)
Sleep(0x50:i)
Update
SubChip(Self, 0xD:b)
Sleep(0x50:i)
Update
SubChip(Self, 0xE:b)
Sleep(0x1F4:i)
Update
RotationAngleHorz(0x4A38:i, 0x64:i)
OP_5F(0xFC:b, 0x0:b)
Show(0xFC:b, 0x64:i)
Voice(0x0:b, 0x75C:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
ClearChipModeFlag(0x0:b, Self, 0x2:s)
SubChip(Self, 0x2:b)
SeEx(0xD7:s, 0x0:b)
ShowEff(0xFF:b, 0xFF:b, 0x2:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x4B0:s, 0x4B0:s, 0x4B0:s, 0xFF:b)
ShakeScreen(0x96:i, 0x96:i, 0x96:i, 0x12C:i)
Sleep(0xFA:i)
Update
SeEx(0x149:s, 0x0:b)
TiltAngle(0x2D0:s, 0xABE:i)
OP_3C(0x0:s, 0xABE:i)
Sleep(0x3E8:i)
Update
RotationAngleHorz(0x4268:i, 0x6D6:i)
Voice(0x0:b, 0x761:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
Sleep(0x6D6:i)
Update
OP_3E(0x3E8:i, 0xDAC:i)
RotationAngleHorz(0x2328:i, 0xDAC:i)
OP_B0(0xF:s, 0xDAC:i)
SeEx(0xD7:s, 0x0:b)
BeginThread(Self, Thread1, loc_1160:s, 0x0:b)
Sleep(0xBB8:i)
Update
Voice(0x0:b, 0x763:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
Sleep(0x15E:i)
Update
SuspendThread(Self, Thread1)
SeEx(0x120:s, 0x0:b)
OP_A0(0x2:b, 0x400:i)
SetBattleSpeed(0x64:i)
Sleep(0x64:i)
Update
SetBattleSpeed(0x3E8:i)
OP_A0(0x3:b, 0x400:i)
SeEx(0x14A:s, 0x0:b)
ResetLoopTarget

#loc_10CF
LoopTargetBegin(loc_10E6:s)
DamageAnime(Target, 0x0:b, 0x32:i)
Damage(Target, 0x64:b)
Sleep(0x32:i)
Update
LoopTargetEnd
Goto(loc_10CF:s)

#loc_10E6
Sleep(0x2BC:i)
Update
OP_8F(0x0:b)
ZoomAngle(0x1:b, 0x1F4:i, 0x0:i)
CraftEnd(0x1:b)
Show(Self, 0x0:i)
OP_5F(0xF7:b, 0x0:b)
OP_31(0x16:b, 0x0:i)
OP_5B(0x0:i)
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
DamageVoice(0x0:b, 0x1:s)
DamageVoice(0x0:b, 0x2:s)
DamageVoice(0x0:b, 0x3:s)
ReleaseEff(0x1:s)
ReleaseEff(0x2:s)
ReleaseEff(0x3:s)
ResetSCraftChip
End

#loc_1139
SubChip(Self, 0x8:b)
Sleep(0x6E:i)
Update
SubChip(Self, 0x9:b)
Sleep(0x6E:i)
Update
SubChip(Self, 0xA:b)
Sleep(0x6E:i)
Update
SubChip(Self, 0x9:b)
Sleep(0x6E:i)
Update
Goto(loc_1139:s)
Goto(loc_1139:s)

#loc_1160
ResetLoopTarget

#loc_1161
LoopTargetBegin(loc_118E:s)
ShowEff(0xFF:b, 0xFF:b, 0x3:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
Sleep(0x32:i)
Update
LoopTargetEnd
Goto(loc_1161:s)

#loc_118E
ResetLoopTarget

#loc_118F
LoopTargetBegin(loc_11A3:s)
DamageAnime(Target, 0x0:b, 0x32:i)
Sleep(0x32:i)
Update
LoopTargetEnd
Goto(loc_118F:s)

#loc_11A3
Sleep(0x64:i)
Update
Goto(loc_118E:s)
Goto(loc_118E:s)

#loc_11AC
OP_5(Self, 0x0:b, 0x0:i)
OP_21(0x1:b, MainThread, 0xFFFFFF06:i, 0x3E8:i)
End

#loc_11BF
OP_5(Self, 0x0:b, 0x0:i)
OP_21(0x1:b, MainThread, 0x1F4:i, 0x9C4:i)
End

#loc_11D2
OP_5(Self, 0x0:b, 0x0:i)
OP_21(0x1:b, MainThread, 0xFFFFFF06:i, 0x1388:i)
End

#loc_11E5
ShakeChar(Self, 0x19:i, 0x0:i, 0x19:i)
Sleep(0x1E:i)
Update
ShakeChar(Self, 0xFFFFFFE7:i, 0x0:i, 0xFFFFFFE7:i)
Sleep(0x1E:i)
Update
ShakeChar(Self, 0x19:i, 0x0:i, 0x19:i)
Sleep(0x1E:i)
Update
ShakeChar(Self, 0xFFFFFFE7:i, 0x0:i, 0xFFFFFFE7:i)
Sleep(0x1E:i)
Update
Goto(loc_11E5:s)
Goto(loc_11E5:s)

#loc_1248
TipText("魔人阿奈斯特正在蓄力", 0x3E8:i)
OP_2B
End

#loc_128F
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x1E:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x1E:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x1E:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x1E:i)
Update
SubChip(Self, 0x4:b)
Sleep(0x1E:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x1E:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x1E:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x1E:i)
Update
Goto(loc_128F:s)
Goto(loc_128F:s)


@_MOD 16
#SysCraft_Counter
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x7:b, 0x967452:i, 0xFF:b)
AddEff(0x0:s, "battle/ms00082.eff")
OP_78(0x0:b)
OP_95
SetAngleTarget(Self, "", 0x0:s)
SetAngleTarget(0xFC:b, "", 0x0:s)
MoveAngle(0x64:i, 0x4E20:s, 0x7530:s)
BeginThread(Self, Thread1, SysCraft_Move:s, 0x0:b)
OP_1E(0xFFFFFFFF:i)
SuspendThread(Self, Thread1)
TurnDirection(Self, Target, 0x0:s, 0x1F4:s, 0x0:b)
OP_5(Self, 0x0:b, 0x0:i)
Sleep(0xA:i)
Update
SaveCurPos(Self)
Voice(0x0:b, 0x769:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
Sleep(0x12C:i)
Update
BeginThread(Self, Thread1, loc_11AC:s, 0x0:b)
BeginThread(Self, Thread2, loc_11E5:s, 0x0:b)
SelectChip(Self, 0x7:b)
SubChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x1F4:i)
Update
WaitThread(Self, Thread1)
SuspendThread(Self, Thread1)
Sleep(0x64:i)
Update
BeginThread(Self, Thread1, loc_11BF:s, 0x0:b)
SeEx(0x24E:s, 0x0:b)
SeEx(0x21A:s, 0x0:b)
ShowEff(0xFF:b, 0xF9:b, 0x0:s, 0x80:s, 0xFA:i, 0x64:i, 0xC8:i, 0x0:s, 0x1C:s, 0x16:s, 0x258:s, 0x258:s, 0x258:s, 0x2:b)
SubChip(Self, 0x1:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x32:i)
Update
ShowEff(0xFF:b, 0xF8:b, 0xA:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
DamageAnime(Target, 0x0:b, 0x32:i)
Damage(Target, 0x64:b)
WaitThread(Self, Thread1)
SuspendThread(Self, Thread1)
Sleep(0xA:i)
Update
BeginThread(Self, Thread1, loc_11D2:s, 0x0:b)
Sleep(0x1F4:i)
Update
SuspendThread(Self, Thread2)
WaitThread(Self, Thread1)
SuspendThread(Self, Thread1)
Move(Self, 0xF0:b, 0x0:i, 0x0:i, 0x0:i, 0x0:i, 0x0:b)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
CancelEff(Self, 0x2:b)
OP_14(0x0:s)
ReleaseEff(0x0:s)
End

