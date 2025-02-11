local deathTxt = script.Parent
local TWS = game:GetService("TweenService")

local DeathMessages = {
  death = {
    "noob",
    "L",
    "skill issue",
    "gg ez",
    "lel",
    "xD",
    "200 iq",
    "💀",
    ":skull:",
    "glad i'm not you",
  },
  win = {
    "Sent {enemy} to Brazil.",
    "{enemy}'s death speedrun any%",
  },
  lose = {
    "{enemy} sent you to Brazil."
  }
}

local sounds = {18633296261, 9060084190}
local function playSound()
  local deathSound = Instance.new("Sound")
  deathSound.Parent = workspace
  deathSound.SoundId = "rbxasset://" .. tostring(sounds[math.random(1, #sounds)])
  deathSound:Play()
  
  local stTime = tick()
  while deathSound.TimeLength == 0 and tick() - stTime < 5 do
    task.wait(0.1)
  end
  task.wait(deathSound.TimeLength + 2)
  deathSound:Destroy()
end
local function playAnim()
  deathTxt.TextTransparency = 0
  local dfSize = deathTxt.Size
  local zoomSize = UDim2.new(dfSize.X.Scale * 1.1, 0, dfSize.Y.Scale * 1.1, 0)
  
  local zoomIn = TWS:Create(deathTxt, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = zoomSize})
  local zoomOut = TWS:Create(deathTxt, TweenInfo.new(0.1), Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = dfSize})
    zoomIn:Play()
    task.wait(zoomIn.TimeLength)
    zoomOut:Play()
    task.wait(4.5)
    local doTweenAlpha = TWS:Create(deathTxt, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1})
    doTweenAlpha:Play()
end
game.Players.PlayerAdded:Connect(function(player)
  player.CharacterAdded:Connect(function(character)
    local Humanoid = character:FindFirstChild("Humanoid")
    if Humanoid then
      Humanoid.Died:Connect(function()
        local Creator = Humanoid:FindFirstChild("creator")
        if Creator and Creator.Value then
          local Killer = Creator.Value
          if Killer:IsA("Player") then
            local rdDeathMsg = DeathMessages.lose[math.random(1,#DeathMessages.lose)]
            rdDeathMsg = rdDeathMsg:gsub("{enemy}", Killer.Name)
            deathTxt.Text = rdDeathMsg
            playAnim()
            playSound()
          end
        end
      end)
    end
  end)
end)