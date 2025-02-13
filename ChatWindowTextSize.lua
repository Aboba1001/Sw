local TCS = game:GetService("TextChatService")

while not TCS:FindFirstChild("ChatWindowConfiguration") do
    task.wait()
end

local chatConfig = TCS.ChatWindowConfiguration

chatConfig.TextSize = 14