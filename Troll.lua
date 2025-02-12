local object = game.FindFirstChild("BlackFigure")
local function figureAppear()
  local figureClone = object:Clone()
  figureClone.Parent = workspace
  figureClone:SetPrimaryPartCFrame(CFrame.new(Vector.new(0, 0, 0)))
end
task.wait(5)
figureAppear()