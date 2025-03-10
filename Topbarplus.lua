local Character = Player.Character or Player.CharacterAdded:Wait() 
local Player = game.Players.LocalPlayer
local Humanoid = Character:WaitForChild("Humanoid")
local Topbar = require(game.ReplicatedStorage.Topbar.Icon)

local Music = workspace.Music

local MainGui = Player:WaitForChild("PlayerGui"):WaitForChild("Main")
local SettingsMenu = MainGui:WaitForChild("Settings")
local CommandsMenu = MainGui:WaitForChild("Commands")
local AchievementsMenu = MainGui:WaitForChild("Achievements")

local Settings = Topbar.new()
Settings:setImage()
Settings:align("Right")
Settings:oneClick(true)
Settings:bindEvent("deselected", function()
  SettingsMenu.visible = not SettingsMenu.visible
end)

local Commands = Topbar.new()
Commands:setImage(70420546735913)
Commands:align("Right")
Commands:oneClick(true)
