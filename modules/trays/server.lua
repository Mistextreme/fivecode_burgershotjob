local L0_1, L1_1, L2_1
L0_1 = {}
FoodTrays = L0_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "foodTray"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "foodTray"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = Wait
  L3_2 = 50
  L2_2(L3_2)
  L2_2 = A0_2.entity
  L3_2 = A0_2.item
  L4_2 = A0_2.status
  L5_2 = NetworkGetEntityFromNetworkId
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if "place" == L4_2 then
    L6_2 = FoodTrays
    L6_2[L5_2] = true
  elseif "open" == L4_2 then
    L6_2 = FoodTrays
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L6_2 = FoodTrays
      L6_2 = L6_2[L5_2]
      if "empty" ~= L6_2 then
        L6_2 = CanCarry
        L7_2 = L1_2
        L8_2 = "classicburger"
        L9_2 = 3
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        if not L6_2 then
          L6_2 = Debug
          L7_2 = "No inventory space = user is not able to open food tray."
          return L6_2(L7_2)
        end
        L6_2 = AddItem
        L7_2 = L1_2
        L8_2 = "classicburger"
        L9_2 = 1
        L10_2 = nil
        L6_2(L7_2, L8_2, L9_2, L10_2)
        L6_2 = AddItem
        L7_2 = L1_2
        L8_2 = "burgershotcola"
        L9_2 = 1
        L10_2 = nil
        L6_2(L7_2, L8_2, L9_2, L10_2)
        L6_2 = AddItem
        L7_2 = L1_2
        L8_2 = "friedfries"
        L9_2 = 1
        L10_2 = nil
        L6_2(L7_2, L8_2, L9_2, L10_2)
        L6_2 = TriggerClientEvent
        L7_2 = TriggerName
        L8_2 = "foodTraySync"
        L7_2 = L7_2(L8_2)
        L8_2 = -1
        L9_2 = A0_2.entityCoords
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = FoodTrays
        L6_2[L5_2] = "empty"
      end
    end
  elseif "take" == L4_2 then
    L6_2 = FoodTrays
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L6_2 = CanCarry
      L7_2 = L1_2
      L8_2 = L3_2
      L9_2 = 1
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      if not L6_2 then
        L6_2 = Debug
        L7_2 = "No inventory space = user is not able to take food tray."
        return L6_2(L7_2)
      end
      L6_2 = AddItem
      L7_2 = L1_2
      L8_2 = A0_2.item
      L9_2 = 1
      L10_2 = nil
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = FoodTrays
      L6_2[L5_2] = false
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCallback
L1_1 = TriggerName
L2_1 = "useFoodTray"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = GetInventoryItemCount
  L4_2 = A0_2
  L5_2 = A2_2
  L6_2 = nil
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 < 1 then
    return
  end
  L3_2 = A1_2
  L4_2 = true
  L3_2 = L3_2(L4_2)
  L4_2 = RemoveItem
  L5_2 = A0_2
  L6_2 = A2_2
  L7_2 = 1
  L8_2 = nil
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  return L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCallback
L1_1 = TriggerName
L2_1 = "checkFoodTray"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = NetworkGetEntityFromNetworkId
  L4_2 = A2_2.entity
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = FoodTrays
  L5_2 = L5_2[L3_2]
  L4_2(L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "onResourceStop"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = next
  L2_2 = FoodTrays
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = pairs
    L2_2 = FoodTrays
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = DoesEntityExist
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = DeleteEntity
        L8_2 = L5_2
        L7_2(L8_2)
      end
    end
  end
end
L0_1(L1_1, L2_1)
