OrionLib:MakeNotification({
	Name = "ShazGUI",
	Content = "UI Loaded Successfully!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

-- Main Window
local Window = OrionLib:MakeWindow({
	Name = "ShazGUI",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "OrionExample"
})

-- Player Tab
local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
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
	Name = "Settings",
	Icon = "rbxassetid://4483345998",
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
