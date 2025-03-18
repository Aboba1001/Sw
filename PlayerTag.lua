local Players = game:GetService("Players")

local TCS = game:GetService("TextChatService")
local GS = game:GetService("GroupService")
local MS = game:GetService("MarketplaceService")

local Ranks = {
  ["Owner"] = {tag1Color = "rgb(128, 0, 128)", tag1 = "<font color='" .. ["Owner"].ownerTag .. "'>[👑Owner]"},
  ["Admin"] = {tag2Color = "rgb(255, 255, 0)", tag2 = "<font color='" .. tagColors[1] .. "'>[🛠️Admin]}",
  ["Tester"] = {tag3Color = "rgb(0, 200, 255)", tag3 = "<font color='" .. tagColors[2] .. "'>[🧪Tester]"},
  ["VIP"] = {tag4Color = "rgb(51, 56, 120", tag4 = "<font color='" .. tagColors[3] .. "'>[👑VIP]"}
}
local tagColors = {
  [0] = "rgb(128, 0, 128)",
  [1] = "rgb(255, 255, 0)"
  [2] = "rgb(0, 200, 255)",
  [3] = "rgb(51, 56, 120)",
  [4] = "rgb(255, 0, 0)"
}
local RankedUsers = {
  Owner = "giorgitsitsikashvili",
  CoOwner = "temurusus"
  ["Testers"] = {
    "UnbeliefPapyrus",
    "ElectroGocha_2019",
    "whittylabomba3punto0"
  },
  ["Admins"] = {
    "nooble92"
  },
}

TCS.OnIncomingMessage = function(Message: TextChatMessage)
  if Message.TextSource then
    local Player = game:GetService("Players"):GetPlayerByUserId(Message.TextSource.UserId)
    if table.find(RankedUsers, Player.Name) then
      Properties.PrefixText = Ranks
    end
  end
  return Properties;
end