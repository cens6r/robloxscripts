local Players = game:GetService("Players")

table.foreach(Players:GetChildren(), function(_, x)
  x:LoadCharacter()
end)
