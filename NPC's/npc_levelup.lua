-- Name: Levelup NPC for TrinityCore

-- Config
local NPC_ID = 43299


function On_Gossip(event, player, unit)
	-- Menus
	player:GossipMenuAddItem(0, "Set Level to 10", 0, 1)
	player:GossipMenuAddItem(0, "Set Level to 20", 0, 2)
	player:GossipMenuAddItem(0, "Set Level to 30", 0, 3)
	player:GossipMenuAddItem(0, "Set Level to 40", 0, 4)
	player:GossipMenuAddItem(0, "Set Level to 50", 0, 5)
	player:GossipMenuAddItem(0, "Set Level to 60", 0, 6)
	player:GossipMenuAddItem(0, "Set Level to 70", 0, 7)
	player:GossipMenuAddItem(0, "Set Level to 80", 0, 8)
	 
	-- Text
	player:GossipSendMenu(60000, unit)
end

function On_Select(event, player, unit, sender, intid, code)
	if (intid == 1) then
		player:SetLevel( 10 )
		player:ResetTalents()
	end

	if (intid == 2) then
		player:SetLevel( 20 )
		player:ResetTalents()
	end

	if (intid == 3) then
		player:SetLevel( 30 )
		player:ResetTalents()
	end

	if (intid == 4) then
		player:SetLevel( 40 )
		player:ResetTalents()
	end

	if (intid == 5) then
		player:SetLevel( 50 )
		player:ResetTalents()
	end

	if (intid == 6) then
		player:SetLevel( 60 )
		player:ResetTalents()
	end

	if (intid == 7) then
		player:SetLevel( 70 )
		player:ResetTalents()
	end

	if (intid == 8) then
		player:SetLevel( 80 )
		player:ResetTalents()
	end

	player:SendBroadcastMessage("===========================")
	player:SendBroadcastMessage("Character Level has been set to " .. intid .. "0")
	player:SendBroadcastMessage("Talents have been reset!")
	player:SendBroadcastMessage("===========================")

	player:GossipComplete()
end


RegisterCreatureGossipEvent(NPC_ID, 1, On_Gossip)
RegisterCreatureGossipEvent(NPC_ID, 2, On_Select)