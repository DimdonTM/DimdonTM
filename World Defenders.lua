game:GetService("StarterGui"):SetCore("SendNotification", {Title = "World Defenders GUI", Text = "by Dimdon"})
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("World Defenders by Dimdon", "RJTheme3")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Function")

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

Section:NewButton("Equip weapon (Alien Ray Gun)", "You equip more 10k weapon", function()
local args = {
    [1] = "Alien Ray Gun",
    [2] = false
}

game:GetService("ReplicatedStorage").RemoteFunctions.WeaponEquipRequest:InvokeServer(unpack(args))
end)

Section:NewButton("Delete Recoil", "Delete your recoil weapon",function()
for i,v in pairs(game.Workspace.Dimdonpro2:GetDescendants()) do
if v.Name == "Alien Ray Gun" then
v.Configuration.RecoilMax:Destroy()
v.Configuration.RecoilMin:Destroy()
end
end
end)


Section:NewToggle("Tp to monster", "Teleport", function(state)
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
	if v.Name == 'Target' then
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
	wait(0.1)
	end
	end
	end
	end
end)
