game:GetService("StarterGui"):SetCore("SendNotification", {Title = "World Defenders GUI", Text = "by Dimdon"})
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
                                                                                                                                                                                                                 
local Window = Library.CreateLib("World Defenders by Dimdon :3", "RJTheme3")

local Tab = Window:NewTab("Main")

local Tab1 = Window:NewTab("Others")

local Section = Tab:NewSection("Spawn")

local Section2 = Tab:NewSection("Weapon")

local Section3 = Tab1:NewSection("Others")

local Section4 = Tab1:NewSection("Autofarm [TEST]")
Section:NewTextBox("Name tower: ", "Enter the name of the tower", function(txt)
d = txt
end)

Section:NewButton("Spawn towers not restrictions (1 click this)", "ButtonInfo", function()
    print("Spawn Tower: Activated")
	local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local UserInputService = game:GetService('UserInputService')
 
local HoldingControl = false
 
Mouse.Button1Down:connect(function()
if HoldingControl then
print(Mouse.Hit.p)
pos = Mouse.Hit.p
args = {
    [1] = d,
    [2] = Vector3.new(pos.X, pos.Y, pos.Z)
}

game:GetService("ReplicatedStorage").SharedModules.Knit.Services.TowerSpawnService.RF.deploy:InvokeServer(unpack(args))
end
end)
 
UserInputService.InputBegan:connect(function(Input, Processed)
if Input.UserInputType == Enum.UserInputType.Keyboard then
if Input.KeyCode == Enum.KeyCode.LeftControl then
HoldingControl = true
elseif Input.KeyCode == Enum.KeyCode.RightControl then
HoldingControl = true
end
end
end)
 
UserInputService.InputEnded:connect(function(Input, Processed)
if Input.UserInputType == Enum.UserInputType.Keyboard then
if Input.KeyCode == Enum.KeyCode.LeftControl then
HoldingControl = false
elseif Input.KeyCode == Enum.KeyCode.RightControl then
HoldingControl = false
end
end
end)

end)

Section2:NewButton("Equip weapon", "You equip more 10k weapon", function()
local args = {
    [1] = "Money Gun",
    [2] = false
}

game:GetService("ReplicatedStorage").RemoteFunctions.WeaponEquipRequest:InvokeServer(unpack(args))
end)


Section2:NewButton("Delete Recoil", "Delete your recoil weapon",function()
for i,v in pairs(game.Workspace.Dimdonpro2:GetDescendants()) do
if v.Name == "Money Gun" then
v.Configuration.MaxSpread:Destroy()
v.Configuration.RecoilMax:Destroy()
v.Configuration.RecoilMin:Destroy()
v.Configuration.TotalRecoilMax:Destroy()
print(1)
end
end
end)

Section2:NewButton("Upgrade Weapon", "Upgrading your weapong",function()
local args = {
    [1] = "Money Gun"
}

game:GetService("ReplicatedStorage").RemoteFunctions.WeaponUpgradeRequest:InvokeServer(unpack(args))
end)

Section3:NewToggle("Pause Glitch", "Pause/Unpause game", function(state)
    if state then
        _G.paus= true
    else
        _G.paus = false
	end

	if _G.paus == true then
		while game:GetService("RunService").RenderStepped:wait() do
	if _G.paus== false then
		break end
	game:GetService("ReplicatedStorage").SharedModules.Knit.Services.GamePauseService.RF.pause:InvokeServer()
	wait(5)
	game:GetService("ReplicatedStorage").SharedModules.Knit.Services.GamePauseService.RF.unpause:InvokeServer()
	end
end
end)


pauses = false
Section3:NewButton("Pause LOBBY", "Pause/Unpause LOBBY", function()
if pauses then
game:GetService("ReplicatedStorage").SharedModules.Knit.Services.GamePauseService.RF.unpause:InvokeServer()
pauses = false
else
	game:GetService("ReplicatedStorage").SharedModules.Knit.Services.GamePauseService.RF.pause:InvokeServer()
	pauses = true
end
end)


Section3:NewSlider("Size Hitbox", "Choose", 100, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    HeadSize = s
end)


Section3:NewToggle("Big heads", "Hiboxs", function(state)
    if state then
        _G.farm = true
    else
        _G.farm = false
	end

	if _G.farm == true then
		while game:GetService("RunService").RenderStepped:wait() do
	if _G.farm == false then
		break end
	for i,v in pairs(game.Workspace.Zombies:GetDescendants()) do
	if v.Name == 'FakeHead' and v.ClassName == 'MeshPart' then
	v.Size = Vector3.new(HeadSize, HeadSize, HeadSize)
	end
	end
	end
	end
end)

Section4:NewButton("Galactic Gateway Nightmare", "Farm", function()
for g = 1,10000 do
args = {
    [1] = "Cyclops",
    [2] = Vector3.new(35, 197, -72)
}

game:GetService("ReplicatedStorage").SharedModules.Knit.Services.TowerSpawnService.RF.deploy:InvokeServer(unpack(args))
wait(1)
args = {
    [1] = "Cyclops",
    [2] = Vector3.new(70, 197, -74)
}

game:GetService("ReplicatedStorage").SharedModules.Knit.Services.TowerSpawnService.RF.deploy:InvokeServer(unpack(args))
wait(1)
args = {
    [1] = "Cyclops",
    [2] = Vector3.new(112, 197, -108)
}

game:GetService("ReplicatedStorage").SharedModules.Knit.Services.TowerSpawnService.RF.deploy:InvokeServer(unpack(args))
wait(50)
args = {
    [1] = "Cyclops",
    [2] = Vector3.new(153, 197, -125)
}

game:GetService("ReplicatedStorage").SharedModules.Knit.Services.TowerSpawnService.RF.deploy:InvokeServer(unpack(args))
wait(1)
args = {
    [1] = "Cyclops",
    [2] = Vector3.new(153, 197, -125)
}

game:GetService("ReplicatedStorage").SharedModules.Knit.Services.TowerSpawnService.RF.deploy:InvokeServer(unpack(args))
wait(1)
args = {
    [1] = "Cyclops",
    [2] = Vector3.new(-10, 197, -71)
}

game:GetService("ReplicatedStorage").SharedModules.Knit.Services.TowerSpawnService.RF.deploy:InvokeServer(unpack(args))
wait(5)
for d = 1,40 do
print(d)
wait(5)
	for i,v in pairs(game.Workspace.Towers:GetDescendants()) do
		if v.ClassName == "Model" and v.PrimaryPart ~= HumanoidRootPart and v.Name ~= 'FrozenIce' then
		local args = {
    		[1] = v.Name
		}

		game:GetService("ReplicatedStorage").SharedModules.Knit.Services.TowerSpawnService.RF.upgrade:InvokeServer(unpack(args))
		wait(1)
	end
end
end
wait(5)
game:GetService("ReplicatedStorage").SharedModules.Knit.Services.GameOverOptionsService.RF.voteAgain:InvokeServer()
wait(2)
local args = {
    [1] = "GalacticGateway"
}

game:GetService("ReplicatedStorage").SharedModules.Knit.Services.VotingService.RE.Vote:FireServer(unpack(args))
wait(5)
local args = {
    [1] = 3
}

game:GetService("ReplicatedStorage").SharedModules.Knit.Services.VotingService.RE.Vote:FireServer(unpack(args))
wait(2)
end
end)