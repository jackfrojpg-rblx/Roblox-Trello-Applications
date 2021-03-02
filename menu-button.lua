-- If you have a menu, you'll want to show the application and close the menu when they click the button to apply. You can use this script. This is OPTIONAL!

local Application = script.Parent.Parent.Parent.Application -- Wherever your Application frame is.
local Menu = script.Parent.Parent.Parent.Menu -- Wherever your Menu frame is.

script.Parent.MouseButton1Click:Connect(function(player)
	Menu.Visible = false
	Application.Visible = true
end)
