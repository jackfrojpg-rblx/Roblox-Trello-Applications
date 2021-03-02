-- If you have a menu with a Leave Game button, this code goes in a LocalScript inside the TextButton (or whatever type of ScreenGui button you're using). This is OPTIONAL.

local player = game.Players.LocalPlayer
	 
script.Parent.MouseButton1Click:Connect(function()
    game:GetService("ReplicatedStorage"):WaitForChild("Leave"):FireServer(player)
end)
