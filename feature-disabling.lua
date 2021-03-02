-- Disables different game things. This is OPTIONAL. Make sure it is a LocalScript within PlayerGui.

--[[ Disable Chat ]]--
game:GetService("StarterGui"):SetCoreGuiEnabled("Chat", false)

--[[ Disable Backpack ]]--
game:GetService("StarterGui"):SetCoreGuiEnabled("Backpack", false)

--[[ Disable PlayerList ]]--
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCoreGuiEnabled(0,false)

--[[ Disable Reset ]]--
local StarterGui = game:GetService('StarterGui')
wait(1)
StarterGui:SetCore("ResetButtonCallback", false)

--[[ Disable Movement ]]--
local Controls = require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule")):GetControls()
Controls:Disable() 
