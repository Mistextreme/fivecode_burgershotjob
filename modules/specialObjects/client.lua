local L0_1, L1_1, L2_1
L0_1 = {}
SpawnedObjects = L0_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "spawnSpecialObjects"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "spawnSpecialObjects"
L1_1 = L1_1(L2_1)
function L2_1()
  local L0_2, L1_2
  L0_2 = LoadSpecialObjects
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "onResourceStop"
function L2_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = DeleteSpecialObjects
  L1_2()
end
L0_1(L1_1, L2_1)
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = RestaurantLocation
  if not L0_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.Functions
  L1_2 = L1_2.Use
  L1_2 = L1_2.crafting
  L1_2 = L1_2.iceMachine
  if L1_2 then
    L1_2 = pairs
    L2_2 = L0_2.Crafting
    L2_2 = L2_2.IceMachine
    L2_2 = L2_2.Positions
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.object
      L7_2 = L7_2.use
      if L7_2 then
        L7_2 = CreateObjectNoOffset
        L8_2 = "prop_bar_ice_01"
        L9_2 = L6_2.object
        L9_2 = L9_2.coords
        L10_2 = false
        L11_2 = true
        L12_2 = true
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        L8_2 = SpawnedObjects
        L9_2 = L5_2
        L10_2 = "-iceMachine"
        L9_2 = L9_2 .. L10_2
        L8_2[L9_2] = L7_2
        L8_2 = SetEntityRotation
        L9_2 = L7_2
        L10_2 = L6_2.object
        L10_2 = L10_2.xRot
        L11_2 = L6_2.object
        L11_2 = L11_2.yRot
        L12_2 = L6_2.object
        L12_2 = L12_2.zRot
        L13_2 = 2
        L14_2 = true
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L8_2 = FreezeEntityPosition
        L9_2 = L7_2
        L10_2 = true
        L8_2(L9_2, L10_2)
      end
    end
  end
  L1_2 = Config
  L1_2 = L1_2.Functions
  L1_2 = L1_2.Delivery
  L1_2 = L1_2.use
  if L1_2 then
    L1_2 = pairs
    L2_2 = L0_2.Delivery
    L2_2 = L2_2.StartDelivery
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.object
      L7_2 = L7_2.use
      if L7_2 then
        L7_2 = CreateObjectNoOffset
        L8_2 = "vw_prop_casino_phone_01a"
        L9_2 = L6_2.object
        L9_2 = L9_2.coords
        L10_2 = false
        L11_2 = true
        L12_2 = true
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        L8_2 = SetEntityRotation
        L9_2 = L7_2
        L10_2 = L6_2.object
        L10_2 = L10_2.xRot
        L11_2 = L6_2.object
        L11_2 = L11_2.yRot
        L12_2 = L6_2.object
        L12_2 = L12_2.zRot
        L13_2 = 2
        L14_2 = true
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L8_2 = SpawnedObjects
        L9_2 = L5_2
        L10_2 = "-delivery"
        L9_2 = L9_2 .. L10_2
        L8_2[L9_2] = L7_2
        L8_2 = SetEntityCollision
        L9_2 = L7_2
        L10_2 = false
        L8_2(L9_2, L10_2)
        L8_2 = FreezeEntityPosition
        L9_2 = L7_2
        L10_2 = true
        L8_2(L9_2, L10_2)
      end
    end
  end
  L1_2 = Config
  L1_2 = L1_2.Functions
  L1_2 = L1_2.PoliceAlerts
  L1_2 = L1_2.use
  if L1_2 then
    L1_2 = pairs
    L2_2 = L0_2.PoliceAlerts
    L2_2 = L2_2.Alerts
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.object
      L7_2 = L7_2.use
      if L7_2 then
        L7_2 = CreateObjectNoOffset
        L8_2 = "hei_prop_bank_alarm_01"
        L9_2 = L6_2.object
        L9_2 = L9_2.coords
        L10_2 = false
        L11_2 = true
        L12_2 = true
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        L8_2 = SetEntityRotation
        L9_2 = L7_2
        L10_2 = L6_2.object
        L10_2 = L10_2.xRot
        L11_2 = L6_2.object
        L11_2 = L11_2.yRot
        L12_2 = L6_2.object
        L12_2 = L12_2.zRot
        L13_2 = 2
        L14_2 = true
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L8_2 = SpawnedObjects
        L9_2 = L5_2
        L10_2 = "-policeAlert"
        L9_2 = L9_2 .. L10_2
        L8_2[L9_2] = L7_2
        L8_2 = SetEntityCollision
        L9_2 = L7_2
        L10_2 = false
        L8_2(L9_2, L10_2)
        L8_2 = FreezeEntityPosition
        L9_2 = L7_2
        L10_2 = true
        L8_2(L9_2, L10_2)
      end
    end
  end
end
LoadSpecialObjects = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = SpawnedObjects
  if L0_2 then
    L0_2 = pairs
    L1_2 = SpawnedObjects
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = DoesEntityExist
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = DeleteEntity
        L7_2 = L5_2
        L6_2(L7_2)
      end
    end
  end
end
DeleteSpecialObjects = L0_1
