local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/qshazz/Noneoftheabove/main/Source.lua"))()

local Window = redzlib:MakeWindow({
    Title = "redz Hub : Blox Fruits",
    SubTitle = "by redz9999",
    SaveFolder = "redz hub bf"
})

-- Fixed asset ID (shortened to a more realistic length)
Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://7101487387", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 35) }, -- Fixed CornerRadius format
})

local Tab1 = Window:MakeTab({"Main", "cherry"}) -- Changed "Um" to "Main" for clarity
redzlib:SetTheme("Dark")
Window:SelectTab(Tab1)

local Section = Tab1:AddSection({"Main Section"}) -- Added a more descriptive section name

Tab1:AddDiscordInvite({
    Name = "Join Discord",
    Description = "Join our server",
    Logo = "rbxassetid://18751483361",
    Invite = "discord.gg/yourserver", -- Replace with your actual invite
})

local Paragraph = Tab1:AddParagraph({"Information", "This is a Paragraph\nSecond Line"})

Tab1:AddButton({
    Name = "Print Hello", 
    Callback = function()
        print("Hello World!")
    end
})

local Toggle1 = Tab1:AddToggle({
    Name = "Toggle Feature",
    Description = "This is a <font color='rgb(88, 101, 242)'>Toggle</font> Example",
    Default = false,
    Callback = function(Value)
        print("Toggle state:", Value)
    end
})

Tab1:AddSlider({
    Name = "Speed",
    Min = 1,
    Max = 100,
    Increase = 1,
    Default = 16,
    Callback = function(Value)
        print("Speed set to:", Value)
    end
})

local Dropdown = Tab1:AddDropdown({
    Name = "Players List",
    Description = "Select the <font color='rgb(88, 101, 242)'>Number</font>",
    Options = {"one", "two", "three"},
    Default = "two",
    Flag = "dropdown_test", -- Changed to use underscore instead of space
    Callback = function(Value)
        print("Selected:", Value)
    end
})

Tab1:AddTextBox({
    Name = "Item Name",
    Description = "1 Item on 1 Server", 
    PlaceholderText = "Enter item name",
    Callback = function(Value)
        print("Text entered:", Value)
    end
})

-- If you want to use the dialog, uncomment this:
--[[
local Dialog = Window:Dialog({
    Title = "Dialog",
    Text = "This is a Dialog",
    Options = {
        {"Confirm", function()
            print("Confirmed")
        end},
        {"Maybe", function()
            print("Maybe")
        end},
        {"Cancel", function()
            print("Cancelled")
        end}
    }
})
]]
