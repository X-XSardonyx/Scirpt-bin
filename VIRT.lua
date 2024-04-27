local Size = 4
local main = game.Players.X_XSardonyx.Character.HumanoidRootPart
local roomMax=6
local curr=1
local StairHeight=15 --30 in total bc 2 sets of stairs per room
local CurrPos=main.CFrame * CFrame.new(0,-2,-50)

for i,v in pairs(workspace:GetChildren()) do
if v.Name=="Model" then v:Destroy() end
end

local palette = {

Floor={
    C=BrickColor.new("Parsley green"),
    M=Enum.Material.Grass
},
Walls={
    C=BrickColor.new("Pastel Blue"),
    M=Enum.Material.SmoothPlastic
},
Ceiling={
    C=BrickColor.new("Pastel Blue"),
    M=Enum.Material.SmoothPlastic
},
Stairs={
    C=BrickColor.new("Navy blue"),
    M=Enum.Material.WoodPlanks
}
}

function BuildStairs(M)

    local stairs = Instance.new("Model", M)
stairs.Name = "Stairs"

for i=1,StairHeight-1 do
local p = Instance.new("Part", stairs)
p.Anchored = true
p.Material = palette.Stairs.M
p.BrickColor = palette.Stairs.C
p.CFrame = CurrPos*CFrame.new(0,(M.Floor.Size.Y)+i-1,((M.Floor.Size.Z/2)-.5)+i)
p.Size=Vector3.new(7,1,1)

end

local p = Instance.new("Part", stairs)
p.Anchored = true
p.Material = palette.Stairs.M
p.BrickColor = palette.Stairs.C
p.CFrame = CurrPos*CFrame.new(3.5,(M.Floor.Size.Y)+StairHeight-1,((M.Floor.Size.Z/2)-.5)+StairHeight + 3)
p.Size=Vector3.new(14,1,7)

for i=1,StairHeight-1 do
local p = Instance.new("Part", stairs)
p.Anchored = true
p.Material = palette.Stairs.M
p.BrickColor = palette.Stairs.C
p.CFrame=CurrPos*CFrame.new(7,(M.Floor.Size.Y)+StairHeight-1,((M.Floor.Size.Z/2)-.5)+StairHeight)* CFrame.new(0,i,-i)
p.Size=Vector3.new(7,1,1)

end

    
end

function Room()
    local M=Instance.new("Model", Workspace)
local f=Instance.new("Part", M)
f.Anchored = true
f.Name="Floor"
f.Material = palette.Floor.M
f.BrickColor = palette.Floor.C
f.Size = Vector3.new(10,(1/Size),10)*Size
f.CFrame=CurrPos

BuildStairs(M)

CurrPos=CurrPos*CFrame.new(0,(4*Size)+14,0)


end

for i=1,5 do
    Room()
end
