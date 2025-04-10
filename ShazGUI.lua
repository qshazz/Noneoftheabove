local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/qshazz/Noneoftheabove/main/Source.lua"))()

local Window = redzlib:MakeWindow({
  Title = "ShazGUI",
  SubTitle = "By qshazz",
  SaveFolder = "ShazGUIC"
})

-- Add minimize button (optional styling)
Window:AddMinimizeButton({
  Button = { Image = "rbxassetid://71014873973869", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0.35, 1) },
})

--Tabs
local Tab1 = Window:MakeTab({"Tab 1", "cherry"})

-- Discord Invite (optional)
Tab1:AddDiscordInvite({
  Name = "ShazGUI Hub",
  Description = "Join Discord",
  Logo = "rbxassetid://18751483361",
  Invite = "YourDiscordInviteCodeHere" -- Just the invite code, not full URL
})

--Buttons
local Button1 = Tab1:AddButton({"Print", function()
print("Hello World!")
end})

local Toggle1 = Tab1:AddToggle({
  Name = "Speed",
  Description = "Idk",
  Default = false
})

Local Slider1 = Tab1:AddSlider({
  Name = "Speed",
  Min = 1,
  Max = 100,
  Increase = 1,
  Default = 16,
  Callback = function(Value)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end
})
