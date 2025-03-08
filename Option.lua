-- Day/night
local Lighting = game:GetService("Lighting")

local isDay = false
local TextLabel = script.Parent

TextLabel.MouseButton1Click:Connect(function()
  if not isDay then
    TextLabel.Text = "Time: Day"
    Lighting.ClockTime = 10
    isDay = true
    else
      TextLabel.Text = "Time: Night"
      Lighting.ClockTime = 0
      isDay = false
  end
end)
  
-- Shadows
local Lighting = game:GetService("Lighting")

local isShadows = false
local TextLabel = script.Parent

TextLabel.MouseButton1Click:Connect(function()
  if not isShadows then
    TextLabel.Text = "Shadows: ON"
    Lighting.GlobalShadows = true
    else
      TextLabel.Text = "Shadows: OFF"
      Lighting.GlobalShadows = false
      isShadows = false
  end
end)