-- First, let's verify the library loads properly
local success, redzlib = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/qshazz/Noneoftheabove/main/Source.lua"))()
end)

if not success or not redzlib then
    warn("Failed to load redzlib!")
    return
end

-- Create window with error handling
local success, Window = pcall(function()
    return redzlib:MakeWindow({
        Title = "redz Hub : Blox Fruits",
        SubTitle = "by redz9999",
        SaveFolder = "testando | redz lib v5.lua"
    })
end)

if not success or not Window then
    warn("Failed to create window!")
    return
end

-- Add minimize button (optional)
pcall(function()
    Window:AddMinimizeButton({
        Button = { Image = "rbxassetid://71014873973869", BackgroundTransparency = 0 },
        Corner = { CornerRadius = UDim.new(35, 1) },
    })
end)

-- Create tab
local Tab1 = Window:MakeTab({"Main", "rbxassetid://your_icon_id_here"}) -- Added icon ID parameter
redzlib:SetTheme("Dark")

-- Let's try adding elements with different syntax approaches
local function addElements()
    -- Button with simple syntax
    local btn = Tab1:AddButton({
        Name = "Test Button",
        Callback = function()
            print("Button pressed!")
        end
    })
    
    -- Toggle with more complete parameters
    local toggle = Tab1:AddToggle({
        Name = "Test Toggle",
        Description = "Toggle description",
        Default = false,
        Callback = function(state)
            print("Toggle state:", state)
        end
    })
    
    -- Simple label to verify elements are being added
    Tab1:AddLabel({
        Text = "If you see this, elements are loading"
    })
    
    -- Add a simple slider
    Tab1:AddSlider({
        Name = "Test Slider",
        Min = 0,
        Max = 100,
        Default = 50,
        Callback = function(value)
            print("Slider value:", value)
        end
    })
end

-- Try adding elements with error handling
local success, err = pcall(addElements)
if not success then
    warn("Failed to add elements:", err)
    
    -- Try alternative syntax
    pcall(function()
        Tab1:AddLabel({Text = "Error loading elements. Trying alternative..."})
        
        -- Alternative button syntax
        Tab1:Button("Alt Button", function()
            print("Alt button pressed")
        end)
    end)
end

-- Verify tab selection
Window:SelectTab(Tab1)
