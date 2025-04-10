local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/qshazz/Noneoftheabove/main/Source.lua"))()

local Window = redzlib:MakeWindow({
    Title = "redz Hub : Blox Fruits",
    SubTitle = "by redz9999",
    SaveFolder = "testando | redz lib v5.lua"
})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://71014873973869", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(35, 1) },
})

local Tab1 = Window:MakeTab({"Um", "cherry"})
redzlib:SetTheme("Dark")
Window:SelectTab(Tab1)

Tab1:AddDiscordInvite({
    Name = "Name Hub",
    Description = "Join server",
    Logo = "rbxassetid://18751483361",
    Invite = "Link discord invite",
})

local Section = Tab1:AddSection({"Section"})

local Paragraph = Tab1:AddParagraph({"Paragraph", "This is a Paragraph\nSecond Line"})

-- Uncomment if you want to use the dialog
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

Tab1:AddButton({
    Name = "Print", 
    Callback = function()
        print("Hello World!")
    end
})

local Toggle1 = Tab1:AddToggle({
    Name = "Toggle",
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
    Flag = "dropdown teste",
    Callback = function(Value)
        print("Selected:", Value)
    end
})

Tab1:AddTextBox({
    Name = "Name item",
    Description = "1 Item on 1 Server", 
    PlaceholderText = "item only",
    Callback = function(Value)
        print("Text entered:", Value)
    end
})
