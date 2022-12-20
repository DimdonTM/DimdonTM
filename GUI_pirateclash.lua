local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Pirate Clash", "RJTheme3")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Hitbox")


Section:NewSlider("Hitbox size", "Choose hitbox size", 100, 1, function(s)
	d = s
end)

Section:NewButton("Hitbox", "REALLY GOD BOY)", function()
	game:GetService("StarterGui"):SetCore("SendNotification", {Title = "yeet", Text = "t = Enabled : p = disabled."})
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
 
-- Settings
 
bind = "" 
bind2 = "t"
bind3 = "p"
 
-- Script
 
mouse.KeyDown:connect(function(key)
if key == bind then
player.Character.HumanoidRootPart.CFrame = CFrame.new(1254.09656, 137.906067, -172.128204)
end
end)
 
mouse.KeyDown:connect(function(key2)
if key2 == bind2 then
_G.HeadSize = d
_G.Disabled = true
 
 
if _G.Disabled then

for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Team ~= game:GetService('Players').LocalPlayer.Team then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Black")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end
end)
 
mouse.KeyDown:connect(function(key3)
if key3 == bind3 then
_G.HeadSize = 7
_G.Disabled = true
 
 
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
v.Character.HumanoidRootPart.Transparency = 1
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
v.Character.HumanoidRootPart.Material = "Plastic"
v.Character.HumanoidRootPart.CanCollide = true
end)
end
end
end
end)

end)

local Tab2 = Window:NewTab("Guns")

local Section3 = Tab2:NewSection("No Reload")

Section3:NewToggle("Flintlock", "This script, no reload gun", function(Flintlock)
 	if Flintlock then
        _G.Flintlock = true
    else
        _G.Flintlock = false
	end

	if _G.Flintlock == true then
		while game:GetService("RunService").RenderStepped:wait() do
	if _G.Flintlock == false then
		break end
	local args = {
    	[1] = "Flintlock"
	}

	game:GetService("ReplicatedStorage").Events.ReloadWeapon:FireServer(unpack(args))

	end
	end
end)

Section3:NewToggle("Blunderbuss", "This script, no reload gun", function(Blunderbuss)
 	if Blunderbuss then
        _G.Blunderbuss = true
    else
        _G.Blunderbuss = false
	end

	if _G.Blunderbuss == true then
		while game:GetService("RunService").RenderStepped:wait() do
	if _G.Blunderbuss == false then
		break end
	local args = {
    	[1] = "Blunderbuss"
	}

	game:GetService("ReplicatedStorage").Events.ReloadWeapon:FireServer(unpack(args))

	end
	end
end)

Section3:NewToggle("Pipe gun", "This script, no reload gun", function(Pipegun)
 	if Pipegun then
        _G.Pipegun = true
    else
        _G.Pipegun = false
	end

	if _G.Pipegun == true then
		while game:GetService("RunService").RenderStepped:wait() do
	if _G.Pipegun == false then
		break end
	local args = {
    	[1] = "Pipe Gun"
	}

	game:GetService("ReplicatedStorage").Events.ReloadWeapon:FireServer(unpack(args))

	end
	end
end)

Section3:NewToggle("Repeater", "This script, no reload gun", function(Repeater)
 	if Repeater then
        _G.Repeater = true
    else
        _G.Repeater = false
	end

	if _G.Repeater == true then
		while game:GetService("RunService").RenderStepped:wait() do
	if _G.Repeater == false then
		break end
	local args = {
    	[1] = "Repeater"
	}

	game:GetService("ReplicatedStorage").Events.ReloadWeapon:FireServer(unpack(args))

	end
	end
end)
