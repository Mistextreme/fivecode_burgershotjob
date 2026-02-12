local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
MaleFemalePedsHash = L0_1
L0_1 = {}
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if "anim" == A0_2 then
    L2_2 = RequestAnimDict
    L3_2 = A1_2
    L2_2(L3_2)
    while true do
      L2_2 = HasAnimDictLoaded
      L3_2 = A1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = Citizen
      L2_2 = L2_2.Wait
      L3_2 = 10
      L2_2(L3_2)
    end
  elseif "model" == A0_2 then
    L2_2 = RequestModel
    L3_2 = A1_2
    L2_2(L3_2)
    while true do
      L2_2 = HasModelLoaded
      L3_2 = A1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = Citizen
      L2_2 = L2_2.Wait
      L3_2 = 10
      L2_2(L3_2)
    end
  end
end
Request = L1_1
L1_1 = {}
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Request
  L2_2 = "model"
  L3_2 = A0_2.npc
  L3_2 = L3_2.ped
  L1_2(L2_2, L3_2)
  while true do
    L1_2 = HasModelLoaded
    L2_2 = A0_2.npc
    L2_2 = L2_2.ped
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 5
    L1_2(L2_2)
  end
  L1_2 = CreatePed
  L2_2 = 4
  L3_2 = A0_2.npc
  L3_2 = L3_2.ped
  L4_2 = vec3
  L5_2 = A0_2.coords
  L5_2 = L5_2.x
  L6_2 = A0_2.coords
  L6_2 = L6_2.y
  L7_2 = A0_2.coords
  L7_2 = L7_2.z
  L7_2 = L7_2 - 1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2.coords
  L5_2 = L5_2.w
  L6_2 = false
  L7_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  npc = L1_2
  L2_2 = npc
  L1_2 = L1_1
  L3_2 = npc
  L1_2[L2_2] = L3_2
  L1_2 = FreezeEntityPosition
  L2_2 = npc
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityInvincible
  L2_2 = npc
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = TaskStartScenarioInPlace
  L2_2 = npc
  L3_2 = A0_2.npc
  L3_2 = L3_2.anim
  L4_2 = 0
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetBlockingOfNonTemporaryEvents
  L2_2 = npc
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.sendBack
  if L1_2 then
    L1_2 = npc
    return L1_2
  end
end
CreateNpc = L2_1
L2_1 = AddEventHandler
L3_1 = "onResourceStop"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = pairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = DeleteEntity
      L8_2 = L6_2
      L7_2(L8_2)
    end
  end
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = AddBlipForCoord
  L2_2 = A0_2.coords
  L2_2 = L2_2.x
  L3_2 = A0_2.coords
  L3_2 = L3_2.y
  L4_2 = A0_2.coords
  L4_2 = L4_2.z
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  blip = L1_2
  L1_2 = SetBlipSprite
  L2_2 = blip
  L3_2 = A0_2.blip
  L3_2 = L3_2.info
  L3_2 = L3_2.id
  L1_2(L2_2, L3_2)
  L1_2 = SetBlipDisplay
  L2_2 = blip
  L3_2 = 4
  L1_2(L2_2, L3_2)
  L1_2 = SetBlipScale
  L2_2 = blip
  L3_2 = A0_2.blip
  L3_2 = L3_2.info
  L3_2 = L3_2.size
  L1_2(L2_2, L3_2)
  L1_2 = SetBlipColour
  L2_2 = blip
  L3_2 = A0_2.blip
  L3_2 = L3_2.info
  L3_2 = L3_2.color
  L1_2(L2_2, L3_2)
  L1_2 = SetBlipAsShortRange
  L2_2 = blip
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = BeginTextCommandSetBlipName
  L2_2 = "STRING"
  L1_2(L2_2)
  L1_2 = AddTextComponentString
  L2_2 = A0_2.blip
  L2_2 = L2_2.title
  L1_2(L2_2)
  L1_2 = EndTextCommandSetBlipName
  L2_2 = blip
  L1_2(L2_2)
  L1_2 = A0_2.sendBack
  if L1_2 then
    L1_2 = blip
    return L1_2
  end
end
CreateBlip = L2_1
L2_1 = RegisterNetEvent
L3_1 = TriggerName
L4_1 = "playSound"
L3_1, L4_1 = L3_1(L4_1)
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = TriggerName
L4_1 = "playSound"
L3_1 = L3_1(L4_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Config
  L1_2 = L1_2.NotifyType
  L1_2 = L1_2.success
  if A0_2 == L1_2 then
    L1_2 = PlaySound
    L2_2 = -1
    L3_2 = "EXIT"
    L4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
    L5_2 = 0
    L6_2 = 0
    L7_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L1_2 = PlaySound
    L2_2 = -1
    L3_2 = "Boss_Message_Orange"
    L4_2 = "GTAO_Boss_Goons_FM_Soundset"
    L5_2 = 0
    L6_2 = 0
    L7_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Busy
  if L1_2 then
    L1_2 = false
    L2_2 = TriggerEvent
    L3_2 = TriggerName
    L4_2 = "notify"
    L3_2 = L3_2(L4_2)
    L4_2 = false
    L5_2 = _U
    L6_2 = "busy"
    L5_2 = L5_2(L6_2)
    L6_2 = Config
    L6_2 = L6_2.NotifyType
    L6_2 = L6_2.error
    L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    return L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  end
  if A0_2 then
    L1_2 = GetPlayerInfo
    L1_2 = L1_2()
    L1_2 = L1_2.job
    L1_2 = L1_2.name
    if A0_2 ~= L1_2 then
      L1_2 = false
      L2_2 = TriggerEvent
      L3_2 = TriggerName
      L4_2 = "notify"
      L3_2 = L3_2(L4_2)
      L4_2 = false
      L5_2 = _U
      L6_2 = "not_allowed"
      L5_2 = L5_2(L6_2)
      L6_2 = Config
      L6_2 = L6_2.NotifyType
      L6_2 = L6_2.error
      L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      return L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
    end
  end
  L1_2 = true
  return L1_2
end
MainCheck = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L8_2 = PlayerPedId
  L8_2 = L8_2()
  L9_2 = table
  L9_2 = L9_2.unpack
  L10_2 = GetEntityCoords
  L11_2 = L8_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L10_2(L11_2)
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L12_2 = HasModelLoaded
  L13_2 = A0_2
  L12_2 = L12_2(L13_2)
  if not L12_2 then
    while true do
      L12_2 = HasModelLoaded
      L13_2 = GetHashKey
      L14_2 = A0_2
      L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L13_2(L14_2)
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      if L12_2 then
        break
      end
      L12_2 = Request
      L13_2 = "model"
      L14_2 = GetHashKey
      L15_2 = A0_2
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L14_2(L15_2)
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      L12_2 = Wait
      L13_2 = 10
      L12_2(L13_2)
    end
  end
  L12_2 = CreateObject
  L13_2 = GetHashKey
  L14_2 = A0_2
  L13_2 = L13_2(L14_2)
  L14_2 = L9_2
  L15_2 = L10_2
  L16_2 = L11_2 + 0.2
  L17_2 = true
  L18_2 = true
  L19_2 = true
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L13_2 = AttachEntityToEntity
  L14_2 = L12_2
  L15_2 = L8_2
  L16_2 = GetPedBoneIndex
  L17_2 = L8_2
  L18_2 = A1_2
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = A2_2
  L18_2 = A3_2
  L19_2 = A4_2
  L20_2 = A5_2
  L21_2 = A6_2
  L22_2 = A7_2
  L23_2 = true
  L24_2 = true
  L25_2 = false
  L26_2 = true
  L27_2 = 1
  L28_2 = true
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L13_2 = table
  L13_2 = L13_2.insert
  L14_2 = L0_1
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
  L13_2 = SetModelAsNoLongerNeeded
  L14_2 = A0_2
  L13_2(L14_2)
end
SpawnProp = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DeleteEntity
    L7_2 = L5_2
    L6_2(L7_2)
  end
end
ClearProps = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = {}
  if A2_2 then
    L6_2 = vector3
    L7_2 = A2_2.x
    L8_2 = A2_2.y
    L9_2 = A2_2.z
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    A2_2 = L6_2
  else
    L6_2 = GetEntityCoords
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    A2_2 = L6_2
  end
  L6_2 = pairs
  L7_2 = A0_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = GetEntityCoords
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    L12_2 = A2_2 - L12_2
    L12_2 = #L12_2
    if A3_2 >= L12_2 then
      L13_2 = #L5_2
      L13_2 = L13_2 + 1
      L14_2 = L10_2 or L14_2
      if not A1_2 or not L10_2 then
        L14_2 = L11_2
      end
      L5_2[L13_2] = L14_2
    end
  end
  return L5_2
end
EnumerateEntitiesWithinDistance = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetVehiclesInArea
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = #L2_2
  L2_2 = 0 == L2_2
  return L2_2
end
IsSpawnPointClear = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2 + 0.5
  return L1_2(L2_2)
end
RoundToNearestInteger = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    DisableMovement = true
    while true do
      L0_3 = DisableMovement
      if not L0_3 then
        break
      end
      L0_3 = 0
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 30
      L4_3 = DisableMovement
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 31
      L4_3 = DisableMovement
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 21
      L4_3 = DisableMovement
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 24
      L4_3 = DisableMovement
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = Wait
      L2_3 = L0_3
      L1_3(L2_3)
    end
  end
  L0_2(L1_2)
end
DisableMovementLoop = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = 0
  L4_2 = nil
  L5_2 = nil
  L6_2 = TaskGoStraightToCoord
  L7_2 = A0_2
  L8_2 = A1_2.x
  L9_2 = A1_2.y
  L10_2 = A1_2.z
  L11_2 = 1.0
  L12_2 = -1
  L13_2 = A2_2
  L14_2 = 1.0
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  repeat
    L6_2 = Wait
    L7_2 = 100
    L6_2(L7_2)
    L3_2 = L3_2 + 1
    L6_2 = GetEntityCoords
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L4_2 = L6_2
    L6_2 = vector3
    L7_2 = A1_2.x
    L8_2 = A1_2.y
    L9_2 = A1_2.z
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L6_2 = L4_2 - L6_2
    L5_2 = #L6_2
    if L3_2 >= 75 then
      L6_2 = SetEntityCoords
      L7_2 = A0_2
      L8_2 = A1_2.x
      L9_2 = A1_2.y
      L10_2 = A1_2.z
      L10_2 = L10_2 - 1
      L11_2 = false
      L12_2 = false
      L13_2 = false
      L14_2 = true
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L6_2 = SetEntityHeading
      L7_2 = A0_2
      L8_2 = A2_2
      L6_2(L7_2, L8_2)
      break
    end
    L6_2 = RoundToNearestInteger
    L7_2 = GetEntityHeading
    L8_2 = A0_2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    if L6_2 == A2_2 then
      break
    end
    L6_2 = 0.2
  until L5_2 <= L6_2
  L6_2 = SetEntityHeading
  L7_2 = A0_2
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
end
GoToCoords = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A1_2
  L4_2 = A2_2
  L5_2 = L4_2.x
  L6_2 = L3_2.x
  L5_2 = L5_2 - L6_2
  L6_2 = L4_2.y
  L7_2 = L3_2.y
  L6_2 = L6_2 - L7_2
  L7_2 = GetHeadingFromVector_2d
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = SetEntityHeading
  L9_2 = A0_2
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
end
MakePlayerFaceEntity = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = 1
  L5_2 = A1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = nil
    repeat
      L9_2 = math
      L9_2 = L9_2.random
      L10_2 = 1
      L11_2 = #A0_2
      L9_2 = L9_2(L10_2, L11_2)
      L8_2 = L9_2
      L9_2 = L2_2[L8_2]
    until not L9_2
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L3_2
    L11_2 = A0_2[L8_2]
    L9_2(L10_2, L11_2)
    L2_2[L8_2] = true
  end
  return L3_2
end
GetRandomSpotsToClean = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = RequestNamedPtfxAsset
  L6_2 = A0_2
  L5_2(L6_2)
  while true do
    L5_2 = HasNamedPtfxAssetLoaded
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
  end
  L5_2 = UseParticleFxAssetNextCall
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = StartParticleFxLoopedAtCoord
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = A3_2
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = SetParticleFxLoopedColour
  L7_2 = L5_2
  L8_2 = 0
  L9_2 = 255
  L10_2 = 0
  L11_2 = 0
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = Wait
  L7_2 = A4_2
  L6_2(L7_2)
  L6_2 = StopParticleFxLooped
  L7_2 = L5_2
  L8_2 = false
  L6_2(L7_2, L8_2)
  return L5_2
end
ShowLoopParticle = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "%.1f"
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = GetScreenCoordFromWorldCoord
  L6_2 = A0_2.x
  L7_2 = A0_2.y
  L8_2 = A0_2.z
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2, L8_2)
  L8_2 = 0.25
  L9_2 = nil
  L10_2 = nil
  L11_2 = nil
  if "delivery" == A3_2 then
    L9_2 = 1.0
    L10_2 = "commonmenu"
    L11_2 = "mp_specitem_cash"
    L12_2 = RequestStreamedTextureDict
    L13_2 = L10_2
    L14_2 = false
    L12_2(L13_2, L14_2)
    L12_2 = DrawSprite
    L13_2 = L10_2
    L14_2 = L11_2
    L15_2 = L6_2
    L16_2 = L7_2 - 0.015
    L17_2 = 0.015 * L9_2
    L18_2 = 0.025 * L9_2
    L19_2 = 180.0
    L20_2 = 26
    L21_2 = 101
    L22_2 = 42
    L23_2 = 255
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  else
    L9_2 = 0.75
    L10_2 = "hunting"
    L11_2 = "huntingwindarrow_32"
    L12_2 = RequestStreamedTextureDict
    L13_2 = L10_2
    L14_2 = false
    L12_2(L13_2, L14_2)
    L12_2 = DrawSprite
    L13_2 = L10_2
    L14_2 = L11_2
    L15_2 = L6_2
    L16_2 = L7_2 - 0.015
    L17_2 = 0.015 * L9_2
    L18_2 = 0.025 * L9_2
    L19_2 = 180.0
    L20_2 = 255
    L21_2 = 255
    L22_2 = 0
    L23_2 = 255
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  end
  L12_2 = SetTextCentre
  L13_2 = true
  L12_2(L13_2)
  L12_2 = SetTextScale
  L13_2 = 0.0
  L14_2 = L8_2
  L12_2(L13_2, L14_2)
  L12_2 = SetTextEntry
  L13_2 = "STRING"
  L12_2(L13_2)
  if A2_2 <= 1.0 then
    L4_2 = ""
  else
    L12_2 = L4_2
    L13_2 = "m"
    L12_2 = L12_2 .. L13_2
    L4_2 = L12_2
  end
  L12_2 = AddTextComponentString
  L13_2 = A1_2
  L14_2 = "\n"
  L15_2 = L4_2
  L13_2 = L13_2 .. L14_2 .. L15_2
  L12_2(L13_2)
  L12_2 = DrawText
  L13_2 = L6_2
  L14_2 = L7_2
  L12_2(L13_2, L14_2)
end
DrawDestination = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.data
  L2_2 = tonumber
  L3_2 = L1_2.value
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.menu
  L3_2 = L3_2.info
  if not L1_2 then
    return
  else
    L4_2 = type
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if "number" == L4_2 then
      L4_2 = type
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      if "number" == L4_2 then
        goto lbl_35
      end
    end
    L4_2 = TriggerEvent
    L5_2 = TriggerName
    L6_2 = "notify"
    L5_2 = L5_2(L6_2)
    L6_2 = false
    L7_2 = _U
    L8_2 = "amount_not_number"
    L7_2 = L7_2(L8_2)
    L8_2 = Config
    L8_2 = L8_2.NotifyType
    L8_2 = L8_2.error
    do return L4_2(L5_2, L6_2, L7_2, L8_2) end
    goto lbl_50
    ::lbl_35::
    if L2_2 <= 0 then
      L4_2 = TriggerEvent
      L5_2 = TriggerName
      L6_2 = "notify"
      L5_2 = L5_2(L6_2)
      L6_2 = false
      L7_2 = _U
      L8_2 = "amount_too_low"
      L7_2 = L7_2(L8_2)
      L8_2 = Config
      L8_2 = L8_2.NotifyType
      L8_2 = L8_2.error
      return L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
  ::lbl_50::
  L4_2 = A0_2.menu
  L4_2 = L4_2.type
  if "cashRegister" == L4_2 then
    L4_2 = TriggerServerEvent
    L5_2 = TriggerName
    L6_2 = "cashRegister"
    L5_2 = L5_2(L6_2)
    L6_2 = {}
    L6_2.status = "enter"
    L6_2.amount = L2_2
    L7_2 = A0_2.menu
    L7_2 = L7_2.id
    L6_2.id = L7_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2.menu
    L4_2 = L4_2.type
    if "society" == L4_2 then
      L4_2 = SocietyDepWitWas
      L5_2 = L3_2.type
      L6_2 = L3_2.societyName
      L7_2 = L2_2
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = SocietyStatus
      L5_2 = L3_2.args
      L4_2(L5_2)
    else
      L4_2 = A0_2.menu
      L4_2 = L4_2.type
      if "burgershotSupplyShop" == L4_2 then
        L4_2 = A0_2.menu
        L4_2 = L4_2.item
        item = L4_2
        L4_2 = item
        L4_2.amount = L2_2
        L4_2 = item
        L5_2 = item
        L5_2 = L5_2.price
        L5_2 = L5_2 * L2_2
        L4_2.price = L5_2
        L4_2 = PaymentChoise
        L5_2 = item
        L6_2 = A0_2.menu
        L6_2 = L6_2.args
        L4_2(L5_2, L6_2)
      end
    end
  end
end
MenuOther = L2_1
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = pairs
  L1_2 = MaleFemalePeds
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = ipairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = MaleFemalePedsHash
      L13_2 = GetHashKey
      L14_2 = L11_2
      L13_2 = L13_2(L14_2)
      L12_2[L13_2] = L4_2
    end
  end
end
L2_1(L3_1)
function L2_1(A0_2)
  local L1_2, L2_2
  if not A0_2 then
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    A0_2 = L1_2
  end
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = MaleFemalePedsHash
  L2_2 = L2_2[L1_2]
  return L2_2
end
GetPlayerGender = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = NetworkGetEntityIsNetworked
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = NetworkGetNetworkIdFromEntity
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = nil
  ::lbl_12::
  return L1_2
end
GetNetworkIdFromEntity = L2_1
