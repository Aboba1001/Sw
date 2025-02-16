local BS = game:GetService("BadgeService")

local milestones = {
  {kills = 1, badgeID = 3995895027742105},
  {kills = 25, badgeID = 3995895027742105},
  {kills = 50, badgeID = 3995895027742105},
  {kills = 100, badgeID = 3995895027742105},
  {kills = 250, badgeID = 3995895027742105},
  {kills = 500, badgeID = 3995895027742105}
}

local function awardBadge(player, badgeId)
  if not BS:UserHasBadgeASync(player.UserId, badgeId) then
    BS:AwardBadge(player.UserId, badgeId)
  end
end
local function checkForBadges(player, kills)
  for _, milestone in ipairs(milestones) do
    if kills >= milestone.kills and not BS:UserHasBadgeASync(player.UserId, milestone.badgeId) then
      awardBadge(player, milestonr.badgeID)
    end
  end
end
game.Players.PlayerAdded:Connect(function(player)
  local leaderstats = player:WaitForChild("Leaderstats")
  local kills = leaderstats:WaitForChild("Kills")
  
  kills.Changed:Connect(function(newKills)
    checkForBadges(player, newKills)
  end)
end)