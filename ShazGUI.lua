local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/qshazz/Noneoftheabove/main/Source.lua"))()

OrionLib:MakeNotification({
	Name = "Orion Example",
	Content = "UI Loaded Successfully!",
	Time = 5
})

-- Main Window
local Window = OrionLib:MakeWindow({
	Name = "Orion Example",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "OrionExample"
})

-- Player Tab
local PlayerTab = Window:MakeTab({
	Name = "Player",
	PremiumOnly = false
})

local PlayerSection = PlayerTab:AddSection({
	Name = "Player Settings"
})

PlayerSection:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 100,
	Default = 16,
	Color = Color3.fromRGB(255, 255, 255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

-- Settings Tab
local SettingsTab = Window:MakeTab({
	Name = "Setting",
	PremiumOnly = false
})

local SettingsSection = SettingsTab:AddSection({
	Name = "UI Settings"
})

SettingsSection:AddButton({
	Name = "Destroy UI",
	Callback = function()
		OrionLib:Destroy()
	end    
})

-- Init UI
OrionLib:Init()
