local Players = game:GetService("Players")

local TeleportService = GetService("TeleportService")
local Lighting = GetService("Lighting")
local BadgeService = GetService("BadgeService")

local prefix = "%"

local admin_list = {
  "",
  "",
  "",
  ""
}

local cmds = {
  [prefix.."kick"] = function(targetPlr, reason)
    task.wait(1.5)
    targetPlr:Kick(targetPlr, reason)
  end,
  [prefix.."crash"] = function()
    task.wait(1.5)
  end,
  [prefix.."tpAll"] = function()
    task.wait(1.5)
  end,
  [prefix.."awardBadge"] = function(targetPlr)
    task.wait(1.5)
    targetPlr:awardBadge(targetId)
}