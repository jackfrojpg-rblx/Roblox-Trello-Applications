-- This script kicks the player if they press the Leave button, as we cannot leave the game on their behalf. This is OPTIONAL.

local event = game:GetService("ReplicatedStorage"):WaitForChild("Leave")
	 
event.OnServerEvent:connect(function(player)
    player:Kick("Soo, umm, what did you expect a leave button to do???") -- You can change the message in the speech marks, but I like mine!
end)
