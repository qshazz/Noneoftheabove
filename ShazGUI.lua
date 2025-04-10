-- Load the Redz Hub UI Library
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/main/Redzhubui"))()

-- Create main window
local Window = redzlib:MakeWindow({
    Title = "redz Hub : Blox Fruits",
    SubTitle = "by redz9999",
    SaveFolder = "RedzHubConfig"
})

-- Add minimize button (optional styling)
Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://7101487387", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 35) },
})

-- Create tab
local Tab1 = Window:MakeTab({
    Name = "Main Tab",
    Icon = "cherry" -- Using text icon
})

-- Set theme and select tab
redzlib:SetTheme("Dark")
Window:SelectTab(Tab1)

-- Add section
local Section = Tab1:AddSection({
    Name = "Main Features"
})

-- Add paragraph
Tab1:AddParagraph({
    Title = "Paragraph",
    Content = "This is a Paragraph\nSecond Line"
})

-- Discord Invite (optional)
Tab1:AddDiscordInvite({
    Name = "Name Hub",
    Description = "Join server",
    Logo = "rbxassetid://18751483361",
    Invite = "YourDiscordInviteCodeHere" -- Replace with your invite code
})

-- Button
Tab1:AddButton({
    Name = "Print",
    Callback = function()
        print("Hello World!")
    end
})

-- Toggle with callback
local Toggle1 = Tab1:AddToggle({
    Name = "Toggle",
    Description = "This is a Toggle Example",
    Default = false,
    Callback = function(Value)
        print("Toggle value:", Value)
    end
})

-- Slider
Tab1:AddSlider({
    Name = "Speed",
    Min = 1,
    Max = 100,
    Increase = 1,
    Default = 16,
    Callback = function(Value)
        print("Speed:", Value)
    end
})

-- Dropdown
Tab1:AddDropdown({
    Name = "Players List",
    Description = "Select the Number",
    Options = {"one", "two", "three"},
    Default = "two",
    Callback = function(Value)
        print("Dropdown selected:", Value)
    end
})

-- Textbox
Tab1:AddTextBox({
    Name = "Name item",
    Description = "1 Item on 1 Server",
    PlaceholderText = "item only",
    Callback = function(Value)
        print("Text input:", Value)
    end
})

-- Dialog popup (moved after all elements to prevent early triggering)
-- Uncomment if you want to show a dialog
--[[
Window:Dialog({
    Title = "Dialog",
    Text = "This is a Dialog",
    Options = {
        {"Confirm", function() print("Confirmed!") end},
        {"Maybe", function() print("Maybe...") end},
        {"Cancel", function() print("Canceled") end}
    }
})
]]
