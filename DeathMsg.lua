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
    "📸📸📸",
    "what is bro cooking"
  },
  win = {
    "Killed {enemy}"
    "Sent {enemy} to Brazil.",
    "{enemy}'s death speedrun any%",
    "{enemy} did not cook.",
    "{enemy} posted cringe",
    "{enemy} ran out of Ultra Instinct",
    "{enemy} got caught in 4k",
    "{enemy} fell for the oldest trick in book",
  },
  lose = {
    "{enemy} killed you"
    "{enemy} sent you to Brazil."
    "{enemy} caught you in 4k",
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
    task.wait(0.1)
    zoomOut:Play()
    task.wait(4.5)
    local doTweenAlpha = TWS:Create(deathTxt, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1})
    doTweenAlpha:Play()
end
game.Players.PlayerAdded:Connect(function(player)