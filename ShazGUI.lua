-- Load the Redz Hub UI Library
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/qshazz/Noneoftheabove/main/Source.lua"))()

-- Create main window
local Window = redzlib:MakeWindow({
    Title = "redz Hub : Blox Fruits",
    SubTitle = "by redz9999",
    SaveFolder = "RedzHubConfig"
})

-- Add minimize button (optional styling)
Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://71014873973869", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0.35, 1) },
})

-- Create tab
local Tab1 = Window:MakeTab({
    Name = "Main Tab",
    Icon = "cherry" -- You can use an image ID here instead of text if needed
})

-- Set theme and select tab
redzlib:SetTheme("Dark")
Window:SelectTab(Tab1)

-- Discord Invite (optional)
Tab1:AddDiscordInvite({
    Name = "Name Hub",
    Description = "Join server",
    Logo = "rbxassetid://18751483361",
    Invite = "YourDiscordInviteCodeHere" -- Just the invite code, not full URL
})

-- Add section
local Section = Tab1:AddSection({
    Name = "Main Features"
})

-- Add paragraph
Tab1:AddParagraph({
    Title = "Paragraph",
    Content = "This is a Paragraph\nSecond Line"
})

-- Dialog popup
Window:Dialog({
    Title = "Dialog",
    Text = "This is a Dialog",
    Options = {
        {"Confirm", function() print("Confirmed!") end},
        {"Maybe", function() print("Maybe...") end},
        {"Cancel", function() print("Canceled") end}
    }
})

-- Button
Tab1:AddButton({
    Name = "Print",
    Callback = function()
        print("Hello World!")
    end
})

-- Toggle with callback
Tab1:AddToggle({
    Name = "Toggle",
    Description = "This is a <font color='rgb(88, 101, 242)'>Toggle</font> Example",
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
    Description = "Select the <font color='rgb(88, 101, 242)'>Number</font>",
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
