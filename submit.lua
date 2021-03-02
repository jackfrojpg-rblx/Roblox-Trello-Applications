-- Goes inside your submit button.

local Frame = script.Parent.Parent -- Set this to wherever your questions/answers are located. You use them starting on Line 6.
local player = game.Players.LocalPlayer

A1 = Frame.Q1.Answer
A2 = Frame.Q2.Answer
A3 = Frame.Q3.Answer
A4 = Frame.Q4.Answer
A5 = Frame.Q5.Answer
-- Have as many or as little A# variables as you need. You need one for each question. Do it like above!
	 
script.Parent.MouseButton1Click:Connect(function()
	game:GetService("ReplicatedStorage"):WaitForChild("Apply"):FireServer(A1.Text, A2.Text, A3.Text, A4.Text, A5.Text) -- Do A#.Text for as many A# variables as you have.
	script.Parent.Text = "Please wait..." -- Changes the button's text while the application is being sent...
	script.Disabled = true -- ...and disables the script so they cannot click again while the application is sending.
end)
