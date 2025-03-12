local Players = game:GetService("Players")

local TeleportService = GetService("TeleportService")
local Lighting = GetService("Lighting")
local BadgeService = GetService("BadgeService")

local prefix = "@"
local badgeID = 1285201741634350

local cmds = {
  [prefix.."rejoin"] = function()
    task.wait(1.5)
    TeleportService:Teleport(game.PlaceId, player)
  end
}