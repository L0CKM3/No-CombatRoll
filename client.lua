CreateThread(function()
    while true do
        Wait(1000)

        local playerPed = PlayerPedId()
        if IsPedArmed(playerPed, 6) and IsPlayerFreeAiming(PlayerId()) then
            -- While aiming with a weapon, disable combat roll
            while IsPedArmed(playerPed, 6) and IsPlayerFreeAiming(PlayerId()) do
                DisableControlAction(0, 22, true) -- Disable jump/roll
                Wait(0)
            end
        end
    end
end)
