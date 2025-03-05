local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait() 
local Humanoid = Character:WaitForChild("Humanoid")
local Topbar = require(game.ReplicatedStorage.Topbar.Icon)

local Music = workspace.Music

local Settings = Topbar.new()
Settings:setImage()
Settings:setCaption("Open Settings")
Settings:align("Right")
Settings:setDropdown({
  Topbar.new()
  :setLabel("Music: ON", "Selected")
  :setLabel("Music: OFF", "Deselected")
  :bindEvent("selected", function()
    Music:Stop()
  end)
  :bindEvent("deselected", function()
    Music:Play()
  end),
  Topbar.new()
  :setLabel("Shadows: ON", "Selected")
  :setLabel("Music: OFF", "Deselected")
  :bindEvent("selected", function()
    game.Lighting.GlobalShadows = true
  end)
  :bindEvent("deselected", function()
    game.Lighting.GlobalShadows = false
  end)
})