------------------------------------------------------------
-- Bools / Locals
local xx = CETrainer
local cc = getMainForm()
local memrec = getAddressList().getMemoryRecordByDescription
local r,g,b
local r1,g1,b1
local cmode = 0
local colorspace = 5
local getint = getInternet()
local asm = autoAssemble
r = 255
g = 0
b = 0
local AboutAll = {
xx.CheatPage1,
xx.Visuals,
xx.Changers,
xx.Spammer,
xx.Settings,
}

local CheatsAll = {
xx.About,
xx.Visuals,
xx.Changers,
xx.Spammer,
xx.Settings,
}

local VisualsAll = {
xx.CheatPage1,
xx.About,
xx.Changers,
xx.Spammer,
xx.Settings,
}

local ChangersAll = {
xx.CheatPage1,
xx.Visuals,
xx.About,
xx.Spammer,
xx.Settings,
}

local SpammerAll = {
xx.CheatPage1,
xx.Visuals,
xx.Changers,
xx.About,
xx.Settings,
}

local SettingsAll = {
xx.CheatPage1,
xx.Visuals,
xx.Changers,
xx.Spammer,
xx.About,
}

local Page1All = {
xx.CheatPage2,
xx.CheatPage3,
xx.CheatPage4,
}

local Page2All = {
xx.CheatPage1,
xx.CheatPage3,
xx.CheatPage4,
}

local Page3All = {
xx.CheatPage2,
xx.CheatPage1,
xx.CheatPage4,
}

local Page4All = {
xx.CheatPage2,
xx.CheatPage3,
xx.CheatPage1,
}

function F1()
  if xx.CELabel138.Caption == "[F1] ItemTP: OFF" then
    xx.CELabel138.Caption = "[F1] ItemTP: ON"
    xx.CELabel138.Font.Color = 0x00FF00
    xx.ItemTP.showhint = true
    xx.ItemTP.color = '0x00FF00'
asm[[
alloc(N,2048,Growtopia.exe+47FED2)
alloc(Y,100)
label(H)

Growtopia.exe+40CD3E: //Anti Lgrid / Spike
db 0F 84 67 05 00 00

Y:
mov rax,[Growtopia.exe+7667F8]
mov rax,[rax+AB0]
mov rax,[rax+198]
movss [rax+8],xmm13
movss [rax+C],xmm14
jmp H

N:
movss xmm13,[r13]
movss xmm14,[r13+4]
jmp Y

H:
movss xmm0,[r12]
jmp Growtopia.exe+47FED9

Growtopia.exe+47FED2:
jmp N
nop
]]
  else
    xx.CELabel138.Caption = "[F1] ItemTP: OFF"
    xx.CELabel138.Font.Color = 0x0000FF
    xx.ItemTP.showhint = false
    xx.ItemTP.color = '$000000'
asm[[
dealloc(*)
Growtopia.exe+47FED2:
movss xmm1,[r12+04] ]]
sleep(1000)
asm[[
Growtopia.exe+40CD3E: //Anti Lgrid / Spike
db 0F 85 67 05 00 00
]]

  end
end

function F2()
  if xx.CELabel139.Caption == "[F2] Giveaway Mode V1: OFF" then
    xx.CELabel139.Caption = "[F2] Giveaway Mode V1: ON"
    xx.CELabel139.Font.Color = 0x00FF00
    xx.GiveawayModeV1.showhint = true
    xx.GiveawayModeV1.color = '0x00FF00'
    xx.HoldS.Enabled = true
    asm([[
Growtopia.exe+46E087:
db 90 90
Growtopia.exe+45E727:
db 90 90
Growtopia.exe+40F2A2:
db 73 05
]])
  else
    xx.CELabel139.Caption = "[F2] Giveaway Mode V1: OFF"
    xx.CELabel139.Font.Color = 0x0000FF
    xx.GiveawayModeV1.showhint = false
    xx.GiveawayModeV1.color = '$000000'
    xx.HoldS.Enabled = false
    asm([[
Growtopia.exe+46E087:
db 74 5D
Growtopia.exe+45E727:
db 75 0C
Growtopia.exe+40F2A2:
db 74 05
    ]])
  end
end

function F3()
  if xx.CELabel140.Caption == "[F3] Mod Fly V2: OFF" then
    xx.CELabel140.Caption = "[F3] Mod Fly V2: ON"
    xx.CELabel140.Font.Color = 0x00FF00
    xx.ModFlyV2.showhint = true
    xx.ModFlyV2.color = '0x00FF00'
    xx.HoldS.Enabled = true
    asm([[
Growtopia.exe+46E087:
db 90 90
    ]])
  else
    xx.CELabel140.Caption = "[F3] Mod Fly V2: OFF"
    xx.CELabel140.Font.Color = 0x0000FF
    xx.ModFlyV2.showhint = false
    xx.ModFlyV2.color = '$000000'
    xx.HoldS.Enabled = false
    asm([[
Growtopia.exe+46E087:
db 74 5D
    ]])
  end
end

function F4()
  if xx.CELabel141.Caption == "[F4] Anti Bounce: OFF" then
    xx.CELabel141.Caption = "[F4] Anti Bounce: ON"
    xx.CELabel141.Font.Color = 0x00FF00
    xx.AntiBounceV1.showhint = true
    xx.AntiBounceV1.color = '0x00FF00'
    asm([[
Growtopia.exe+4069BA:
db 75 1D
Growtopia.exe+4069D5:
nop 4

Growtopia.exe+46F041: //antib
db 90 90 90 90
    ]])
  else
    xx.CELabel141.Caption = "[F4] Anti Bounce: OFF"
    xx.CELabel141.Font.Color = 0x0000FF
    xx.AntiBounceV1.showhint = false
    xx.AntiBounceV1.color = '$000000'
    asm([[
Growtopia.exe+4069BA:
db 74 1D
Growtopia.exe+4069D5:
db 83 4B 0C 20

Growtopia.exe+46F041: //antib
db 41 0F 28 C2
    ]])
  end
end

function F5()
  if xx.CELabel142.Caption == "[F5] Growz: OFF" then
    xx.CELabel142.Caption = "[F5] Growz: ON"
    xx.CELabel142.Font.Color = 0x00FF00
    xx.Growz.showhint = true
    xx.Growz.color = '0x00FF00'
    asm([[
Growtopia.exe+40FB31:
db 90 90 90 90
    ]])
  else
    xx.CELabel142.Caption = "[F5] Growz: OFF"
    xx.CELabel142.Font.Color = 0x0000FF
    xx.Growz.showhint = false
    xx.Growz.color = '$000000'
    asm([[
Growtopia.exe+40FB31:
db F3 0F 5C D1
    ]])
  end
end
getLuaEngine().cbShowOnPrint.Checked = false
getLuaEngine().hide()
-- Bools / Locals
------------------------------------------------------------

-- Auto Attach And Ban Bypasses
  ------------------------------------------------------------
  PROCESS_NAME = 'Growtopia.exe'

  local autoAttachTimer = nil ---- variable to hold timer object
  local autoAttachTimerInterval = 1000 ---- Timer intervals are in milliseconds
  local autoAttachTimerTicks = 0 ---- variable to count number of times the timer has run
  local autoAttachTimerTickMax = 5000 ---- Set to zero to disable ticks max
  local function autoAttachTimer_tick(timer) ---- Timer tick call back
          ---- Destroy timer if max ticks is reached
	  if autoAttachTimerTickMax > 0 and autoAttachTimerTicks >= autoAttachTimerTickMax then
  xx.Process.Font.Color = "0x0000FF"
  xx.Process.Caption = "GROWTOPIA: NOT RUNNING"
          timer.destroy()
	  end
          ---- Check if process is running
	  if getProcessIDFromProcessName(PROCESS_NAME) ~= nil then
		  timer.destroy() ---- Destroy timer
		  openProcess(PROCESS_NAME) ---- Open the proces
  -- Ban Bypass
  asm[[
Growtopia.exe+317553:
db 90 90
Growtopia.exe+402173:
db 90 90
Growtopia.exe+40E37E:
db E9 19 01 00 00
Growtopia.exe+20913:
db 90 90 90 90 90 90
Growtopia.exe+308FEF:
db 90 90 90 90 90 90 90 //mod zoom
]]
  -- Ban Bypass

  -- Version Bypass
  memrec( 'Version' ).Active = true
  memrec( 'Version' ).Value = "5"
  -- Version Bypass
  xx.Process.Font.Color = "0x00FF00"
  xx.Process.Caption = "     GROWTOPIA: RUNNING"
  memrec( 'WatermarkString' ).Active = true
  memrec( 'WatermarkString' ).Value = [[


  `2N`7o`2t`7Y`2e`7t`2H`7A`2X'`7s `2G`7r`2o`7w`2t`7o`2p`7i`2a `7/ `2T`7r`2a`7i`2n`7e`2r `7V`23`7.`26`73
  `2T`7r`2a`7i`2n`7e`2r`7: `2A`7C`2T`7I`2V`7E
  `2F`7p`2s:`7%d]]
	  end
	  autoAttachTimerTicks = autoAttachTimerTicks + 1
  end
  autoAttachTimer = createTimer(getMainForm())
  autoAttachTimer.Interval = autoAttachTimerInterval
  autoAttachTimer.OnTimer = autoAttachTimer_tick
-- Auto Attach And Ban Bypasses
------------------------------------------------------------

------------------------------------------------------------
-- Starting
xx.Position = poDesktopCenterCenter
Login.Rainbow.Enabled = true
-- cc.Visible = false --Hides cheat engine
xx.Visible = false
xx.Process.Font.Color = "0x0000FF"
xx.Process.Caption = "GROWTOPIA: NOT RUNNING"
Confirmation.Visible = false
xx.About.Visible = true
xx.AboutButton.BevelWidth = 2
xx.Page1Button.Visible = false
xx.Page2Button.Visible = false
xx.Page3Button.Visible = false
xx.Page4Button.Visible = false
xx.AppCheck.Enabled = true
-- Starting
------------------------------------------------------------
function CETrainer_HoldSTimer(sender)
if isKeyPressed(VK_S) then
asm[[
Growtopia.exe+46E087:
db 74 5D
]]
else
asm[[
Growtopia.exe+46E087:
db 90 90
]]
end
end
------------------------------------------------------------
-- Design
function CETrainer_FormDragMouseDown(sender, button, x, y)
xx.DragNow()
end

function CETrainer_FormDrag1MouseDown(sender, button, x, y)
xx.DragNow()
end

function CETrainer_ExitMouseDown(sender, button, x, y)
Confirmation.Visible = true
end

function CETrainer_MinimizeMouseDown(sender, button, x, y)
xx.WindowState = "wsMinimized"
end

function CETrainer_CELabel1MouseDown(sender, button, x, y)
xx.DragNow()
end

function CETrainer_ExitMouseEnter(sender)
  sender = xx
  sender = sender.Exit
  sender.Color = "0x0000FF"
end

function CETrainer_ExitMouseLeave(sender)
  sender = xx
  sender = sender.Exit
  sender.Color = "$0000000"
end

function CETrainer_MinimizeMouseEnter(sender)
  sender = xx
  sender = sender.Minimize
  sender.Color = "$14141414"
end

function CETrainer_MinimizeMouseLeave(sender)
  sender = xx
  sender = sender.Minimize
  sender.Color = "$0000000"
end

function CETrainer_RainbowTextTimer(sender)
if cmode == 0 then
 if g < 255 then
  g = g + colorspace
 else
  cmode = 1
 end
end
if cmode == 1 then
 if r > 0 then
  r = r - colorspace
 else
  cmode = 2
 end
end
if cmode == 2 then
 if b < 255 then
  b = b + colorspace
 else
  cmode = 3
 end
end
if cmode == 3 then
 if g > 0 then
  g = g - colorspace
 else
  cmode = 4
 end
end
if cmode == 4 then
 if r < 255 then
  r = r + colorspace
 else
  cmode = 5
 end
end
if cmode == 5 then
 if b > 0 then
  b = b - colorspace
 else
  cmode = 0
 end
end
r1 = string.format("%02X",r)
g1 = string.format("%02X",g)
b1 = string.format("%02X",b)
xx.CELabel1.Font.color = "0x"..b1..g1..r1
xx.Credits1.Font.color = "0x"..b1..g1..r1
xx.Credits2.Font.color = "0x"..b1..g1..r1
end

-- Design
------------------------------------------------------------

function CETrainer_CETrackBar1Change(sender)
xx.AlphaBlend = true
xx.AlphaBlendValue = xx.OpacityTrackbar.Position
xx.OpacityView.Caption = (xx.OpacityTrackbar.Position)
end

------------------------------------------------------------
-- Pages1
function CETrainer_SettingsButtonMouseEnter(sender)
  sender = xx
  sender = sender.SettingsButton
  sender.Color = "$141414"
end

function CETrainer_SettingsButtonMouseLeave(sender)
  sender = xx
  sender = sender.SettingsButton
  sender.Color = "$0000000"
end

function CETrainer_SpammerButtonMouseLeave(sender)
  sender = xx
  sender = sender.SpammerButton
  sender.Color = "$0000000"
end

function CETrainer_SpammerButtonMouseEnter(sender)
  sender = xx
  sender = sender.SpammerButton
  sender.Color = "$141414"
end

function CETrainer_ChangersButtonMouseEnter(sender)
  sender = xx
  sender = sender.ChangersButton
  sender.Color = "$141414"
end

function CETrainer_ChangersButtonMouseLeave(sender)
  sender = xx
  sender = sender.ChangersButton
  sender.Color = "$0000000"
end

function CETrainer_VisualsButtonMouseEnter(sender)
  sender = xx
  sender = sender.VisualsButton
  sender.Color = "$141414"
end

function CETrainer_VisualsButtonMouseLeave(sender)
  sender = xx
  sender = sender.VisualsButton
  sender.Color = "$0000000"
end

function CETrainer_CheatsButtonMouseEnter(sender)
  sender = xx
  sender = sender.CheatsButton
  sender.Color = "$141414"
end

function CETrainer_CheatsButtonMouseLeave(sender)
  sender = xx
  sender = sender.CheatsButton
  sender.Color = "$0000000"
end

function CETrainer_AboutButtonMouseEnter(sender)
  sender = xx
  sender = sender.AboutButton
  sender.Color = "$141414"
end

function CETrainer_AboutButtonMouseLeave(sender)
  sender = xx
  sender = sender.AboutButton
  sender.Color = "$0000000"
end

function CETrainer_Page1ButtonMouseEnter(sender)
  sender = xx
  sender = sender.Page1Button
  sender.Color = "$141414"
end

function CETrainer_Page1ButtonMouseLeave(sender)
  sender = xx
  sender = sender.Page1Button
  sender.Color = "$0000000"
end

function CETrainer_Page2ButtonMouseEnter(sender)
  sender = xx
  sender = sender.Page2Button
  sender.Color = "$141414"
end

function CETrainer_Page2ButtonMouseLeave(sender)
  sender = xx
  sender = sender.Page2Button
  sender.Color = "$0000000"
end

function CETrainer_Page3ButtonMouseEnter(sender)
  sender = xx
  sender = sender.Page3Button
  sender.Color = "$141414"
end

function CETrainer_Page3ButtonMouseLeave(sender)
  sender = xx
  sender = sender.Page3Button
  sender.Color = "$0000000"
end

function CETrainer_Page4ButtonMouseEnter(sender)
  sender = xx
  sender = sender.Page4Button
  sender.Color = "$141414"
end

function CETrainer_Page4ButtonMouseLeave(sender)
  sender = xx
  sender = sender.Page4Button
  sender.Color = "$0000000"
end
-- Pages1
------------------------------------------------------------

------------------------------------------------------------
-- Pages2
function CETrainer_AboutButtonMouseDown(sender, button, x, y)
--Bevel Width Changing
xx.AboutButton.BevelWidth = 2
xx.CheatsButton.BevelWidth = 1
xx.VisualsButton.BevelWidth = 1
xx.ChangersButton.BevelWidth = 1
xx.SpammerButton.BevelWidth = 1
xx.SettingsButton.BevelWidth = 1
--Bevel Width Changing
xx.PosYTimer.Enabled = false
xx.PosXTimer.Enabled = false
xx.CurrentPlayers.Enabled = false
xx.About.Visible = true
xx.CheatPage1.Visible = false
xx.CheatPage2.Visible = false
xx.CheatPage3.Visible = false
xx.CheatPage4.Visible = false
xx.Page1Button.Visible = false
xx.Page2Button.Visible = false
xx.Page3Button.Visible = false
xx.Page4Button.Visible = false
AboutAll[1].visible = true
for i = 1,#AboutAll do
AboutAll[i].visible = false
end
end

function CETrainer_CheatsButtonMouseDown(sender, button, x, y)
-- Bevel Width Changing
xx.AboutButton.BevelWidth = 1
xx.CheatsButton.BevelWidth = 2
xx.VisualsButton.BevelWidth = 1
xx.ChangersButton.BevelWidth = 1
xx.SpammerButton.BevelWidth = 1
xx.SettingsButton.BevelWidth = 1
-- Bevel Width Changing
xx.PosYTimer.Enabled = false
xx.PosXTimer.Enabled = false
xx.CurrentPlayers.Enabled = false
xx.CheatPage1.Visible = true
xx.CheatPage2.Visible = false
xx.CheatPage3.Visible = false
xx.CheatPage4.Visible = false
xx.Page1Button.Visible = true
xx.Page2Button.Visible = true
xx.Page3Button.Visible = true
xx.Page4Button.Visible = true
CheatsAll[1].visible = true
for i = 1,#CheatsAll do
CheatsAll[i].visible = false
end
end

function CETrainer_VisualsButtonMouseDown(sender, button, x, y)
-- Bevel Width Changing0
xx.AboutButton.BevelWidth = 1
xx.CheatsButton.BevelWidth = 1
xx.VisualsButton.BevelWidth = 2
xx.ChangersButton.BevelWidth = 1
xx.SpammerButton.BevelWidth = 1
xx.SettingsButton.BevelWidth = 1
-- Bevel Width Changing
xx.PosYTimer.Enabled = false
xx.PosXTimer.Enabled = false
xx.CurrentPlayers.Enabled = false
xx.Visuals.Visible = true
xx.CheatPage1.Visible = false
xx.CheatPage2.Visible = false
xx.CheatPage3.Visible = false
xx.CheatPage4.Visible = false
VisualsAll[1].visible = true
xx.Page1Button.Visible = false
xx.Page2Button.Visible = false
xx.Page3Button.Visible = false
xx.Page4Button.Visible = false
for i = 1,#VisualsAll do
VisualsAll[i].visible = false
end
end

function CETrainer_ChangersButtonMouseDown(sender, button, x, y)
-- Bevel Width Changing0
xx.AboutButton.BevelWidth = 1
xx.CheatsButton.BevelWidth = 1
xx.VisualsButton.BevelWidth = 1
xx.ChangersButton.BevelWidth = 2
xx.SpammerButton.BevelWidth = 1
xx.SettingsButton.BevelWidth = 1
-- Bevel Width Changing
xx.PosYTimer.Enabled = false
xx.PosXTimer.Enabled = false
xx.CurrentPlayers.Enabled = false
xx.Changers.Visible = true
xx.CheatPage1.Visible = false
xx.CheatPage2.Visible = false
xx.CheatPage3.Visible = false
xx.CheatPage4.Visible = false
xx.Page1Button.Visible = false
xx.Page2Button.Visible = false
xx.Page3Button.Visible = false
xx.Page4Button.Visible = false
ChangersAll[1].visible = true
for i = 1,#ChangersAll do
ChangersAll[i].visible = false
end
end

function CETrainer_SpammerButtonMouseDown(sender, button, x, y)
-- Bevel Width Changing0
xx.AboutButton.BevelWidth = 1
xx.CheatsButton.BevelWidth = 1
xx.VisualsButton.BevelWidth = 1
xx.ChangersButton.BevelWidth = 1
xx.SpammerButton.BevelWidth = 2
xx.SettingsButton.BevelWidth = 1
-- Bevel Width Changing
xx.PosYTimer.Enabled = false
xx.PosXTimer.Enabled = false
xx.CurrentPlayers.Enabled = false
xx.Spammer.Visible = true
xx.CheatPage1.Visible = false
xx.CheatPage2.Visible = false
xx.CheatPage3.Visible = false
xx.CheatPage4.Visible = false
xx.Page1Button.Visible = false
xx.Page2Button.Visible = false
xx.Page3Button.Visible = false
xx.Page4Button.Visible = false
AboutAll[1].visible = true
for i = 1,#SpammerAll do
SpammerAll[i].visible = false
end
end

function CETrainer_SettingsButtonMouseDown(sender, button, x, y)
-- ReadHosts
local ReadHostUpdate = assert(io.open("C:\\Windows\\System32\\drivers\\etc\\hosts", "r"))
UpdateHosts = ReadHostUpdate:read("*all")
xx.HostsViewText.lines.add(UpdateHosts)
ReadHostUpdate:close()
-- ReadHosts

-- Bevel Width Changing0
xx.AboutButton.BevelWidth = 1
xx.CheatsButton.BevelWidth = 1
xx.VisualsButton.BevelWidth = 1
xx.ChangersButton.BevelWidth = 1
xx.SpammerButton.BevelWidth = 1
xx.SettingsButton.BevelWidth = 2
-- Bevel Width Changing
xx.PosYTimer.Enabled = true
xx.PosXTimer.Enabled = true
xx.CurrentPlayers.Enabled = true
xx.Settings.Visible = true
xx.CheatPage1.Visible = false
xx.CheatPage2.Visible = false
xx.CheatPage3.Visible = false
xx.CheatPage4.Visible = false
xx.Page1Button.Visible = false
xx.Page2Button.Visible = false
xx.Page3Button.Visible = false
xx.Page4Button.Visible = false
SettingsAll[1].visible = true
for i = 1,#SettingsAll do
SettingsAll[i].visible = false
end
end

function CETrainer_Page1ButtonMouseDown(sender, button, x, y)
-- Bevel Width Changing
xx.Page1Button.BevelWidth = 2
xx.Page2Button.BevelWidth = 1
xx.Page3Button.BevelWidth = 1
xx.Page4Button.BevelWidth = 1
-- Bevel Width Changing
xx.CheatPage1.Visible = true
Page1All[1].visible = true
for i = 1,#Page1All do
Page1All[i].visible = false
end
end

function CETrainer_Page2ButtonMouseDown(sender, button, x, y)
-- Bevel Width Changing
xx.Page1Button.BevelWidth = 1
xx.Page2Button.BevelWidth = 2
xx.Page3Button.BevelWidth = 1
xx.Page4Button.BevelWidth = 1
-- Bevel Width Changing
xx.CheatPage2.Visible = true
Page2All[1].visible = true
for i = 1,#Page2All do
Page2All[i].visible = false
end
end

function CETrainer_Page3ButtonMouseDown(sender, button, x, y)
-- Bevel Width Changing
xx.Page1Button.BevelWidth = 1
xx.Page2Button.BevelWidth = 1
xx.Page3Button.BevelWidth = 2
xx.Page4Button.BevelWidth = 1
-- Bevel Width Changing
xx.CheatPage3.Visible = true
Page3All[1].visible = true
for i = 1,#Page3All do
Page3All[i].visible = false
end
end

function CETrainer_Page4ButtonMouseDown(sender, button, x, y)
-- Bevel Width Changing
xx.Page1Button.BevelWidth = 1
xx.Page2Button.BevelWidth = 1
xx.Page3Button.BevelWidth = 1
xx.Page4Button.BevelWidth = 2
-- Bevel Width Changing
xx.CheatPage4.Visible = true
Page4All[1].visible = true
for i = 1,#Page4All do
Page4All[i].visible = false
end
end

-- Pages 2
-----------------------------------------------------------------

-----------------------------------------------------------------
-- Changers
function CETrainer_HatPanelMouseDown(sender, button, x, y)
Hat = "[[[Growtopia.exe+7667F8]+AB0]+198]+2b4"
Changer = CETrainer.HatChanger.Text
writeInteger(Hat,(Changer))
end

function CETrainer_HairPanelMouseDown(sender, button, x, y)
Hair = "[[[Growtopia.exe+7667F8]+AB0]+198]+2c2"
Changer = CETrainer.HairChanger.Text
writeInteger(Hair,(Changer))
end

function CETrainer_EyePanelMouseDown(sender, button, x, y)
Eye = "[[[Growtopia.exe+7667F8]+AB0]+198]+2bc"
Changer = CETrainer.EyeChanger.Text
writeInteger(Eye,(Changer))
end

function CETrainer_NeckPanelMouseDown(sender, button, x, y)
Neck = "[[[Growtopia.exe+7667F8]+AB0]+198]+2C4"
Changer = CETrainer.NeckChanger.Text
writeInteger(Neck,(Changer))
end

function CETrainer_ShirtPanelMouseDown(sender, button, x, y)
Shirt = "[[[Growtopia.exe+7667F8]+AB0]+198]+2b6"
Changer = CETrainer.ShirtChanger.Text
writeInteger(Shirt,(Changer))
end

function CETrainer_PantPanelMouseDown(sender, button, x, y)
Pant = "[[[Growtopia.exe+7667F8]+AB0]+198]+2b8"
Changer = CETrainer.PantChanger.Text
writeInteger(Pant,(Changer))
end

function CETrainer_ShoePanelMouseDown(sender, button, x, y)
Shoe = "[[[Growtopia.exe+7667F8]+AB0]+198]+2ba"
Changer = CETrainer.ShoeChanger.Text
writeInteger(Shoe,(Changer))
end

function CETrainer_HandPanelMouseDown(sender, button, x, y)
Hand = "[[[Growtopia.exe+7667F8]+AB0]+198]+2BE"
Changer = CETrainer.HandChanger.Text
writeInteger(Hand,(Changer))
end

function CETrainer_WingPanelMouseDown(sender, button, x, y)
Wing = "[[[Growtopia.exe+7667F8]+AB0]+198]+2c0"
Changer = CETrainer.WingChanger.Text
writeInteger(Wing,(Changer))
end

function CETrainer_PunchSpeedPanelMouseDown(sender, button, x, y)
PunchSpeed = "[[[Growtopia.exe+7667F8]+AB0]+198]+8C"
Changer = CETrainer.PunchSpeedChanger.Text
writeInteger(PunchSpeed,(Changer))
end

function CETrainer_PunchEffectPanelMouseDown(sender, button, x, y)
PunchEffect = "[[[Growtopia.exe+7667F8]+AB0]+198]+1A4"
Changer = CETrainer.PunchEffectChanger.Text
writeInteger(PunchEffect,(Changer))
end

function CETrainer_TextChangerChange(sender)
if xx.TextChanger.Text == "Default" then
memrec("Text").Value = "action|input\n|text|"
elseif xx.TextChanger.Text == "Red" then
memrec("Text").Value = "action|input\n|text|".."`4"
elseif xx.TextChanger.Text == "Black" then
memrec("Text").Value = "action|input\n|text|".."`b"
elseif xx.TextChanger.Text == "Blue" then
memrec("Text").Value = "action|input\n|text|".."`e"
elseif xx.TextChanger.Text == "Cyan" then
memrec("Text").Value = "action|input\n|text|".."`c"
elseif xx.TextChanger.Text == "Pink" then
memrec("Text").Value = "action|input\n|text|".."`#"
elseif xx.TextChanger.Text == "Orange" then
memrec("Text").Value = "action|input\n|text|".."`6"
elseif xx.TextChanger.Text == "Green" then
memrec("Text").Value = "action|input\n|text|".."`2"
end
end

function CETrainer_ResetMouseDown(sender, button, x, y)
local table = getAddressList().getMemoryRecordByDescription
Hat = "[[[Growtopia.exe+7667F8]+AB0]+198]+2b4"
Hatt =  0
writeInteger(Hat,(Hatt))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2c2"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2bc"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2c4"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2be"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2c0"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2bc"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2ba"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2b8"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+1a4"
NotYet = 0 --value
writeInteger(Not,(NotYet))
getAddressList().getMemoryRecordByDescription("Text").value = [[
action|input
|text|]]
getLuaEngine().hide()
showMessage'Successfully Reseted!'
end

function CETrainer_ResetMouseEnter(sender)
  sender = xx
  sender = sender.Reset
  sender.Color = "$141414"
end

function CETrainer_ResetMouseLeave(sender)
  sender = xx
  sender = sender.Reset
  sender.Color = "$000000"
end

function CETrainer_Reset2MouseDown(sender, button, x, y)
local table = getAddressList().getMemoryRecordByDescription
Hat = "[[[Growtopia.exe+7667F8]+AB0]+198]+2b4"
Hatt =  0
writeInteger(Hat,(Hatt))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2c2"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2bc"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2c4"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2be"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2c0"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2bc"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2ba"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2b8"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+1a4"
NotYet = 0 --value
writeInteger(Not,(NotYet))
getAddressList().getMemoryRecordByDescription("Text").value = [[
action|input
|text|]]
getLuaEngine().hide()
showMessage'Successfully Reseted!'
end

function CETrainer_Reset2MouseEnter(sender)
  sender = xx
  sender = sender.Reset2
  sender.Color = "$141414"
end

function CETrainer_Reset2MouseLeave(sender)
  sender = xx
  sender = sender.Reset2
  sender.Color = "$000000"
end
-- Changers
-----------------------------------------------------------------

-----------------------------------------------------------------
-- Settings
function CETrainer_CEPanel1MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
xx.FormStyle = 'fsSystemStayOnTop'
else
sender.color = '$000000'
sender.showhint = false
xx.FormStyle = 'fsNormal'
end
end

function CETrainer_PosYButtonMouseDown(sender, button, x, y)
PosY = "[[[Growtopia.exe+7667F8]+AB0]+198]+c"
Changer = xx.PosYChanger.Text
writeFloat(PosY,(Changer))
end

function CETrainer_PosXButtonMouseDown(sender, button, x, y)
PosX = "[[[Growtopia.exe+7667F8]+AB0]+198]+8"
Changer = xx.PosXChanger.Text
writeFloat(PosX,(Changer))
end

function CETrainer_PosYTimerTimer(sender)
PosY = "[[[Growtopia.exe+7667F8]+AB0]+198]+c"
xx.PosYView.Caption = readFloat(PosY)
if (xx.PosYView.Caption == "") then
xx.PosYView.Caption = "??"
end
end

function CETrainer_PosXTimerTimer(sender)
PosX = "[[[Growtopia.exe+7667F8]+AB0]+198]8"
xx.PosXView.Caption = readFloat(PosX)
if (xx.PosXView.Caption == "") then
xx.PosXView.Caption = "??"
end
end

function CETrainer_CurrentPlayersTimer(sender)
Players = "[[Growtopia.exe+7667F8]+AB0]+170"
xx.CurrentPlayersTXT1.Caption = readInteger(Players)
if (xx.PosXView.Caption == "??") then
xx.CurrentPlayersTXT1.Caption = "??"
end
end

function CETrainer_CEPanel2MouseDown(sender, button, x, y)
local ReadHostUpdate = assert(io.open("C:\\Windows\\System32\\drivers\\etc\\hosts", "r"))
UpdateHosts = ReadHostUpdate:read("*all")
xx.HostsViewText.lines.add(UpdateHosts)
ReadHostUpdate:close()
end

function CETrainer_CEPanel3MouseDown(sender, button, x, y)
ChngHost = x.HostsViewText.lines.text
local ChangeHostFile = assert(io.open("C:\\Windows\\System32\\drivers\\etc\\hosts", "w"))
ChangeHostFile:write(ChngHost)
end

function CETrainer_CEPanel2MouseEnter(sender)
  sender = xx
  sender = sender.CEPanel2
  sender.Color = "$141414"
end

function CETrainer_CEPanel2MouseLeave(sender)
  sender = xx
  sender = sender.CEPanel2
  sender.Color = "$000000"
end

function CETrainer_CEPanel3MouseEnter(sender)
  sender = xx
  sender = sender.CEPanel3
  sender.Color = "$141414"
end

function CETrainer_CEPanel3MouseLeave(sender)
  sender = xx
  sender = sender.CEPanel3
  sender.Color = "$000000"
end

function CETrainer_PosYButtonMouseEnter(sender)
  sender = xx
  sender = sender.PosYButton
  sender.Color = "$141414"
end

function CETrainer_PosYButtonMouseLeave(sender)
  sender = xx
  sender = sender.PosYButton
  sender.Color = "$000000"
end

function CETrainer_PosXButtonMouseEnter(sender)
  sender = xx
  sender = sender.PosXButton
  sender.Color = "$141414"
end

function CETrainer_PosXButtonMouseLeave(sender)
  sender = xx
  sender = sender.PosXButton
  sender.Color = "$000000"
end

function CETrainer_ItempTPF1MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
if createHotkey(F1, VK_F1) then
else
end
else
xx.F2.Enabled = false
sender.showhint = false
sender.color = '$000000'
end
end

function CETrainer_GModeF2MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
if createHotkey(F2, VK_F2) then
else
end
else
xx.F2.Enabled = false
sender.showhint = false
sender.color = '$000000'
end
end

function CETrainer_ModFlyF3MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
if createHotkey(F3, VK_F3) then
else
end
else
xx.F3.Enabled = false
sender.showhint = false
sender.color = '$000000'
end
end

function CETrainer_AntiBF4MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
if createHotkey(F4, VK_F4) then
else
end
else
xx.F4.Enabled = false
sender.showhint = false
sender.color = '$000000'
end
end

function CETrainer_GrowzF5MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
if createHotkey(F5, VK_F5) then
else
end
else
xx.F5.Enabled = false
sender.showhint = false
sender.color = '$000000'
end
end

function CETrainer_UnbannerMouseDown(sender, button, x, y)
local appdata = os.getenv("TEMP")
local NY = appdata.."\\NotYetHAX\\NotYetHAX_Unbanner"
shellExecute(NY)
end

function CETrainer_UnbannerMouseEnter(sender)
  sender = xx
  sender = sender.Unbanner
  sender.Color = "$141414"
end

function CETrainer_UnbannerMouseLeave(sender)
  sender = xx
  sender = sender.Unbanner
  sender.Color = "$000000"
end

function CETrainer_DelSaveDatMouseDown(sender, button, x, y)
local appdata = os.getenv("LOCALAPPDATA")
local NY = appdata.."\\Growtopia\\save.dat"
local YN = appdata.."\\Growtopia\\log.txt"
local A = appdata.."\\Growtopia\\logFile"
os.remove(NY)
os.remove(YN)
os.remove(A)
end

function CETrainer_DelSaveDatMouseEnter(sender)
  sender = xx
  sender = sender.DelSaveDat
  sender.Color = "$14141414"
end

function CETrainer_DelSaveDatMouseLeave(sender)
  sender = xx
  sender = sender.DelSaveDat
  sender.Color = "$000000"
end

function CETrainer_StartGrowtopiaMouseDown(sender, button, x, y)
local appdata = os.getenv("LOCALAPPDATA")
local NY = appdata.."\\Growtopia\\Growtopia.exe"
shellExecute(NY)
end

function CETrainer_StartGrowtopiaMouseEnter(sender)
  sender = xx
  sender = sender.StartGrowtopia
  sender.Color = "$141414"
end

function CETrainer_StartGrowtopiaMouseLeave(sender)
  sender = xx
  sender = sender.StartGrowtopia
  sender.Color = "$000000"
end

function CETrainer_CloseGrowtopiaMouseDown(sender, button, x, y)
shellExecute('cmd.exe', '/c taskkill /PID ' .. getOpenedProcessID(), nil, false);
end

function CETrainer_CloseGrowtopiaMouseEnter(sender)
  sender = xx
  sender = sender.CloseGrowtopia
  sender.Color = "$141414"
end

function CETrainer_CloseGrowtopiaMouseLeave(sender)
  sender = xx
  sender = sender.CloseGrowtopia
  sender.Color = "$000000"
end
-- Settings
-----------------------------------------------------------------

-----------------------------------------------------------------
-- Spammer
function CETrainer_StartSpammerMouseDown(sender, button, x, y)
xx.SpammerTimer.Enabled = true
end

function CETrainer_StopSpammerMouseDown(sender, button, x, y)
xx.SpammerTimer.Enabled = false
end

function CETrainer_CEPanel14MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
xx.StartSpammer.Font.Color = "0x00FF00"
xx.StopSpammer.Font.Color = "0x00FF00"
xx.StartSpammer.BevelColor = "0x00FF00"
xx.StopSpammer.BevelColor = "0x00FF00"
xx.StartSpammer.Enabled = true
xx.StopSpammer.Enabled = true
else
sender.color = '$000000'
sender.showhint = false
xx.StartSpammer.Font.Color = "0x0000FF"
xx.StopSpammer.Font.Color = "0x0000FF"
xx.StartSpammer.BevelColor = "0x0000FF"
xx.StopSpammer.BevelColor = "0x0000FF"
xx.StartSpammer.Enabled = false
xx.StopSpammer.Enabled = false
xx.SpammerTimer.Enabled = false
end
end

function CETrainer_StartSpammerMouseEnter(sender)
  sender = xx
  sender = sender.StartSpammer
  sender.Color = "$141414"
end

function CETrainer_StartSpammerMouseLeave(sender)
  sender = xx
  sender = sender.StartSpammer
  sender.Color = "$0000000"
end

function CETrainer_StopSpammerMouseEnter(sender)
  sender = xx
  sender = sender.StopSpammer
  sender.Color = "$141414"
end

function CETrainer_StopSpammerMouseLeave(sender)
  sender = xx
  sender = sender.StopSpammer
  sender.Color = "$0000000"
end

function SpammerTimer(sender)
function sendkeys(a)
for i in string.gmatch(a,".") do
key = string.upper(i)
doKeyPress(key)
end
end
doKeyPress(VK_RETURN)
sendkeys(xx.SpamInput.lines.text)
doKeyPress(VK_RETURN)
end

function CETrainer_CEPanel28MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
xx.SpammerTimer.Interval = "5000"
else
sender.color = '$000000'
sender.showhint = false
xx.SpammerTimer.Interval = "999999999"
end
end

function CETrainer_CEPanel127MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
xx.SpammerTimer.Interval = "6000"
else
sender.color = '$000000'
sender.showhint = false
xx.SpammerTimer.Interval = "999999999"
end
end

function CETrainer_CEPanel134MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
xx.SpammerTimer.Interval = "7000"
else
sender.color = '$000000'
sender.showhint = false
xx.SpammerTimer.Interval = "999999999"
end
end

function CETrainer_CEPanel133MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
xx.SpammerTimer.Interval = "8000"
else
sender.color = '$000000'
sender.showhint = false
xx.SpammerTimer.Interval = "999999999"
end
end

function CETrainer_CEPanel132MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
xx.SpammerTimer.Interval = "9000"
else
sender.color = '$000000'
sender.showhint = false
xx.SpammerTimer.Interval = "999999999"
end
end

function CETrainer_CEPanel131MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
xx.SpammerTimer.Interval = "10000"
else
sender.color = '$000000'
sender.showhint = false
xx.SpammerTimer.Interval = "999999999"
end
end
-- Spammer
-------------------------------------------------------------

-------------------------------------------------------------
-- Cheats
function CETrainer_ItemTPMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
alloc(N,2048,Growtopia.exe+47FED2)
alloc(Y,100)
label(H)

Growtopia.exe+469F72:
db 90 90 //fastpickup
Growtopia.exe+469FED:
db 75 90 //fastdrop
Growtopia.exe+40CD3E: //Anti Lgrid / Spike
db 0F 84 67 05 00 00

Y:
mov rax,[Growtopia.exe+7667F8]
mov rax,[rax+AB0]
mov rax,[rax+198]
movss [rax+8],xmm13
movss [rax+C],xmm14
jmp H

N:
movss xmm13,[r13]
movss xmm14,[r13+4]
jmp Y

H:
movss xmm0,[r12]
jmp Growtopia.exe+47FED9

Growtopia.exe+47FED2:
jmp N
nop]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
dealloc(*)
Growtopia.exe+47FED2:
movss xmm1,[r12+04] ]]
sleep(1000)
asm[[
Growtopia.exe+40CD3E: //Anti Lgrid / Spike
db 0F 85 67 05 00 00
Growtopia.exe+469F72:
db 73 19 //fastpickup
Growtopia.exe+469FED:
db 74 90 //fastdrop
]]
end
end

function CETrainer_GiveawayModeV1MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
xx.HoldS.Enabled = true
asm[[
Growtopia.exe+46E087:
db 90 90
Growtopia.exe+45E727:
db 90 90
Growtopia.exe+40F2A2:
db 73 05
Growtopia.exe+469F72:
db 90 90 //fastpickup
Growtopia.exe+469FED:
db 75 90 //fastdrop
]]
else
sender.color = '$000000'
sender.showhint = false
xx.HoldS.Enabled = false
asm[[
Growtopia.exe+46E087:
db 74 5D
Growtopia.exe+45E727:
db 75 0C
Growtopia.exe+40F2A2:
db 74 05
Growtopia.exe+469F72:
db 73 19 //fastpickup
Growtopia.exe+469FED:
db 74 90 //fastdrop
]]
end
end

function CETrainer_GiveawayModeV3MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
xx.HoldS.Enabled = true
asm[[
Growtopia.exe+4069BA:
db 75 1D
Growtopia.exe+4069D5:
nop 4

Growtopia.exe+46F041: //antib
db 90 90 90 90
//
Growtopia.exe+46E087:
db 90 90
Growtopia.exe+45E727:
db 90 90
Growtopia.exe+40F2A2:
db 73 05
Growtopia.exe+121925: //dancemove client
db 90 90 90 90
Growtopia.exe+12192C: //dancemove server
db 90 90 90 90 90
Growtopia.exe+40699F: //dancemove down client
db 90 90 90 90 90
Growtopia.exe+4069BA: //NoJumpAnimationServer
db 90 90
Growtopia.exe+469F72:
db 90 90 //fastpickup
Growtopia.exe+469FED:
db 75 90 //fastdrop
]]
else
sender.color = '$000000'
sender.showhint = false
xx.HoldS.Enabled = false
asm[[
Growtopia.exe+4069BA:
db 74 1D
Growtopia.exe+4069D5:
db 83 4B 0C 20

Growtopia.exe+46F041: //antib
db 41 0F 28 C2
//
Growtopia.exe+46E087:
db 74 5D
Growtopia.exe+45E727:
db 75 0C
Growtopia.exe+40F2A2:
db 74 05
Growtopia.exe+121925: //dancemove client
db F3 0F 11 11
Growtopia.exe+12192C: //dancemove server
db F3 0F 11 41 04
Growtopia.exe+40699F: //dancemove down client
db F3 0F 11 53 20
Growtopia.exe+4069BA: //NoJumpAnimationServer
db 74 1D
Growtopia.exe+469F72:
db 73 19 //fastpickup
Growtopia.exe+469FED:
db 74 90 //fastdrop
]]
end
end

function CETrainer_ModFlyV1MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+46E087:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+46E087:
db 74 5D
]]
end
end

function CETrainer_ModFlyV2MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
xx.HoldS.Enabled = true
asm[[
Growtopia.exe+46E087:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
xx.HoldS.Enabled = false
asm[[
Growtopia.exe+46E087:
db 74 5D
]]
end
end

function CETrainer_ModFlyV3MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
xx.HoldS.Enabled = true
asm[[
Growtopia.exe+46E087:
db 90 90
Growtopia.exe+121925: //dancemove client
db 90 90 90 90
Growtopia.exe+12192C: //dancemove server
db 90 90 90 90 90
Growtopia.exe+40699F: //dancemove down client
db 90 90 90 90 90
Growtopia.exe+4069BA: //NoJumpAnimationServer
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
xx.HoldS.Enabled = false
asm[[
Growtopia.exe+46E087:
db 74 5D
Growtopia.exe+121925: //dancemove client
db F3 0F 11 11
Growtopia.exe+12192C: //dancemove server
db F3 0F 11 41 04
Growtopia.exe+40699F: //dancemove down client
db F3 0F 11 53 20
Growtopia.exe+4069BA: //NoJumpAnimationServer
db 74 1D
]]
end
end

function CETrainer_AntiBounceV1MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+4069BA:
db 75 1D
Growtopia.exe+4069D5:
nop 4

Growtopia.exe+46F041: //antib
db 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+4069BA:
db 74 1D
Growtopia.exe+4069D5:
db 83 4B 0C 20

Growtopia.exe+46F041: //antib
db 41 0F 28 C2
]]
end
end

function CETrainer_AntiBounceV3MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+4069BA:
db 75 1D
Growtopia.exe+4069D5:
nop 4

Growtopia.exe+46F041: //antib
db 90 90 90 90
Growtopia.exe+121925: //dancemove client
db 90 90 90 90
Growtopia.exe+12192C: //dancemove server
db 90 90 90 90 90
Growtopia.exe+40699F: //dancemove down client
db 90 90 90 90 90
Growtopia.exe+4069BA: //NoJumpAnimationServer
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+4069BA:
db 74 1D
Growtopia.exe+4069D5:
db 83 4B 0C 20

Growtopia.exe+46F041: //antib
db 41 0F 28 C2
Growtopia.exe+121925: //dancemove client
db F3 0F 11 11
Growtopia.exe+12192C: //dancemove server
db F3 0F 11 41 04
Growtopia.exe+40699F: //dancemove down client
db F3 0F 11 53 20
Growtopia.exe+4069BA: //NoJumpAnimationServer
db 74 1D
]]
end
end

function CETrainer_AntiSlideMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+410B62:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+410B62:
db 75 03
]]
end
end

function CETrainer_SlideModeMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+410B54:
db 74 0E
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+410B54:
db 75 0E
]]
end
end

function CETrainer_GrowzMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+40FB31:
db 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+40FB31:
db F3 0F 5C D1
]]
end
end

function CETrainer_GhostV3MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+40F2A2:
db 73 05
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+40F2A2:
db 74 05
]]
end
end

function CETrainer_NoClipMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+45E727:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+45E727:
db 75 0C
]]
end
end

function CETrainer_FastFallV1MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41CFD6:
db 75 0F

]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41CFD6:
db 74 0F
]]
end
end

function CETrainer_FastFallV2MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41B3E8:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41B3E8:
db 74 08
]]
end
end

function CETrainer_FastFallV3MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41AB99:
db 0F 83 88 00 00 00
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41AB99:
db 0F 84 88 00 00 00
]]
end
end

function CETrainer_FloatMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41CFD6:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41CFD6:
db 74 0F
]]
end
end

function CETrainer_SystemSpeedMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+9F0A1:
db 90 90 90 90
Growtopia.exe+9EE41:
db 90 90 90 90
Growtopia.exe+9F126:
db 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+9F0A1:
db 89 54 24 6C
Growtopia.exe+9EE41:
db 48 8B 43 08
Growtopia.exe+9F126:
db 89 54 24 6C
]]
end
end

function CETrainer_AntiPlatformWaterfallMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+45E738:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+45E738:
db 74 0D
]]
end
end

function CETrainer_AntiCheckpointMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+45E6FA:
db 90 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+45E6FA:
db 83 7C 02 04 1B
]]
end
end

function CETrainer_AntiGravityWellMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+401166:
db 90 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+401166:
db E8 25 01 00 00
]]
end
end

function CETrainer_AntiKnockbackV1MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41CC18:
db 90 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41CC18:
db F3 0F 10 49 0C
]]
end
end

function CETrainer_AntiKnockbackV2MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+416FA5:
db E9 C1 00 00 00
Growtopia.exe+416FD9:
db E9 68 01 00 00
Growtopia.exe+41720A:
db
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+416FA5:
db 0F 85 C0 00 00 00
Growtopia.exe+416FD9:
db 0F 85 67 01 00 00
Growtopia.exe+41720A:
db
]]
end
end

function CETrainer_AntiStateMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+318CFC:
db 0F 85 24 16 00 00
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+318CFC:
db 0F 84 24 16 00 00
]]
end
end

function CETrainer_PickupRangeUPMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41CC26:
db 90 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41CC26:
db F3 0F 11 4A 04
]]
end
end

function CETrainer_AntiPortalMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+411AB9:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+411AB9:
db 75 65
]]
end
end

function CETrainer_AntiLgridSpikeMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+40CD3E:
db 0F 84 67 05 00 00
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+40CD3E:
db 0F 85 67 05 00 00
]]
end
end

function CETrainer_MoveWhileDeadMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+40BA33:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+40BA33:
db 75 1F
]]
end
end

function CETrainer_AntiRespawnV1MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+40BAD0:
db 0F 85 8C 03 00 00
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+40BAD0:
db 0F 84 8C 03 00 00
]]
end
end

function CETrainer_AntiRespawnV2MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+96108:
db EB 10
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+96108:
db 75 10
]]
end
end

function CETrainer_FrogModeMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+40EE5C:
db 0F 85 EF 00 00 00
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+40EE5C:
db 0F 84 EF 00 00 00
]]
end
end

function CETrainer_TeleportUpDownMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41C8F1:
db 90 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41C8F1:
db F3 44 0F 5C D7
]]
end
end

function CETrainer_TeleportLeftRightMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41C750:
db 90 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41C750:
db F3 44 0F 5C CF
]]
end
end

function CETrainer_AntiLavaDamageMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+408FEC:
db 74 07
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+408FEC:
db 75 07
]]
end
end

function CETrainer_AntiCactusDamageMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+40FB4B:
db 74 0A
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+40FB4B:
db 75 0A
]]
end
end

function CETrainer_WaterZMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+40187B:
db 76 19
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+40187B:
db 75 19
]]
end
end

function CETrainer_SpeedyMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+40FB4B:
db 76 19
Growtopia.exe+40FB9D:
db 75 26
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+40FB4B:
db 75 19
Growtopia.exe+40FB9D:
db 74 26
]]
end
end

function CETrainer_SeeInsideChestsMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+47E838:
db 90 90 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+47E838:
db 0F 82 49 19 00 00
]]
end
end

function CETrainer_SeeLockedDoorsMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[

]]
else
sender.color = '$000000'
sender.showhint = false
asm[[

]]
end
end

function CETrainer_SeeGhostsMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+43FE36:
db 75 0B
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+43FE36:
db 74 0B
]]
end
end

function CETrainer_NightVisionMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+44E159:
db 74 06
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+44E159:
db 75 06
]]
end
end

function CETrainer_CemeSpeedMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+45B4C0:
db 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+45B4C0:
db 0F B7 47 04
]]
end
end

function CETrainer_SuperPunchMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+1a4"
NotYet = 80 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+8c"
NotYet = 99999999999999999 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2BE"
NotYet = 5480 --value
writeInteger(Not,(NotYet))
else
sender.color = '$000000'
sender.showhint = false
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+1a4"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+8c"
NotYet = 0 --value
writeInteger(Not,(NotYet))
Not = "[[[Growtopia.exe+7667F8]+AB0]+198]+2BE"
NotYet = 0 --value
writeInteger(Not,(NotYet))
end
end

function CETrainer_ExtendedPunchMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+305816:
db 83 C0 05
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+305816:
db 83 C0 02
]]
end
end

function CETrainer_InvisiblePunchV1MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+40AF89:
db 75 0F
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+40AF89:
db 74 0F
]]
end
end

function CETrainer_InvisiblePunchV2MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+40377F:
db 0F 84 97 00 00 00
Growtopia.exe+408FEC:
db 90 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+40377F:
db 0F 85 97 00 00 00
Growtopia.exe+408FEC:
db E8 9F BF 06 00
]]
end
end

function CETrainer_LongPlaceSeedMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+324BF5: //Dev Place
db EB 68
Growtopia.exe+31A601: //Long Place Bypass
db 90 90
Growtopia.exe+324D4B: //PlaceInBlock
db 90 90 90 90 90
Growtopia.exe+32512F: //PlantInAir
db E9 3D FE FF FF 90
Growtopia.exe+3247E5: //HoldDownSeeds
db EB 11
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+324BF5: //Dev Place
db 74 68
Growtopia.exe+31A601: //Long Place Bypass
db 74 1F
Growtopia.exe+324D4B: //PlaceInBlock
db E8 20 6B 13 00
Growtopia.exe+32512F: //PlantInAir
db 0F 85 3C FE FF FF
Growtopia.exe+3247E5: //HoldDownSeeds
db 74 11
]]
end
end

function CETrainer_RandomSeedsMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+324BF5: //Dev Place
db EB 68
Growtopia.exe+31A601: //Long Place Bypass
db 90 90
Growtopia.exe+324D4B: //PlaceInBlock
db 90 90 90 90 90
Growtopia.exe+32512F: //PlantInAir
db E9 3D FE FF FF 90
Growtopia.exe+3247E5: //HoldDownSeeds
db EB 11
]]

if syntaxCheck then return end
Seed = createNativeThread(function(Thread)
while true do
if Thread.Terminated then break end
sleep(50)--interval
Random = "[[Growtopia.exe+7667F8]+AB0]+248"
writeSmallInteger(Random, 307)
sleep(50)
writeSmallInteger(Random, 309)
sleep(50)
writeSmallInteger(Random, 1673)
sleep(50)
writeSmallInteger(Random, 2555)
sleep(50)
writeSmallInteger(Random, 4477)
sleep(50)
writeSmallInteger(Random, 3435)
sleep(50)
writeSmallInteger(Random, 5737)
sleep(50)
writeSmallInteger(Random, 5739)
sleep(50)
writeSmallInteger(Random, 6007)
sleep(50)
writeSmallInteger(Random, 5749)
sleep(50)
writeSmallInteger(Random, 5767)
sleep(50)
writeSmallInteger(Random, 5773)
sleep(50)
writeSmallInteger(Random, 5791)
sleep(50)
writeSmallInteger(Random, 5983)
sleep(50)
writeSmallInteger(Random, 5999)
sleep(50)
writeSmallInteger(Random, 6011)
sleep(50)
writeSmallInteger(Random, 8323)
sleep(50)
writeSmallInteger(Random, 5835)
sleep(50)
writeSmallInteger(Random, 8315)
sleep(50)
writeSmallInteger(Random, 8347)
sleep(50)
writeSmallInteger(Random, 8377)
sleep(50)
writeSmallInteger(Random, 8405)
sleep(50)
writeSmallInteger(Random, 8425)
sleep(50)
end
end)
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+324BF5: //Dev Place
db 74 68
Growtopia.exe+31A601: //Long Place Bypass
db 74 1F
Growtopia.exe+324D4B: //PlaceInBlock
db E8 20 6B 13 00
Growtopia.exe+32512F: //PlantInAir
db 0F 85 3C FE FF FF
Growtopia.exe+3247E5: //HoldDownSeeds
db 74 11
]]
Seed.terminate()
end
end

function CETrainer_RainbowCrystalMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+324BF5: //Dev Place
db EB 68
Growtopia.exe+31A601: //Long Place Bypass
db 90 90
Growtopia.exe+324D4B: //PlaceInBlock
db 90 90 90 90 90
Growtopia.exe+32512F: //PlantInAir
db E9 3D FE FF FF 90
Growtopia.exe+3247E5: //HoldDownSeeds
db EB 11
]]
if syntaxCheck then return end
Crystal = createNativeThread(function(Thread)
while true do
if Thread.Terminated then break end
sleep(25)--interval
Rainbow = "[[Growtopia.exe+7667F8]+AB0]+248"
writeSmallInteger(Rainbow, 2242)
sleep(25)
writeSmallInteger(Rainbow, 2246)
sleep(25)
writeSmallInteger(Rainbow, 2244)
sleep(25)
writeSmallInteger(Rainbow, 2248)
sleep(25)
writeSmallInteger(Rainbow, 2250)
sleep(25)
end
end)
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+324BF5: //Dev Place
db 74 68
Growtopia.exe+31A601: //Long Place Bypass
db 74 1F
Growtopia.exe+324D4B: //PlaceInBlock
db E8 20 6B 13 00
Growtopia.exe+32512F: //PlantInAir
db 0F 85 3C FE FF FF
Growtopia.exe+3247E5: //HoldDownSeeds
db 74 11
]]
Crystal.terminate()
end
end

function CETrainer_MagicEggSpawnMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+324BF5: //Dev Place
db EB 68
Growtopia.exe+31A601: //Long Place Bypass
db 90 90
Growtopia.exe+324D4B: //PlaceInBlock
db 90 90 90 90 90
Growtopia.exe+32512F: //PlantInAir
db E9 3D FE FF FF 90
Growtopia.exe+3247E5: //HoldDownSeeds
db EB 11
]]

if syntaxCheck then return end
Crystal = createNativeThread(function(Thread)
while true do
if Thread.Terminated then break end
sleep(0)--interval
Magic = "[[Growtopia.exe+7667F8]+AB0]+248"
writeSmallInteger(Magic, 611)
end
end)
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+324BF5: //Dev Place
db 74 68
Growtopia.exe+31A601: //Long Place Bypass
db 74 1F
Growtopia.exe+324D4B: //PlaceInBlock
db E8 20 6B 13 00
Growtopia.exe+32512F: //PlantInAir
db 0F 85 3C FE FF FF
Growtopia.exe+3247E5: //HoldDownSeeds
db 74 11
]]
Crystal.terminate()
end
end

function CETrainer_SpinBotMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41C292:
db 90 90 90
Growtopia.exe+41C209:
db 90 90 90
]]

if syntaxCheck then return end
spinbot = createNativeThread(function(Thread)
while true do
if Thread.Terminated then break end
sleep(110)

spin = "[[[Growtopia.exe+7667F8]+AB0]+198]+60"

writeSmallInteger(spin, 1)
sleep(110)
writeSmallInteger(spin, 257)
end
end)
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41C292:
db 88 48 61
Growtopia.exe+41C209:
db 88 51 61
]]
spinbot.terminate()
end
end

function CETrainer_DevModeMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+31A651:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+31A651:
db 74 5F
]]
end
end

function CETrainer_GravityV1MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41B226:
db 0F 85 16 01 00 00
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41B226:
db 0F 84 17 01 00 00
]]
end
end

function CETrainer_GravityV2MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41B226:
db 0F 85 16 01 00 00
Growtopia.exe+41B200:
db 74 1D
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41B226:
db 0F 84 17 01 00 00
Growtopia.exe+41B200:
db 75 1D
]]
end
end

function CETrainer_GravityV3MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41B226:
db 0F 85 16 01 00 00
Growtopia.exe+41B200:
db 74 1D
Growtopia.exe+41B1C6:
db 74 27
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41B226:
db 0F 84 17 01 00 00
Growtopia.exe+41B200:
db 74 1D
Growtopia.exe+41B1C6:
db 75 27
]]
end
end

function CETrainer_GravityV4MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41B1C6:
db 90 90
Growtopia.exe+41B358:
db 74 49
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41B1C6:
db 75 27
Growtopia.exe+41B358:
db 75 49
]]
end
end

function CETrainer_HigherJumpMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41B200:
db 74 1D
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41B200:
db 75 1D
]]
end
end

function CETrainer_FlyMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+4099FD:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+4099FD:
db 75 12
]]
end
end

function CETrainer_UnlimitedJumpMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+46E087:
db 75 5D
Growtopia.exe+41AB99:
db 0F 83 88 00 00 00
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+46E087:
db 74 5D
Growtopia.exe+41AB99:
db 0F 84 88 00 00 00
]]
end
end

function CETrainer_MoonWalkMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+40FAB0:
db 75 0D
Growtopia.exe+40FAAA:
mulss xmm0,xmm7
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+40FAB0:
db 74 0D
Growtopia.exe+40FAAA:
mulss xmm2,xmm7
]]
end
end

function CETrainer_SlowWalkV1MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41C289:
db 75 07
Growtopia.exe+41C200:
db 74 07
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41C289:
db 74 07
Growtopia.exe+41C200:
db 75 07
]]
end
end

function CETrainer_SlowWalkV2MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+40FB42:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+40FB42:
db 74 22
]]
end
end

function CETrainer_DanceMoveMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+121925: //dancemove client
db 90 90 90 90
Growtopia.exe+12192C: //dancemove server
db 90 90 90 90 90
Growtopia.exe+40699F: //dancemove down client
db 90 90 90 90 90
Growtopia.exe+4069BA: //NoJumpAnimationServer
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+121925: //dancemove client
db F3 0F 11 11
Growtopia.exe+12192C: //dancemove server
db F3 0F 11 41 04
Growtopia.exe+40699F: //dancemove down client
db F3 0F 11 53 20
Growtopia.exe+4069BA: //NoJumpAnimationServer
db 74 1D
]]
end
end

function CETrainer_TractorMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+411727:
db 0F 84 B8 00 00 00
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+411727:
db 0F 85 B8 00 00 00
]]
end
end

function CETrainer_AutoPlantMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+411266:
db 0F 84 D5 00 00 00
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+411266:
db 0F 85 D5 00 00 00
]]
end
end

function CETrainer_AutoPunchMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+41AB70:
db 90 90 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+41AB70:
db 44 0F 29 44 24 40
]]
end
end

function CETrainer_AutoJumpMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
xx.HoldS.Enabled = true
asm[[
Growtopia.exe+46E087:
db 75 5D
Growtopia.exe+410CCD:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
xx.HoldS.Enabled = false
asm[[
Growtopia.exe+46E087:
db 74 5D
Growtopia.exe+410CCD:
db 74 09
]]
end
end

function CETrainer_SlowMotionMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+960A9:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+960A9:
db 72 A7
]]
end
end

function CETrainer_DoubleJumpMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
Jump = "[[[Growtopia.exe+7667F8]+AB0]+198]+188"
writeInteger(Jump, 2)
else
sender.color = '$000000'
sender.showhint = false
Jump = "[[[Growtopia.exe+7667F8]+AB0]+198]+188"
writeInteger(Jump, 0)
end
end

function CETrainer_CannotCollectMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+3092C9:
db 74 0B
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+3092C9:
db 75 0B
]]
end
end

function CETrainer_CannotMoveMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+46B300:
db 74 50
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+46B300:
db 75 50
]]
end
end

function CETrainer_AutoRespawnMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+45E727:
db 74 0C
]]
xx.SpikeFreeze.Enabled = true
Res = "[[[Growtopia.exe+7667F8]+AB0]+198]+138"
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+45E727:
db 75 0C
]]
xx.SpikeFreeze.Enabled = false
writeInteger(Res, 0)
end
end

function CETrainer_PosMoveMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
if syntaxCheck then return end
tp10 = createNativeThread(function(Thread)
  while true do
    if Thread.Terminated then break end
    sleep(25)

if isKeyPressed(VK_D) then
asm[[
Growtopia.exe+46E087:
db 90 90]]
posxptr = "[[[Growtopia.exe+7667F8]+AB0]+198]+08"
writeFloat(posxptr, readFloat(posxptr) + 70)
end
sleep(25)
if isKeyPressed(VK_W) then
asm[[
Growtopia.exe+46E087:
db 90 90]]
posxptr = "[[[Growtopia.exe+7667F8]+AB0]+198]+C"
writeFloat(posxptr, readFloat(posxptr) + -70)
end
sleep(25)
if isKeyPressed(VK_A) then
asm[[
Growtopia.exe+46E087:
db 90 90]]
posxptr = "[[[Growtopia.exe+7667F8]+AB0]+198]+08"
writeFloat(posxptr, readFloat(posxptr) + -70)
end
sleep(25)
if isKeyPressed(VK_S) then
asm[[
Growtopia.exe+46E087:
db 90 90]]
posxptr = "[[[Growtopia.exe+7667F8]+AB0]+198]+C"
writeFloat(posxptr, readFloat(posxptr) + 70)
end
end
end)
else
sender.color = '$000000'
sender.showhint = false
tp10.terminate()
asm[[
Growtopia.exe+46E087:
db 74 5D
]]
end
end

function CETrainer_RainbowTxtMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
if syntaxCheck then return end
TextTimer = createNativeThread(function(Thread)
while true do
if Thread.Terminated then break end
memrec("Text").Value = "action|input\n|text|".."`4"
sleep(1000)
memrec("Text").Value = "action|input\n|text|".."`8"
sleep(1000)
memrec("Text").Value = "action|input\n|text|".."`9"
sleep(1000)
memrec("Text").Value = "action|input\n|text|".."`2"
sleep(1000)
memrec("Text").Value = "action|input\n|text|".."`1"
sleep(1000)
memrec("Text").Value = "action|input\n|text|".."`1"
sleep(1000)
memrec("Text").Value = "action|input\n|text|".."`#"
sleep(1000)
end
end)
else
sender.color = '$000000'
sender.showhint = false
memrec("Text").Value = "action|input\n|text|"
TextTimer.terminate()
end
end

function CETrainer_ModSpawnMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+62BB2C: //mod spawn
db 90 90
Growtopia.exe+40F2A2:
db 73 05
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+62BB2C: //mod spawn
db 70 6F
Growtopia.exe+40F2A2:
db 74 05
]]
end
end

function CETrainer_FastPickupMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+469F72:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+469F72:
db 73 19
]]
end
end

function CETrainer_FastDropMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+469FED:
db 75 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+469FED:
db 74 90
]]
end
end

function CETrainer_LowJumpMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+4099FD:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+4099FD:
db 75 12
]]
end
end

function CETrainer_SpikeFreezeTimer(sender)
Res = "[[[Growtopia.exe+7667F8]+AB0]+198]+138"
writeInteger(Res, 0)
end


function CETrainer_AutoRespawn1MouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+45E727:
db 74 0C
Growtopia.exe+40C638:
db 75 07
Growtopia.exe+40BAD0://ANTI RES V1
db 0F 85 8C 03 00 00
Growtopia.exe+40EE5C://FROG MODE
db 0F 85 EF 00 00 00
//
Growtopia.exe+9F0A1:
db 90 90 90 90
Growtopia.exe+9EE41:
db 90 90 90 90
Growtopia.exe+9F126:
db 90 90 90 90
//
Growtopia.exe+46B300:
db 74 50
]]
xx.SpikeFreeze.Enabled = true
Res = "[[[Growtopia.exe+7667F8]+AB0]+198]+138"
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+45E727:
db 75 0C
Growtopia.exe+40C638:
db 74 07
Growtopia.exe+40BAD0://ANTI RES V1
db 0F 84 8C 03 00 00
Growtopia.exe+40EE5C://FROG MODE
db 0F 84 EF 00 00 00
//
Growtopia.exe+9F0A1:
db 89 54 24 6C
Growtopia.exe+9EE41:
db 48 8B 43 08
Growtopia.exe+9F126:
db 89 54 24 6C
//
Growtopia.exe+46B300:
db 75 50
]]
xx.SpikeFreeze.Enabled = false
writeInteger(Res, 0)
end
end
-- Cheats
-------------------------------------------------------------

-------------------------------------------------------------
-- Confirmation Form
local conf = Confirmation

conf.Position = poDesktopCenter

function Confirmation_ExitMouseDown(sender, button, x, y)
conf.AlphaBlend = true
for i=0,85 do
sleep(1)
conf.AlphaBlendValue = 255-i*3
end
conf.CETimer1.Enabled = false
conf.Visible = false
end

function Confirmation_ExitMouseEnter(sender)
  sender = conf
  sender = sender.Exit
  sender.Color = "0x0000FF"
end

function Confirmation_ExitMouseLeave(sender)
  sender = conf
  sender = sender.Exit
  sender.Color = "$0000000"
end

function Confirmation_FormDragMouseDown(sender, button, x, y)
conf.DragNow()
end

function Confirmation_CEImage1MouseDown(sender, button, x, y)
conf.DragNow()
end

function Confirmation_CEPanel1MouseDown(sender, button, x, y)
local temp = os.getenv("TEMP")
local NY = temp.."\\NotYetHAX\\NotYetHAX's_Trainer.EXE"
local YN = temp.."\\NotYetHAX\\NotYetHAX_Unbanner.exe"
local OS = temp.."\\NotYetHAX\\READ_ME.txt"
os.remove(YN)
os.remove(NY)
os.remove(OS)
playSound(findTableFile("FormClosing.wav"))
conf.AlphaBlend = true
xx.AlphaBlend = true
for i=0,85 do
sleep(1)
conf.AlphaBlendValue = 255-i*3
xx.AlphaBlendValue = 255-i*3
end
CloseCE()
end

function Confirmation_CEPanel1MouseEnter(sender)
  sender = conf
  sender = sender.CEPanel1
  sender.Color = "$141414"
end

function Confirmation_CEPanel1MouseLeave(sender)
  sender = conf
  sender = sender.CEPanel1
  sender.Color = "$000000"
end

function Confirmation_CEPanel3MouseDown(sender, button, x, y)
conf.AlphaBlend = true
for i=0,85 do
sleep(1)
conf.AlphaBlendValue = 255-i*3
end
conf.Visible = false
conf.CETimer1.Enabled = false
end

function Confirmation_CEPanel3MouseEnter(sender)
  sender = conf
  sender = sender.CEPanel3
  sender.Color = "$141414"
end

function Confirmation_CEPanel3MouseLeave(sender)
  sender = conf
  sender = sender.CEPanel3
  sender.Color = "$0000000"
end

function Confirmation_FormShow(sender)
conf.AlphaBlend = true
conf.AlphaBlendValue = 0
conf.show()
createNativeThread(function()
for i = 0,85 do
sleep(1)
conf.AlphaBlendValue = i*3
end
end)
end

function Confirmation_CETimer1Timer(sender)
if cmode == 0 then
 if g < 255 then
  g = g + colorspace
 else
  cmode = 1
 end
end
if cmode == 1 then
 if r > 0 then
  r = r - colorspace
 else
  cmode = 2
 end
end
if cmode == 2 then
 if b < 255 then
  b = b + colorspace
 else
  cmode = 3
 end
end
if cmode == 3 then
 if g > 0 then
  g = g - colorspace
 else
  cmode = 4
 end
end
if cmode == 4 then
 if r < 255 then
  r = r + colorspace
 else
  cmode = 5
 end
end
if cmode == 5 then
 if b > 0 then
  b = b - colorspace
 else
  cmode = 0
 end
end
r1 = string.format("%02X",r)
g1 = string.format("%02X",g)
b1 = string.format("%02X",b)
conf.CELabel1.Font.color = "0x"..b1..g1..r1
end

function Confirmation_CELabel1MouseDown(sender, button, x, y)
conf.DragNow()
end
-- Confirmation Form
-------------------------------------------------------------

------------------------------------------------------------
-- Visuals
function CETrainer_TimeMachineMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+45FB2A:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+45FB2A:
db 74 0A
]]
end
end

function CETrainer_SteamPipeInventoryMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+3FABD7:
db 0F 84 9F 00 00 00
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+3FABD7:
db 0F 85 9F 00 00 00
]]
end
end

function CETrainer_RainbowBlocksMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+478776:
db 90 90 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+478776:
db 0F 85 88 00 00 00
]]
end
end

function CETrainer_RainbowInventoryMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+3FA78B:
db 0F 84 BB 00 00 00
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+3FA78B:
db 0F 85 BB 00 00 00
]]
end
end

function CETrainer_RainbowInventoryFastMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+3FA78B:
db 0F 84 BB 00 00 00
Growtopia.exe+3FA7B0:
db 74 25
Growtopia.exe+3FA7C8:
db 90 90 90 90 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+3FA78B:
db 0F 85 BB 00 00 00
Growtopia.exe+3FA7B0:
db 75 25
Growtopia.exe+3FA7C8:
db F3 0F 5E 05 58 8E 1D 00
]]
end
end

function CETrainer_TrippyBlocksMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+4866AF:
db 90 90 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+4866AF:
db 0F 85 44 01 00 00
]]
end
end

function CETrainer_WaterVisualMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+414B5C:
db 75 1E
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+414B5C:
db 74 1E
]]
end
end

function CETrainer_NoItemBorderMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[

]]
else
sender.color = '$000000'
sender.showhint = false
asm[[

]]
end
end

function CETrainer_DragonKnightSetMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[

]]
else
sender.color = '$000000'
sender.showhint = false
asm[[

]]
end
end

function CETrainer_LegendaryNameMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+4040EF:
db 75 13
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+4040EF:
db 74 13
]]
end
end

function CETrainer_NoNameMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+4043E0:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+4043E0:
db 76 21
]]
end
end

function CETrainer_SeeFruitsMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+45BF3A:
db 74 08
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+45BF3A:
db 75 08
]]
end
end

function CETrainer_InvisibleBlocksMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+45C38C:
db 90 90 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+45C38C:
db 0F B7 43 04
]]
end
end

function CETrainer_CCTVMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+31735B:
db 74 72
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+31735B:
db 75 72
]]
end
end

function CETrainer_LegendBotMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+1D7466:
db 90 90
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+1D7466:
db 75 25
]]
end
end

function CETrainer_LightModeMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
"Growtopia.exe"+3F5D23:
db 85 13
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
"Growtopia.exe"+3F5D23:
db 84 13
]]
end
end

function CETrainer_CloningBodyMouseDown(sender, button, x, y)
if sender.showhint == false then
sender.showhint = true
sender.color = '0x00FF00'
asm[[
Growtopia.exe+414BEA:
db 84 FF
]]
else
sender.color = '$000000'
sender.showhint = false
asm[[
Growtopia.exe+414BEA:
db 85 FF
]]
end
end
-- Visuals
------------------------------------------------------------

------------------------------------------------------------
-- Login
Login.Position = poDesktopCenter
Login.AlphaBlend = true
Login.AlphaBlendValue = 0
Login.show()
createNativeThread(function()
for i = 0,85 do
sleep(1)
Login.AlphaBlendValue = i*3
end
end)

function Login_LoginBtnMouseDown(sender, button, x, y)
local str = getint.getURL("https://textuploader.com/tsbh0/raw") --password = OpenSource
local TextLogin = Login.Key.text
if str == TextLogin then
getint.destroy()
Login.Visible = false
if messageDialog("NotYetHAX", "Password Is Correct!", mbOK) == mrOK then
playSound(findTableFile("FormOpening.wav"))
xx.AlphaBlend = true
xx.AlphaBlendValue = 0
xx.show()
createNativeThread(function()
for i = 0,85 do
sleep(1)
xx.AlphaBlendValue = i*3
end
end)
end
Login.Visible = false
Rainbow.Enabled = false
else
if messageDialog("NotYetHAX", "Password Is Incorrect!", mbError, mbOK) == mrOK then
xx.Visible = false
end
end
end

function Login_ExitMouseDown(sender, button, x, y)
playSound(findTableFile("FormClosing.wav"))
Login.AlphaBlend = true
for i=0,85 do
sleep(1)
Login.AlphaBlendValue = 255-i*3
end
CloseCE()
end

function Login_FormDragMouseDown(sender, button, x, y)
Login.DragNow()
end

function Login_CELabel1MouseDown(sender, button, x, y)
Login.DragNow()
end

function Login_ExitMouseEnter(sender)
  sender = Login
  sender = sender.Exit
  sender.Color = "0x0000FF"
end

function Login_ExitMouseLeave(sender)
  sender = Login
  sender = sender.Exit
  sender.Color = "$0000000"
end

function Login_FormMouseDown(sender, button, x, y)
Login.DragNow()
end

function Login_RainbowTimer(sender)
if cmode == 0 then
 if g < 255 then
  g = g + colorspace
 else
  cmode = 1
 end
end
if cmode == 1 then
 if r > 0 then
  r = r - colorspace
 else
  cmode = 2
 end
end
if cmode == 2 then
 if b < 255 then
  b = b + colorspace
 else
  cmode = 3
 end
end
if cmode == 3 then
 if g > 0 then
  g = g - colorspace
 else
  cmode = 4
 end
end
if cmode == 4 then
 if r < 255 then
  r = r + colorspace
 else
  cmode = 5
 end
end
if cmode == 5 then
 if b > 0 then
  b = b - colorspace
 else
  cmode = 0
 end
end
r1 = string.format("%02X",r)
g1 = string.format("%02X",g)
b1 = string.format("%02X",b)
Login.Exit.Font.color = "0x"..b1..g1..r1
Login.Key.Font.color = "0x"..b1..g1..r1
Login.CELabel1.Font.color = "0x"..b1..g1..r1
Login.KeyText.Font.color = "0x"..b1..g1..r1
Login.LoginBtn.Font.color = "0x"..b1..g1..r1
Login.Green.BevelColor = "0x"..b1..g1..r1
Login.Green1.BevelColor = "0x"..b1..g1..r1
Login.Green2.BevelColor = "0x"..b1..g1..r1
Login.Green3.BevelColor = "0x"..b1..g1..r1
Login.Green4.BevelColor = "0x"..b1..g1..r1
Login.Green5.BevelColor = "0x"..b1..g1..r1
Login.Green6.BevelColor = "0x"..b1..g1..r1
Login.FormDrag.BevelColor = "0x"..b1..g1..r1
end
------------------------------------------------------------
-- Login
