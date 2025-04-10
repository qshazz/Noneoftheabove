local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/qshazz/Noneoftheabove/main/Source.lua"))()

local Window = redzlib:MakeWindow({
  Title = "redz Hub : Blox Fruits",
  SubTitle = "by redz9999",
  SaveFolder = "RedzHubConfig"
})

-- Add minimize button
Window:AddMinimizeButton({
  Button = { Image = "rbxassetid://7101487387", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 35) }
})

-- Set theme
redzlib:SetTheme("Dark")

-- Create tab using the correct pattern
local Tab1 = Window:MakeTab({"Main Tab", "cherry"})

-- Select tab
Window:SelectTab(Tab1)

-- Add section using the correct pattern
local Section = Tab1:AddSection({"Main Features"})

-- Add paragraph using the correct pattern
local Paragraph = Tab1:AddParagraph({"Information", "This is a Paragraph\nSecond Line"})

-- Add discord invite
Tab1:AddDiscordInvite({
  Name = "Name Hub",
  Description = "Join server",
  Logo = "rbxassetid://18751483361",
  Invite = "YourDiscordInviteCodeHere" -- Replace with your invite code
})

-- Add button using the correct pattern
Tab1:AddButton({"Print", function()
  print("Hello World!")
end})

-- Add toggle
local Toggle1 = Tab1:AddToggle({
  Name = "Toggle",
  Description = "This is a Toggle Example",
  Default = false,
  Callback = function(Value)
    print("Toggle value:", Value)
  end
})

-- Add slider
Tab1:AddSlider({
  Name = "Speed",
  Min = 1,
  Max = 100,
  Increase = 1,
  Default = 16,
  Callback = function(Value)
    print("Speed:", Value)
    -- Uncomment if you want to change player's speed
    -- game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end
})

-- Add dropdown
Tab1:AddDropdown({
  Name = "Players List",
  Description = "Select the Number",
  Options = {"one", "two", "three"},
  Default = "two",
  Callback = function(Value)
    print("Dropdown selected:", Value)
  end
})

-- Add textbox
Tab1:AddTextBox({
  Name = "Name item",
  Description = "1 Item on 1 Server",
  PlaceholderText = "item only",
  Callback = function(Value)
    print("Text input:", Value)
  end
})

-- Dialog (uncomment if you want to use it)
--[[
local Dialog = Window:Dialog({
  Title = "Dialog",
  Text = "This is a Dialog",
  Options = {
    {"Confirm", function() print("Confirmed!") end},
    {"Maybe", function() print("Maybe...") end},
    {"Cancel", function() print("Canceled") end}
  }
})
]]
