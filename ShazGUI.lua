local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/qshazz/Noneoftheabove/main/Source.lua"))()

local Window = redzlib:MakeWindow({
  Title = "Test",
  SubTitle = "hello",
  SaveFolder = "Redz Config"
})

--Tabs

local Tab1 = Window:MakeTab({"Tab 1", "cool"})

--Buttons

Tab1:AddButton({"Print", function()
print("Hello World!")
end})

local Toggle1 = Tab1:AddToggle({
  Name = "Speed",
  Description = "Idk",
  Default = false
})

Tab1:AddSlider({
  Name = "Speed",
  Min = 1,
  Max = 100,
  Increase = 1,
  Default = 16,
  Callback = function(Value)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end
})
