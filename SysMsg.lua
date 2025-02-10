local msg = {
  "e\ dance",
  "Make sure to invite your friends! Who knows, maybe they will join?",
  "h",
  ""
}

local channel = TCS.TextChannels:FindFirstChild("RBXGeneral")
while true do
  channel:DisplaySystemMessage("[System]: " ..msg[math.random(1,#msg)])
  task.wait(5*60)
end