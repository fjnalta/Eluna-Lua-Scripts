local portUp = 187431
local portDown = 187428

function TeleportUp(event, player, object, target)
	player:Teleport(530, 12791.100586, -6890.908691, 31.489367, 5.410521)
end

function TeleportDown(event, player, object, target)
	player:Teleport(530, 12782.756836, -6879.788086, 23.317747, 2.229657)
end

RegisterGameObjectGossipEvent(portUp, 1, TeleportUp)
RegisterGameObjectGossipEvent(portDown, 1, TeleportDown)