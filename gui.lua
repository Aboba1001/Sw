local gui = script.Parent
local guiFrame = script.Parent.SettingsFrame

local ts = game:GetService("TweenService")
local blur = game:GetService("Lighting"):FindFirstChild("BlurEffect")

local defSize = gui.Size
local scale = 1.1
local TweenTime = 0.1

gui.Mousebutton1Click:Connect(function()
  guiFrame.visible = true
  blur.Enabled = true
end

local function scaleGui()
  local newSize = UDim2.new(defSize.X.Scale, defSize.X.Offset * scale, defSize.Y.Scale, defSize.Y.Offset * scale)
  ts:Create(gui, TweenInfo.new(TweenTime), {Size = newSize}):Play()
end
local function scaleDown()
  ts:Create(gui, TweenInfo.new(TweenTime), {Size = defSize}):Play()
end

gui.MouseEnter:Connect(scaleGui)
gui.MouseLeave:Connect(scaleDown)