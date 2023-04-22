game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Worm 2048 GUI", Text = "by Dimdon"})
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
                                                                                                                                                                                                                 
local Window = Library.CreateLib("Worm 2048 by Dimdon :3", "RJTheme3")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Farm")

Section:NewToggle("Farm blocks", "tp to you block", function(state)
    if state then
        _G.paus= true
    else
        _G.paus = false
	end

	if _G.paus == true then
		while game:GetService("RunService").RenderStepped:wait() do
	if _G.paus== false then
		break end
	for i,v in pairs(game.Workspace.CubeFolder:GetDescendants()) do
	if v.Name == "64" then
		print(v.Name)
		v.CanCollide = false
		v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	end
	end
	end
	end
	end)

Section:NewToggle("Farm Lucky block", "tp to you lucky block", function(state)
    if state then
        _G.lucky= true
    else
        _G.lucky = false
	end

	if _G.lucky == true then
		while game:GetService("RunService").RenderStepped:wait() do
	if _G.lucky== false then
		break end
for i,v in pairs(game.Workspace.PropsFolder.LUCK_BLOCK:GetDescendants()) do
	if v.Name == "Part" then
		print(v.Name)
		v.CanCollide = false
		v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	end
end
end
end
end)

Section:NewTextBox("Name Player: ", "Enter the name of the player", function(txt)
d = txt
end)

Section:NewDropdown("What number to steal:", "DropdownInf", {"2", "4", "8", "16", "32", "64", "128", "256", "512", "1024", "2048", "4096", "8192", "16384", "32768"}, function(steal)
    if steal == "2" then
	steals = game.Workspace:WaitForChild(d).PlayerCubes:WaitForChild("1"):WaitForChild("2")
	elseif steal == "4" then
	steals = game.Workspace:WaitForChild(d).PlayerCubes:WaitForChild("2"):WaitForChild("4")
	elseif steal == "8" then
	steals = game.Workspace:WaitForChild(d).PlayerCubes:WaitForChild("3"):WaitForChild("8")
	elseif steal == "16" then
	steals = game.Workspace:WaitForChild(d).PlayerCubes:WaitForChild("4"):WaitForChild("16")
	elseif steal == "32" then
	steals = game.Workspace:WaitForChild(d).PlayerCubes:WaitForChild("5"):WaitForChild("32")
	elseif steal == "64" then
	steals = game.Workspace:WaitForChild(d).PlayerCubes:WaitForChild("6"):WaitForChild("64")
	elseif steal == "128" then
	steals = game.Workspace:WaitForChild(d).PlayerCubes:WaitForChild("7"):WaitForChild("128")
	elseif steal == "256" then
	steals = game.Workspace:WaitForChild(d).PlayerCubes:WaitForChild("8"):WaitForChild("256")
	elseif steal == "512" then
	steals = game.Workspace:WaitForChild(d).PlayerCubes:WaitForChild("9"):WaitForChild("512")
	elseif steal == "1024" then
	steals = game.Workspace:WaitForChild(d).PlayerCubes:WaitForChild("10"):WaitForChild("1024")
	elseif steal == "2048" then
	steals = game.Workspace:WaitForChild(d).PlayerCubes:WaitForChild("11"):WaitForChild("2048")
	elseif steal == "4096" then
	steals = game.Workspace:WaitForChild(d).PlayerCubes:WaitForChild("12"):WaitForChild("4096")
	elseif steal == "8192" then
	steals = game.Workspace:WaitForChild(d).PlayerCubes:WaitForChild("13"):WaitForChild("8192")
	elseif steal == "16384" then
	steals = game.Workspace:WaitForChild(d).PlayerCubes:WaitForChild("14"):WaitForChild("16384")
	elseif steal == "32768" then
	steals = game.Workspace:WaitForChild(d).PlayerCubes:WaitForChild("15"):WaitForChild("32768")
	end
end)
Section:NewButton("Steal", "Info", function ()
	print(steals)
	steals.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end)
Section:NewButton("TP player to you", "ButtonInfo", function()
game.Workspace:WaitForChild(d).HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end)