-- Load the Redz Hub UI Library
local RedzHub = loadstring(game:HttpGet("https://raw.githubusercontent.com/qshazz/Noneoftheabove/main/Source.lua"))()

-- Create the main window
local Window = RedzHub:CreateWindow({
    Name = "Redz Hub Example",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "RedzHubConfig"
})

-- Create a tab
local Tab1 = Window:CreateTab({
    Name = "Main Tab",
    Icon = "rbxassetid://4483345998"
})

-- Add a section to the tab
local Section1 = Tab1:AddSection({
    Name = "Main Section"
})

-- Add a button to the section
Section1:AddButton({
    Name = "Print Message",
    Callback = function()
        print("Hello from Redz Hub!")
    end
})

-- Add a toggle to the section
local Toggle1 = Section1:AddToggle({
    Name = "Toggle Example",
    Description = "This is a toggle example",
    Default = false,
    Callback = function(Value)
        if Value then
            print("Toggle is ON")
        else
            print("Toggle is OFF")
        end
    end
})

-- Add a slider to the section
Section1:AddSlider({
    Name = "Speed",
    Min = 1,
    Max = 100,
    Default = 16,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end
})

-- Add a dropdown to the section
Section1:AddDropdown({
    Name = "Select Option",
    Options = {"Option 1", "Option 2", "Option 3"},
    Default = "Option 1",
    Callback = function(Value)
        print("Selected:", Value)
    end
})

-- Add a textbox to the section
Section1:AddTextBox({
    Name = "Input Text",
    PlaceholderText = "Type here...",
    Callback = function(Value)
        print("Input:", Value)
    end
})
