-- Day/night
local Lighting = game:GetService("Lighting")

local TextLabel = script.Parent
local ClickSFX = workspace.SFX.ClickSFX

local isNight = false

TextLabel.Text = "Time : Day"

TextLabel.MouseButton1Click:Connect(function()
  ClickSFX:Play()
  if not isNight then
    TextLabel.Text = "Time : Day"
    Lighting.ClockTime = 14
    isNight = true
    else
      TextLabel.Text = "Time : Night"
      Lighting.ClockTime = 0
      isNight = false
  end
end)
  
-- Shadows
local Lighting = game:GetService("Lighting")

local TextLabel = script.Parent
local isShadows = false

TextLabel.Text = "Shadows : ON"

TextLabel.MouseButton1Click:Connect(function()
  ClickSFX:Play()
  if not isShadows then
    TextLabel.Text = "Shadows : ON"
    Lighting.GlobalShadows = true
    else
      TextLabel.Text = "Shadows : OFF"
      Lighting.GlobalShadows = false
      isShadows = false
  end
end)

-- Vibrations
local HS = GetService("HapticService")
local UIS = GetService("UserInputService")

local TextLabel = script.Parent
local isVibrated = true

TextLabel.Text = "Vibration : ON"
TextLabel.MouseButton1Click:Connect(function()
  ClickSFX:Play()
  if isVibrated then
    TextLabel.Text = "Vibration: OFF"
    isVibrated = false
  else
    TextLabel.Text = "Vibration: ON"
    isVibrated = true
  end
end)