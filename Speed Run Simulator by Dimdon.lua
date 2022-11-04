local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Speed Run Simulator", "RJTheme3")

local Tab = Window:NewTab("Farming")

local Section = Tab:NewSection("FarmOrbs")

Section:NewButton("FastCollectOrbs (Need a strong computer)", "Уou collect all the orbs on the server", function()
    for i,v in pairs(game:GetDescendants()) do
	if v.Name == 'Orb' then
	v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	end
	end
end)

Section:NewButton("SlowCollectOrbs (Weak computer) ", "Уou collect all the orbs on the server", function()
    for i,v in pairs(game:GetDescendants()) do
	if v.Name == 'Orb' then
	v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(0.07)
	end
	end
end)

local Section2 = Tab:NewSection("AutoRebirth")

Section2:NewButton("AutoRebirth", "The script does the rebirth for you", function()
	while wait(1) do
	game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
	end
end)

local Tab2 = Window:NewTab("Egg")

local Section3 = Tab2:NewSection("AutoBuyEgg")

Section3:NewSlider("What egg?", "Choose an egg from 1 to 13", 13, 1, function(s)
    if s == 1 then
		d = 'EggOne'
	elseif s == 2 then
		d = 'EggTwo'
	elseif s == 3 then
		d = 'EggThree'
	elseif s == 4 then
		d = 'EggFour'
	elseif s == 5 then
		d = 'EggFive'
	elseif s == 6 then
		d = 'EggSix'
	elseif s == 7 then
		d = 'EggSeven'
	elseif s == 8 then
		d = 'EggEight'
	elseif s == 9 then
		d = 'EggNine'
	elseif s == 10 then
		d = 'EggTen'
	elseif s == 11 then
		d = 'EggEleven'
	elseif s == 12 then
		d = 'EggTwelve'
	elseif s == 13 then
		d = 'EggThirteen'
	end
	end)


Section3:NewToggle("AutoBuy Egg", "This script buys eggs very quickly", function(state)
    if state then
        _G.AutoBuy = true
    else
        _G.AutoBuy = false
	end

	if _G.AutoBuy == true then
		while game:GetService("RunService").RenderStepped:wait() do
	if _G.AutoBuy == false then
		break end
	local args = {
    	[1] = d
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	print(d)
	end
	end
end)


local Tab3 = Window:NewTab("InfiniteEquip")

local Section4 = Tab3:NewSection("InfiniteEquip")

Section4:NewToggle("InfiniteEquip", "The script equip infinite pets", function(state)
    if state then
        _G.InfiniteEquip = true
    else
        _G.InfiniteEquip = false
    end

	if _G.InfiniteEquip == true then
		while wait() do
	if _G.InfiniteEquip == false then
		break end
		    for _,v in pairs(game.Players.LocalPlayer.PlayerGui.MainUI.PetUI.SelectionPanel.ScrollingFrame:GetDescendants()) do
			local args = {
   				[1] = v.Name
			}
			game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
			wait(0.0001)
			end
		end
	end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7000, -300, -415, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Section4:NewToggle("FastUnequip", "Script quickly unequip your pets!", function(state)
	if state then
		_G.FastUnequip = true
	else
		_G.FastUnequip = false
	end

	if _G.FastUnequip == true then
		while wait() do
	if _G.FastUnequip == false then
		break end
		    for _,m in pairs(game.Players.LocalPlayer.PlayerGui.MainUI.PetUI.SelectionPanel.ScrollingFrame:GetDescendants()) do
			local args = {
   				[1] = m.Name
			}

			game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
			wait(0.0001)
			end
		end
	end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7000, -300, -415, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

local Section5 = Tab:NewSection("FastUpgrade")

Section5:NewButton("FastUpgrade", "Script automatically upgrade your pets!", function()
		for i,v in pairs(game:GetDescendants()) do	
	local args = {
    	[1] = v.Name
	}

	game:GetService("ReplicatedStorage").Remotes.UpgradePet:FireServer(unpack(args))
	end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7000, -300, -415, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
