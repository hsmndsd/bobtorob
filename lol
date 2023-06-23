game.Workspace.pryoxis2.Humanoid:LoadAnimation(game.StarterPlayer.StarterPlayerScripts.VFXListener.RobTransform.transformanim):Play()
game.StarterPlayer.StarterPlayerScripts.VFXListener.RobTransform.gulp:Play()
local thing = game.StarterPlayer.StarterPlayerScripts.VFXListener.RobTransform
local rob = game.StarterPlayer.StarterPlayerScripts.VFXListener.RobTransform.rob:Clone()
local you = game.Workspace.pryoxis2
local weld = Instance.new("WeldConstraint",thing.Part)
local parts = thing.Part.blast:GetChildren()
local parts2 = thing.Part.Attachment:GetChildren()
local parts3 = thing.Part.pull:GetChildren()
thing.Part.Transparency = 1
for i,v in pairs(thing.Part.blast:GetDescendants()) do
if v:IsA("ParticleEmitter") then
v.Enabled = false
end
end
for i,v in pairs(thing.Part.pull:GetDescendants()) do
if v:IsA("ParticleEmitter") then
v.Enabled = false
end
end
for i,v in pairs(thing.Part.Attachment:GetDescendants()) do
if v:IsA("ParticleEmitter") then
v.Enabled = false
end
end
thing.Parent = game.Workspace
weld.Parent = thing.Part
thing.Part.CFrame = you.Torso.CFrame
thing.Part.Anchored = false
thing.Part.CanCollide = false
weld.Enabled = true
weld.Part0 = you.Torso
weld.Part1 = thing.Part
rob.HumanoidRootPart.PointLight.Enabled = true
rob.HumanoidRootPart.PointLight.Parent = you.HumanoidRootPart
rob.Torso.Neck.Enabled = false
rob.Torso.Neck.Part0 = you.Torso
rob.Torso.Neck.Part1 = rob.Head
rob.Head.CFrame = you.Head.CFrame
rob.Torso.Neck.Enabled = true
wait(0.6)
thing.gulp:Play()
wait(0.6)
thing.gulp:Play()
wait(0.6)
thing.gulp:Play()
wait(0.5)
thing.eerie:Play()
thing.explosion:Play()
thing.horrorsound:Play()
for i,v in pairs(game.Workspace.RobTransform.Part.blast:GetDescendants()) do
if v:IsA("ParticleEmitter") then
if v:GetAttribute("EmitCount") then
v:Emit(v:GetAttribute("EmitCount"))
end
end
end
wait(0.3)
thing.Part.pull.lines:Emit(5)
thing.Part.pull.shock:Emit(5)
thing.Part.pull.shockwave2:Emit(10)
wait(0.35)
for i,v in pairs(game.Workspace.RobTransform.Part.blast:GetDescendants()) do
if v:IsA("ParticleEmitter") then
if v:GetAttribute("EmitCount") then
v:Emit(v:GetAttribute("EmitCount"))
end
end
end
wait(5)
thing.Parent = game.StarterPlayer.StarterPlayerScripts.VFXListener
rob:Destroy()
you.HumanoidRootPart.PointLight:Destroy()
weld:Destroy()
