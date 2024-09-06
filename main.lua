local GameName = "The Dark Realm 👏"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "The Dark Realm 👏", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

OrionLib:MakeNotification({Name = "Warning",Content = "Use at your own risk.",Image = "rbxassetid://7733658504",Time = 5})

if workspace:FindFirstChild("VoidPart") == nil then
local VoidPart = Instance.new("Part", workspace)
VoidPart.Name = "VoidPart"
VoidPart.Position = Vector3.new(-36, -3, 16)
VoidPart.Size = Vector3.new(2000, 1, 2000)
VoidPart.Anchored = true
VoidPart.Transparency = 1
VoidPart.CanCollide = false
end

local Script = Window:MakeTab({
	Name = "Script",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Scripts = Script:AddSection({
	Name = "some cool scripts"
})

Scripts:AddButton({
	Name = "giang hub",
	Callback = function()
			 loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
	 end
})

Scripts:AddButton({
	Name = "fly gui v3",
	Callback = function()
			 loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
	 end
})

local Tab = Window:MakeTab({
	Name = "Combat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Anti",
	Icon = "rbxassetid://4370318685",
	PremiumOnly = false
})

local sus = Tab:AddSection({
	Name = "totally not copied from giang hub"
})

local Combat = Tab:AddSection({Name = "Combat"})

Tab:AddToggle({
	Name = "Damage Boss",
	Default = false,
	Callback = function(Value)
_G.DameBossBob = Value
while _G.DameBossBob do
game.Workspace.bobBoss.DamageEvent:FireServer()
task.wait()
end
	end    
})

Tab:AddToggle({
	Name = "Auto Click Tycoon",
	Default = false,
	Callback = function(Value)
		_G.AutoTycoon = Value
while _G.AutoTycoon do
for _, v in pairs(workspace:GetChildren()) do
if string.find(v.Name, "ÅTycoon") and v:FindFirstChild("Click") then
fireclickdetector(v.Click.ClickDetector, 0)
fireclickdetector(v.Click.ClickDetector, 1)
end
end
task.wait()
end
	end   
})

SpawnRob = Tab:AddToggle({
	Name = "Auto Spawn Rob",
	Default = false,
	Callback = function(Value)
		_G.AutoSpawnRob = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "rob" then
while _G.AutoSpawnRob do
game:GetService("ReplicatedStorage").rob:FireServer()
wait(15)
end
elseif Value == true then
OrionLib:MakeNotification({Name = "Error",Content = "Get ethernal bob boss fight phase 6.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
SpawnRob:Set(false)
end
	end    
})

Tab:AddDropdown({
	Name = "Glove Slap Aura Bob",
	Default = "Killstreak",
	Options = {"Killstreak", "Reaper", "God's Hand", "Tycoon"},
	Callback = function(Value)
GloveSlap = Value
	end    
})

Tab:AddToggle({
	Name = "Slap Aura Bob Clone [ Test... ]",
	Default = false,
	Callback = function(Value)
		_G.SlapBobClone = Value
while _G.SlapBobClone do
if game.Workspace:FindFirstChild("BobClone") then
for _, v in pairs(workspace:GetChildren()) do
if v.Name == "BobClone" then
if GloveSlap == "Killstreak" then
game:GetService("ReplicatedStorage").KSHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
elseif GloveSlap == "Reaper" then
game:GetService("ReplicatedStorage").ReaperHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
elseif GloveSlap == "God's Hand" then
game:GetService("ReplicatedStorage").Godshand:FireServer(v:FindFirstChild("HumanoidRootPart"))
elseif GloveSlap == "Tycoon" then
game:GetService("ReplicatedStorage").GeneralHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
end
end
task.wait(1.2)
end
	end    
})

Tab:AddButton({
	Name = "Slap Aura Bob",
	Callback = function()
if GloveSlap == "Killstreak" then
for _, v in ipairs(workspace:GetDescendants()) do
if v.Name == "BobClone" then
game:GetService("ReplicatedStorage").KSHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
elseif GloveSlap == "Reaper" then
for _, v in ipairs(workspace:GetDescendants()) do
if v.Name == "BobClone" then
game:GetService("ReplicatedStorage").ReaperHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
elseif GloveSlap == "God's Hand" then
for _, v in ipairs(workspace:GetDescendants()) do
if v.Name == "BobClone" then
game:GetService("ReplicatedStorage").Godshand:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
elseif GloveSlap == "Tycoon" then
for _, v in ipairs(workspace:GetDescendants()) do
if v.Name == "BobClone" then
game:GetService("ReplicatedStorage").GeneralHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
end
  	end    
})



Tab2:AddButton({
	Name = "Anti VFX",
	Callback = function()
if game.Players.LocalPlayer.PlayerScripts:FindFirstChild("VFXListener") then
game.Players.LocalPlayer.PlayerScripts:FindFirstChild("VFXListener").Parent = game.ReplicatedStorage
else
game.ReplicatedStorage.VFXListener.Parent = game.Players.LocalPlayer.PlayerScripts
end
  	end    
})

Tab2:AddToggle({
	Name = "Anti Ring",
	Default = false,
	Callback = function(Value)
		_G.AntiRing = Value
while _G.AntiRing do
if game.Workspace:FindFirstChild("Ring") then
game.Workspace:FindFirstChild("Ring"):Destroy()
end
task.wait()
end
	end    
})

Tab2:AddToggle({
	Name = "Auto Remove Big Meteors",
	Default = false,
	Callback = function(Value)
		_G.AutoRemoveBigMeteors = Value
while _G.AutoRemoveBigMeteors do
if game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener:FindFirstChild("BigExplosion") then
game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener.BigExplosion:Destroy()
end
task.wait()
end
	end    
})

Tab2:AddToggle({
	Name = "Auto Remove Small Meteors",
	Default = false,
	Callback = function(Value)
		_G.AutoRemoveSmallMeteors = Value
while _G.AutoRemoveSmallMeteors do
if game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener:FindFirstChild("SmallMeteorVFX") then
game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener.SmallMeteorVFX:Destroy()
end
task.wait()
end
	end    
})

Tab2:AddToggle({
	Name = "Anti Void Damage",
	Default = false,
	Callback = function(Value)
game.Workspace["VoidPart"].CanCollide = Value
if Value == true then
game.Workspace["VoidPart"].Transparency = 0.5
else
game.Workspace["VoidPart"].Transparency = 1
end
	end    
})

Tab2:AddToggle({
	Name = "Anti Ragdoll",
	Default = false,
	Callback = function(Value)
        _G.AntiRagdoll = Value
while _G.AntiRagdoll do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true then
repeat task.wait() game.Players.LocalPlayer.Character.Torso.Anchored = true
until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
end
task.wait()
end
	end    
})
