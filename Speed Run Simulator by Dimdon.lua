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

local Tab2 = Window:NewTab("FastEgg")

local Section3 = Tab2:NewSection("FastBuyEgg 10 eggs (click many times)")

Section3:NewButton("AutoBuy 1 Egg", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggOne"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 2 Egg", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggTwo"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 3 Egg", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggThree"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 4 Egg", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggFour"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 5 Egg", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggFive"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)


Section3:NewButton("AutoBuy 6 Egg", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggSix"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)


Section3:NewButton("AutoBuy 7 Egg", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggSeven"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 8 Egg", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggEight"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 9 Egg", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggNine"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 10 Egg", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggTen"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 11 Egg", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggEleven"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

Section3:NewButton("AutoBuy 12 Egg", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggTwelve"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)


Section3:NewButton("AutoBuy 13 Egg", "This script buys eggs very quickly", function()
	for i = 1, 10 do
local args = {
    [1] = "EggThirteen"
	}

	game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
	end
end)

local Tab3 = Window:NewTab("InfiniteEquip")

local Section4 = Tab3:NewSection("InfiniteEquip/FastUnequip")

Section4:NewButton("InfiniteEquip (click many times) ", "The script equip infinite pets (CLICK MANY TIMES)", function()
	for i = 1, 3 do
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
	
	local args = {
    	[1] = "Scorpion"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Officer"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Horse"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Pig"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Cow"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Princess"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Cat"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Chicken"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Baby Chick"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Wizard"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Ice Bat"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Ice King"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Fire King"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Dragon"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Fire Bunny"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Soldier"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Skeleton"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Detective"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Professor"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Giraffe"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Gnome"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Astronaut"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Peppermint"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Cupid"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Cloud"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Vampire"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Piggy"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Phoenix"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Santa"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Mummy"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Ninja"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Troll"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Piggy Alien"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Astropiggy"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Alien"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Cookie"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Gummy Bear"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Marshmallow"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Pegasus"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Pharaoh"
	}

	game:GetService("ReplicatedStorage").Remotes.PetEquip:FireServer(unpack(args))
	end
end)

Section4:NewButton("FastUnequip (click many times)", "Script quickly unequip your pets!", function()
	for i = 1,3 do

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

	local args = {
    	[1] = "Scorpion"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Officer"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Horse"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Pig"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Cow"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Princess"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Cat"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Chicken"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Baby Chick"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Wizard"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Ice Bat"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Ice King"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Fire King"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Dragon"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Fire Bunny"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Soldier"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Skeleton"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Detective"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Professor"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Giraffe"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Gnome"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Astronaut"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Peppermint"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Cupid"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Cloud"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Vampire"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Piggy"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Phoenix"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Santa"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Mummy"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Ninja"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Troll"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Piggy Alien"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Astropiggy"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Alien"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Cookie"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Gummy Bear"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Marshmallow"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Pegasus"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	wait(1)
	
	local args = {
    	[1] = "Pharaoh"
	}

	game:GetService("ReplicatedStorage").Remotes.PetUnequip:FireServer(unpack(args))
	end
end)

local Section5 = Tab:NewSection("FastUpgrade")

Section5:NewButton("FastUpgrade (Only last egg 13)", "Script automatically upgrade your pets!", function()
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
