local OptionButton = script.Parent
local isOn = true

OptionButton.MouseButton1click:Connect(function()
  if isOn == true then
    isOn = false
    OptionButton.Text = "Less Lag: [Off]"
    game.Lighting.GlobalShadows = true
    else
      isOn = true
      OptionButton.Text = "Less Lag: [On]"
      game.Lighting.GlobalShadows = false
  end
end)