-- Variables and requiring the 
local TrelloAPI = require(game.ServerScriptService:WaitForChild("TrelloAPI"))
local BoardID = TrelloAPI:GetBoardID("BOARD NAME HERE") -- Replace BOARD NAME HERE with the name of your Trello board.
local ListID = TrelloAPI:GetListID("LIST NAME HERE",BoardID) -- Replace LIST NAME HERE with the name of your Trello list which needs to be on the board you stated above.
local event = game:GetService("ReplicatedStorage"):WaitForChild("Apply")

event.OnServerEvent:connect(function(player, A1, A2, A3, A4, A5) -- Have as many A# as you need. You should have 1 for each question. Just follow the format of A1, A2, A3...
	local Questions = player.PlayerGui.ApplicationCentre.Frame.Application.Scrolling -- Where are the questions located in the GUI? Think of player.PlayerGui as StarterGui, but just for the player in question.
    
	local NewCard = TrelloAPI:AddCard(player.Name,"**" .. Questions.Q1.Question.Text .. "** \n> " .. A1 .."\n\n**" .. Questions.Q2.Question.Text .. "** \n>" .. A2 .."\n\n**" .. Questions.Q3.Question.Text .. "** \n>" .. A3 .."\n\n**" .. Questions.Q4.Question.Text .. "** \n>" .. A4 .."\n\n**" .. Questions.Q5.Question.Text .. "** \n>" .. A5 .."\n\n**", ListID) 
	-- The above is where your Trello card is made! It's in a format like this: TrelloAPI:AddCard("CardName", "Card Description", ListID)
  -- Modify it as you need: make it how you want your card to look! With my example above, it has the question in bold, and then the answer below it. It then misses a line before the next question.
  -- To go onto a new line on the card (only works for description), use \n
  -- A1, A2, A3... are the player's answers to the questions. For my example, Questions.Q1.Question.Text is the actual first question - the question, NOT THE RESPONSE.
  -- Use .. to join strings/questions/answers together.
    
	wait(0.5) -- You can change this if you want, but I like to keep it at something like 0.5.
	player:Kick("Your application has been recorded! Good luck.") -- Kicks the player when their application card is made! You can put whatever message you want in the speech marks, replacing my message. The player sees this when they are kicked.
end)
