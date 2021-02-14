

local player = GetPlayerPed(-1)

Citizen.CreateThread(function()
    AddTextEntry('FE_THDR_GTAO', 'FenixRoleplay.eu')
  end)
  

local UseBigMap = false
local BigMapInVehicles = true

Citizen.CreateThread(function()
    local minimap = RequestScaleformMovie("minimap")
    SetRadarBigmapEnabled(true, false)
    Wait(0)
    SetRadarBigmapEnabled(false, false)
    while true do
        if IsControlPressed(1, 19) then
            SetRadarBigmapEnabled(true, false)
        else
            SetRadarBigmapEnabled(false, false)
        end
        Wait(0)
        BeginScaleformMovieMethod(minimap, "SETUP_HEALTH_ARMOUR")
        ScaleformMovieMethodAddParamInt(3)
        EndScaleformMovieMethod()
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerped = GetPlayerPed(-1)
        if IsPedInAnyVehicle(playerped, false) then
            if hudhidden == true then
                DisplayRadar(false)
            else
                DisplayRadar(true)
            end
        else
            DisplayRadar(false)
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerped = GetPlayerPed(-1)
			Citizen.Wait(500)
        SendNUIMessage({
            action = "updateHealth",
            value = GetEntityHealth(playerped) - 100,
            valuearmor = GetPedArmour(playerped),
            podvodou = podvodou,
            lefttime = lefttime
        })
    end
end)
