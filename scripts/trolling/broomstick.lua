spawn(function()
while wait() do
settings().Physics.AllowSleep = false
game.Players.LocalPlayer.MaximumSimulationRadius = math.huge*math.huge
setsimulationradius(math.huge*math.huge,math.huge*math.huge)
end
end)
function Align(Part1,Part0,Position,Angle,name)
  local AlignPos = Instance.new("AlignPosition", Part1);
  AlignPos.Parent.CanCollide = false;
  AlignPos.ApplyAtCenterOfMass = true;
  AlignPos.MaxForce = 67752;
  AlignPos.MaxVelocity = math.huge/9e110;
  AlignPos.ReactionForceEnabled = false;
  AlignPos.Responsiveness = 200;
  AlignPos.RigidityEnabled = false;

  local AlignOrient = Instance.new("AlignOrientation", Part1);
  AlignOrient.MaxAngularVelocity = math.huge/9e110;
  AlignOrient.MaxTorque = 67752;
  AlignOrient.PrimaryAxisOnly = false;
  AlignOrient.ReactionTorqueEnabled = false;
  AlignOrient.Responsiveness = 200;
  AlignOrient.RigidityEnabled = false;

  local AttachmentA=Instance.new("Attachment",Part1);

  local AttachmentB=Instance.new("Attachment",Part0);
  AttachmentB.Orientation = Angle
  AttachmentB.Position = Position
  AttachmentB.Name = name

  AlignPos.Attachment0 = AttachmentA;
  AlignPos.Attachment1 = AttachmentB;

  AlignOrient.Attachment0 = AttachmentA;
  AlignOrient.Attachment1 = AttachmentB;
end
char = game.Players.LocalPlayer.Character
hat = char["Broom Classic"]
hat.Handle.AccessoryWeld:Destroy();char.Torso["Right Shoulder"]:Destroy();char.Torso["Left Shoulder"]:Destroy();char.Torso["Right Hip"]:Destroy();char.Torso["Left Hip"]:Destroy();
Align(char["Right Arm"],char["Torso"],Vector3.new(1.25, 0, -0.5),Vector3.new(45, 25, 0),"RHand")
Align(char["Left Arm"],char["Torso"],Vector3.new(-1.25, 0, -0.5),Vector3.new(45, -25, 0),"LHand")
Align(char["Right Leg"],char["Torso"],Vector3.new(0.6, -1.5, -0.8),Vector3.new(75, -25, 0),"RLeg")
Align(char["Left Leg"],char["Torso"],Vector3.new(-0.6, -1.5, -0.8),Vector3.new(75, 15, 0),"LLeg")
Align(hat.Handle,char["Torso"],Vector3.new(0, -2, -0.5),Vector3.new(-30, -90, 45),"Broom")
char.Humanoid.HipHeight = 1
char.Humanoid.WalkSpeed = 25
char.Humanoid.JumpPower = 0
while wait() do
for i = 1,2,0.05 do wait()
char.Humanoid.HipHeight = i
end
wait()
for i = 0,1,0.05 do wait()
char.Humanoid.HipHeight = 2-i
end
end
