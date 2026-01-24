local Library = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.lua"
))()

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local Window = redzlib:MakeWindow({
    Title = "Redz UI",
    SubTitle = "Advanced Example",
    SaveFolder = "RedzConfig"
})

local MainTab = Window:MakeTab({ "Main", "Dashboard" })
local SettingsTab = Window:MakeTab({ "Settings", "Config" })

local State = {
    SpeedEnabled = false,
    SpeedValue = 16
}

MainTab:AddToggle({
    Name = "Enable Speed Control",
    Description = "Toggle speed system",
    Default = false,
    Callback = function(Value)
        State.SpeedEnabled = Value
        redzlib:Notify({
            Title = "Speed Control",
            Content = Value and "Enabled" or "Disabled",
            Duration = 2
        })
    end
})

MainTab:AddSlider({
    Name = "Speed Value",
    Min = 8,
    Max = 50,
    Increase = 1,
    Default = 16,
    Callback = function(Value)
        State.SpeedValue = Value
        if State.SpeedEnabled then
            local char = Player.Character
            if char and char:FindFirstChild("Humanoid") then
                char.Humanoid.WalkSpeed = Value
            end
        end
    end
})

SettingsTab:AddButton({
    "Reset Character",
    function()
        local char = Player.Character
        if char then
            char:BreakJoints()
        end
    end
})

SettingsTab:AddButton({
    "Show Notification",
    function()
        redzlib:Notify({
            Title = "Redz-UI",
            Content = "Advanced example notification",
            Duration = 3
        })
    end
})

Player.CharacterAdded:Connect(function(char)
    char:WaitForChild("Humanoid")
    if State.SpeedEnabled then
        char.Humanoid.WalkSpeed = State.SpeedValue
    end
end)

