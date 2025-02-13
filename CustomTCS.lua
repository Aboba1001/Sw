local TCS = game:GetService("TextChatService")
local BubbleChat = TCS.BubbleChatConfiguration
local ChatWindow = TCS.ChatWindowConfiguration
local ChatInputBar = TCS.ChatInputBarConfiguration

local ChatBubbleBackgroundColor = Color3.fromRGB(255,255,255)
local ChatBubbleTxtColor = Color3.fromRGB(0,0,0)

local font = Font.new("rbxasset://fonts/families/FredokaOne.json")
BubbleChat.TextColor3 = ChatBubbleTxtColor
BubbleChat.BackgroundColor3 = ChatBubbleBackgroundColor

BubbleChat.FontFace = font
ChatWindow.FontFace = font
ChatInputBar.FontFace = font