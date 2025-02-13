local TCS = game:GetServive("TextChatService")
local BubbleChat = TCS.BubbleChatConfiguration
local ChatWindow = TCS.FindFirstChild("ChatWindow")

local ChatBubbleBackgroundColor = Color3.fromRGB(255,255,255)
local ChatBubbleTxtColor = Color3.fromRGB(0,0,0)

BubbleChat.TextColor3 = ChatBubbleTxtColor
BubbleChat.BackgroundColor3 = ChatBubbleBackgroundColor
BubbleChat.FontFace(Font.new("rbxasset://fonts/families/FredokaOne.json"))

ChatWindow.FontFace(Font.new("rbxasset://fonts/families/FredokaOne.json"))