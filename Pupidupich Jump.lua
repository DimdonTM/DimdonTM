local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Pupidupich obby", "RJTheme3")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Farm")

Section:NewToggle("Auto lvl", "Fast passing of parkour", function(state)
    if state then
        _G.Fast = true
    else
        _G.Fast = false
	end

	if _G.Fast == true then
		while game:GetService("RunService").RenderStepped:wait() do
	if _G.Fast == false then
		break end
	for i,v in pairs(game:GetDescendants()) do
	if v.Name == 'LeftBlock' or v.Name == 'LeftForwardBlock' or v.Name == 'RighttBlock' or v.Name == 'RightForwardBlock' then 
	v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(0.1)
end
end
end
end
end)
local Section2 = Tab:NewSection("Misc")

Section2:NewButton("Delete DmgFloor", "Len", function()
a = game:GetService("Workspace").DmgFloor
a:Destroy()
end)
Section2:NewButton("No Hitboxes", "You dont have hitbox", function()
function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21)
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip()
end
end)