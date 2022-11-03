local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Speed Run Simulator", "RJTheme3")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("AutoFarm")

Section:NewButton("AutoCollectOrbs (Need a strong computer)", "Уou collect all the orbs on the server", function()
    for i,v in pairs(game:GetDescendants()) do
	if v.Name == 'Orb' then
	v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	end
	end
end)

local Section2 = Tab:NewSection("AutoRebirth")

Section2:NewButton("AutoRebith", "The script does the rebirth for you", function()
	while wait(5) do
	game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
	end
end)

local Section3 = Tab:NewSection("AutoBuyEgg")

Section3:NewButton("AutoBuy 1 Egg  (10 eggs)", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggOne"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 2 Egg  (10 eggs)", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggTwo"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 3 Egg  (10 eggs)", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggThree"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 4 Egg  (10 eggs)", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggFour"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 5 Egg  (10 eggs)", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggFive"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)


Section3:NewButton("AutoBuy 6 Egg  (10 eggs)", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggSix"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)


Section3:NewButton("AutoBuy 7 Egg  (10 eggs)", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggSeven"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 8 Egg  (10 eggs)", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggEight"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 9 Egg  (10 eggs)", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggNine"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 10 Egg  (10 eggs)", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggTen"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 11 Egg  (10 eggs)", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggEleven"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 12 Egg  (10 eggs)", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggTwelve"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)


Section3:NewButton("AutoBuy 13 Egg  (10 eggs)", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggThirteen"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

local Section4 = Tab:NewSection("AutoEquip/Unequip")

Section4:NewButton("AutoEquip", "Script equiped all pets", function()
	for i = 1, 5 do
	local args = {
    	[1] = "Jake"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)

	local args = {
    	[1] = "Astropiggy"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)

	local args = {
    	[1] = "Finn"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)

	local args = {
    	[1] = "BMO"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)

	local args = {
    	[1] = "Princess"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	end
end)

Section4:NewButton("AutoUnequip", "Script automatically unequip your pets!", function()
	for i = 1,5 do

	local args = {
    	[1] = "Jake"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	
	local args = {
    	[1] = "Princess"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	
	local args = {
    	[1] = "BMO"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	
	local args = {
    	[1] = "Finn"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))

	end
end)

local Section5 = Tab:NewSection("AutoUpgrade")

Section5:NewButton("AutoUpgrade (Last egg 13)", "Script automatically upgrade your pets!", function()
	for i = 1,5 do
			
	local args = {
    	[1] = "Finn"
	}

	game:GetService("ReplicatedStorage").Remotes.UpgradePet:FireServer(unpack(args))
						
	local args = {
    	[1] = "FinnG"
	}

	game:GetService("ReplicatedStorage").Remotes.UpgradePet:FireServer(unpack(args))
						
	local args = {
    	[1] = "FinnD"
	}

	game:GetService("ReplicatedStorage").Remotes.UpgradePet:FireServer(unpack(args))
								
	local args = {
    	[1] = "BMO"
	}

	game:GetService("ReplicatedStorage").Remotes.UpgradePet:FireServer(unpack(args))
									
	local args = {
    	[1] = "BMOG"
	}

	game:GetService("ReplicatedStorage").Remotes.UpgradePet:FireServer(unpack(args))
									
	local args = {
    	[1] = "BMOD"
	}

	game:GetService("ReplicatedStorage").Remotes.UpgradePet:FireServer(unpack(args))
									
	local args = {
    	[1] = "Princess"
	}

	game:GetService("ReplicatedStorage").Remotes.UpgradePet:FireServer(unpack(args))
										
	local args = {
    	[1] = "PrincessG"
	}

	game:GetService("ReplicatedStorage").Remotes.UpgradePet:FireServer(unpack(args))
										
	local args = {
    	[1] = "PrincessD"
	}

	game:GetService("ReplicatedStorage").Remotes.UpgradePet:FireServer(unpack(args))
											
	local args = {
    	[1] = "Jake"
	}

	game:GetService("ReplicatedStorage").Remotes.UpgradePet:FireServer(unpack(args))
												
	local args = {
    	[1] = "JakeG"
	}

	game:GetService("ReplicatedStorage").Remotes.UpgradePet:FireServer(unpack(args))
												
	local args = {
    	[1] = "JakeD"
	}

	game:GetService("ReplicatedStorage").Remotes.UpgradePet:FireServer(unpack(args))

	end

end)