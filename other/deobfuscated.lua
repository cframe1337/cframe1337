--[[
Credentials:
    stixzz,
    pcall aka x74,
    and some ai.

Leak by t.me/jaranvip
]]--

-- ________ Hub for Counter Blox
-- Script by _____

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

-- Load Rayfield UI Library
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua"))()

-- Create Main Window
local Window = Rayfield:CreateWindow({
    Name = "_______.hub",
    LoadingTitle = "Loading Script",
    LoadingSubtitle = "By _____",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = "CounterBlox",
        FileName = "FizzCounterBlox"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = false
    },
    KeySystem = true,
    KeySettings = {
        Title = "Key System",
        Subtitle = "Telegram System",
        Note = "t.me/_______",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"free2all"}
    }
})

-- Combat Tab
local CombatTab = Window:CreateTab("Combat", 4483362458)

-- Aimbot Section
local AimbotSection = CombatTab:CreateSection("Aimbot")
local AimbotToggle = CombatTab:CreateToggle({
    Name = "Aimbot",
    CurrentValue = false,
    Flag = "Aimbot",
    Callback = function(Value)
        _G.Enabled = Value
    end
})

-- Aimbot Settings
local FOVSlider = CombatTab:CreateSlider({
    Name = "FOV Radius",
    Range = {0, 2000},
    Increment = 1,
    CurrentValue = 150,
    Flag = "FOVRadius",
    Callback = function(Value)
        _G.FOVRadius = Value
    end
})
local FOVColor = CombatTab:CreateColorPicker({
    Name = "FOV Color",
    Color = Color3.fromRGB(200, 200, 200),
    Flag = "FOVColor",
    Callback = function(Value)
        _G.FOVColor = Value
    end
})
local UseFOV = CombatTab:CreateToggle({
    Name = "Use FOV",
    CurrentValue = false,
    Flag = "UseFOV",
    Callback = function(Value)
        _G.UseFOV = Value
    end
})
local TeamCheck = CombatTab:CreateToggle({
    Name = "Team Check",
    CurrentValue = false,
    Flag = "TeamCheck",
    Callback = function(Value)
        _G.TeamCheck = Value
    end
})

-- Silent Aim Section
local SilentSection = CombatTab:CreateSection("Silent Aimbot")
local SilentToggle = CombatTab:CreateToggle({
    Name = "Silent(Only Private Version)",
    CurrentValue = false,
    Flag = "Silent",
    Callback = function(Value)
        _G.Silent = Value
    end
})

-- Character Section
local CharacterSection = CombatTab:CreateSection("Character")
local SpinbotToggle = CombatTab:CreateToggle({
    Name = "Spinbot",
    CurrentValue = false,
    Flag = "Spinbot",
    Callback = function(Value)
        _G.Spinbot = Value
    end
})

-- Gun Modifications
local GunSection = CombatTab:CreateSection("Guns")
local NoFireRate = CombatTab:CreateButton({
    Name = "No Fire Rate",
    Callback = function()
        for _, weapon in ipairs(ReplicatedStorage.Weapons:GetChildren()) do
            if weapon:FindFirstChild("FireRate") then
                weapon.FireRate.Value = 0
            end
        end
    end
})

local NoSpread = CombatTab:CreateButton({
    Name = "No Spread",
    Callback = function()
        for _, weapon in ipairs(ReplicatedStorage.Weapons:GetChildren()) do
            if weapon:FindFirstChild("Spread") then
                weapon.Spread.Value = 0
            end
        end
    end
})

local InfiniteAmmo = CombatTab:CreateButton({
    Name = "Infinite Ammo",
    Callback = function()
        for _, weapon in ipairs(ReplicatedStorage.Weapons:GetChildren()) do
            if weapon:FindFirstChild("Ammo") then
                weapon.Ammo.Value = 999999
                weapon.StoredAmmo.Value = 999999
            end
        end
    end
})

-- Movement Section
local MovementSection = CombatTab:CreateSection("Movement")
local BhopToggle = CombatTab:CreateToggle({
    Name = "Auto Bhop",
    CurrentValue = false,
    Flag = "Bhop",
    Callback = function(Value)
        _G.Bhop = Value
    end
})
local BhopSpeed = CombatTab:CreateSlider({
    Name = "Bhop Speed",
    Range = {0, 300},
    Increment = 1,
    CurrentValue = 20,
    Flag = "BhopSpeed",
    Callback = function(Value)
        _G.BhopSpeed = Value
    end
})

-- Main Loop
RunService.RenderStepped:Connect(function()
    if _G.Bhop and UserInputService:IsKeyDown(Enum.KeyCode.Space) then
        LocalPlayer.Character.Humanoid.Jump = true
        local moveDirection = LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * _G.BhopSpeed
        LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(moveDirection.X, LocalPlayer.Character.HumanoidRootPart.Velocity.Y, moveDirection.Z)
    end
    
    if _G.Spinbot then
        LocalPlayer.Character.Humanoid.AutoRotate = false
        LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(_G.Speed or 50), 0)
    end
end)

-- Initialize ESP
local ESP = loadstring(
    game:HttpGet("https://raw.githubusercontent.com/cframe1337/cframe1337/refs/heads/main/other/esp.lua")
)() -- original url replaced for safe loading in future
ESP.Enabled = true
ESP.ShowBox = true
ESP.BoxType = "Corner Box Esp"
ESP.ShowName = true
ESP.ShowHealth = true
ESP.ShowTracer = false
ESP.ShowDistance = true
ESP.TeamCheck = true
