ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)
--SetPedMovementClipset(GetPlayerPed(-1), "move_m@quick", true)

RegisterNetEvent('british-drug-effect:onGear')
AddEventHandler('british-drug-effect:onGear', function()
  
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
    RequestAnimSet("MOVE_M@QUICK") 
    while not HasAnimSetLoaded("MOVE_M@QUICK") do
      Citizen.Wait(0)
    end    
    exports['mythic_notify']:DoHudText('success', 'You took some Gear!')
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetTimecycleModifier("spectator5")
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "MOVE_M@QUICK", true)
    SetPedIsDrunk(playerPed, true)
	SetPedMoveRateOverride(PlayerId(),10.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.49)
    AnimpostfxPlay("DrugsMichaelAliensFight", 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", 3.0)
    Citizen.Wait(100000)
-- after wait stop all 
    SetPedMoveRateOverride(PlayerId(),1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end)

RegisterNetEvent('british-drug-effect:onjoint')
AddEventHandler('british-drug-effect:onjoint', function()
  
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
    RequestAnimSet("MOVE_M@DRUNK@VERYDRUNK") 
    while not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") do
      Citizen.Wait(0)
    end    
    exports['mythic_notify']:DoHudText('success', 'You smoke a Massive Doobie!')
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetTimecycleModifier("spectator6")
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "MOVE_M@DRUNK@VERYDRUNK", true)
    SetPedIsDrunk(playerPed, true)
    AnimpostfxPlay("ChopVision", 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.0)
	
    SetEntityHealth(GetPlayerPed(-1), 200)
    SetPedArmour(PlayerPedId(), 50)
--vvvvvvvvvvvvvvvv
    Citizen.Wait(100000)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
    SetPedMoveRateOverride(PlayerId(),1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end)

RegisterNetEvent('british-drug-effect:onSpeed')
AddEventHandler('british-drug-effect:onSpeed', function()
  
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
    RequestAnimSet("move_m@hobo@a") 
    while not HasAnimSetLoaded("move_m@hobo@a") do
      Citizen.Wait(0)
    end    
    exports['mythic_notify']:DoHudText('success', 'You took some Speed!')
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetTimecycleModifier("spectator3")
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "move_m@hobo@a", true)
    SetPedIsDrunk(playerPed, true)
    AnimpostfxPlay("HeistCelebPass", 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", 3.0)
	
    SetEntityHealth(GetPlayerPed(-1), 150)
    SetPedArmour(PlayerPedId(), 100)
--vvvvvvvvvvvvvvvv
    Citizen.Wait(100000)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
    SetPedMoveRateOverride(PlayerId(),1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end)

RegisterNetEvent('british-drug-effect:onLsd')
AddEventHandler('british-drug-effect:onLsd', function()
  
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
    RequestAnimSet("move_m@buzzed") 
    while not HasAnimSetLoaded("move_m@buzzed") do
      Citizen.Wait(0)
    end    
    exports['mythic_notify']:DoHudText('success', 'You took some LSD!')
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "move_m@buzzed", true)
    SetPedIsDrunk(playerPed, true)
    SetTimecycleModifier("spectator5")
    AnimpostfxPlay("Rampage", 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.5)
	
    SetEntityHealth(GetPlayerPed(-1), 200)
--vvvvvvvvvvvvvvvv
    Citizen.Wait(100000)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
    SetPedMoveRateOverride(PlayerId(),1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end)

RegisterNetEvent('british-drug-effect:onHerion')
AddEventHandler('british-drug-effect:onHerion', function()
  
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
    RequestAnimSet("move_m@drunk@slightlydrunk") 
    while not HasAnimSetLoaded("move_m@drunk@slightlydrunk") do
      Citizen.Wait(0)
    end    
    exports['mythic_notify']:DoHudText('success', 'You took some Herion!')
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "move_m@drunk@slightlydrunk", true)
    SetPedIsDrunk(playerPed, true)
    SetTimecycleModifier("spectator5")
    AnimpostfxPlay("SuccessMichael", 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.5)
	
    SetEntityHealth(GetPlayerPed(-1), 200)
--vvvvvvvvvvvvvvvv
    Citizen.Wait(100000)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
    SetPedMoveRateOverride(PlayerId(),1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end)

RegisterNetEvent('british-drug-effect:onLsa')
AddEventHandler('british-drug-effect:onLsa', function()
  
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
    RequestAnimSet("move_m@buzzed") 
    while not HasAnimSetLoaded("move_m@buzzed") do
      Citizen.Wait(0)
    end    
    exports['mythic_notify']:DoHudText('success', 'You took some LSA!')
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "move_m@buzzed", true)
    SetPedIsDrunk(playerPed, true)
    SetTimecycleModifier("spectator5")
    AnimpostfxPlay("Rampage", 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.5)
	
    SetEntityHealth(GetPlayerPed(-1), 200)
--vvvvvvvvvvvvvvvv
    Citizen.Wait(100000)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
    SetPedMoveRateOverride(PlayerId(),1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end)

--SetPedMovementClipset(GetPlayerPed(-1), "move_m@quick", true)

RegisterNetEvent('british-drug-effect:onMdma')
AddEventHandler('british-drug-effect:onMdma', function()
  
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
    RequestAnimSet("FEMALE_FAST_RUNNER") 
    while not HasAnimSetLoaded("FEMALE_FAST_RUNNER") do
      Citizen.Wait(0)
    end    
    exports['mythic_notify']:DoHudText('success', '~r~You took some MDMA!~r~')
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetTimecycleModifier("spectator5")
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "FEMALE_FAST_RUNNER", true)
    SetPedIsDrunk(playerPed, true)
	SetPedMoveRateOverride(PlayerId(),10.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.49)
    AnimpostfxPlay("DrugsMichaelAliensFight", 10000001, true)
    ShakeGameplayCam("HAND_SHAKE", 3.0)
    Citizen.Wait(100000)
-- after wait stop all 
    SetPedMoveRateOverride(PlayerId(),1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
    ShakeGameplayCam("HAND_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end)