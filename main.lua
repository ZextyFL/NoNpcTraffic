Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) -- Prevent crashing.

        -- Prevent vehicle spawns
        SetCreateRandomCops(false)
        SetCreateRandomCopsNotOnScenarios(false)
        SetCreateRandomCopsOnScenarios(false)
        SetGarbageTrucks(false)
        SetRandomBoats(false)
        SetVehicleDensityMultiplierThisFrame(0.0)
        SetRandomVehicleDensityMultiplierThisFrame(0.0)
        SetParkedVehicleDensityMultiplierThisFrame(0.0)

        -- Allow walking peds to spawn
        SetPedDensityMultiplierThisFrame(1.0) -- Allow normal pedestrian density
        SetScenarioPedDensityMultiplierThisFrame(1.0, 1.0) -- For ambient ped scenarios

        -- Optional: Clear vehicles in the area, if needed
        local x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
        ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
        RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0)
    end
end)
