local CurrPos = CFrame.new(0,1,50)
local Size = 4
--local main = owner.Character.HumanoidRootPart
local roomMax=6
local curr=1
local StairHeight=15 --30 in total bc 2 sets of stairs per room

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

function BuildStairs()

    print("placeholder")
    
end

function Room()
    local M=Instance.new("Model", s)
local f=Instance.new("Part", M)
f.Anchored = true
f.Material = palette.Floor.M
f.BrickColor = palette.Floor.C
f.Size = Vector3.new(5,1,5)*Size
f.CFrame=CurrPos


CurrPos=CurrPos*CFrame.new(0,(4*Size)+30,0)
end

for i=1,5 do
    Room()
end
