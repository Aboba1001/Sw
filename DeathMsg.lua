local TWS = game:GetService("TweenService")

local deathTxt = script.Parent

local sounds = {}
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
local function TextAnimation()
  TWS:Create(deathTxt, TweenInfo.new(0.1), {Size = })
  wait(5)
  TWS:Create(deathTxt, TweenInfo.new(
    1,
    Enum.EasingStyle.Quad, EnumEasingDirection.Out,
    0, false, 0)
end
game.Players.PlayerAdded:Connect(function(player)
  player.CharacterAdded:Connect(function(character)
  local Humanoid = character:FindFirstChild("Humanoid")
  if Humanoid then
    humanoid.Died:Connect(function()
      local Creator = Humanoid:FindFirstChild("creator")
      if Creator and Creator.Value then
        local Killer = Creator.value
        if Killer:IsA("Player") then
          local rdDeathMsg = DeathMessages.lose[math.random(1,#DeathMessages.lose)]
          rdDeathMsg = rdDeathMsg:gsub("{enemy}", Killer.Name)
          print(rdDeathMsg)
          deathTxt.Text = rdDeathMsg
        end
      end
    end)
  end
end)