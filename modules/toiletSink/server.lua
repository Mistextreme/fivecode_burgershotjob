local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "getCleanedItems"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "getCleanedItems"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = GetIdentifier
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = PlayerOccupied
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.id
  if L3_2 == A1_2 then
    L3_2 = GetInventoryItemCount
    L4_2 = source
    L5_2 = A0_2.dirty
    L6_2 = nil
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2.amount
    if L3_2 >= L4_2 then
      L3_2 = RemoveItem
      L4_2 = source
      L5_2 = A0_2.dirty
      L6_2 = A0_2.amount
      L7_2 = nil
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = AddItem
      L4_2 = source
      L5_2 = A0_2.clean
      L6_2 = A0_2.amount
      L7_2 = nil
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = TriggerClientEvent
      L4_2 = TriggerName
      L5_2 = "notify"
      L4_2 = L4_2(L5_2)
      L5_2 = source
      L6_2 = false
      L7_2 = _U
      L8_2 = "sink_finished_cleaning"
      L9_2 = A0_2.amount
      L10_2 = A0_2.cleaning
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L8_2 = Config
      L8_2 = L8_2.NotifyType
      L8_2 = L8_2.info
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A1_2.item
  L3_2 = A1_2.amount
  L4_2 = A1_2.itemName
  L5_2 = GetInventoryItemCount
  L6_2 = A0_2
  L7_2 = L2_2
  L8_2 = nil
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if L3_2 <= L5_2 then
    L5_2 = true
    return L5_2
  end
  L5_2 = false
  L6_2 = TriggerClientEvent
  L7_2 = TriggerName
  L8_2 = "notify"
  L7_2 = L7_2(L8_2)
  L8_2 = A0_2
  L9_2 = false
  L10_2 = _U
  L11_2 = "sink_item_not_have"
  L12_2 = L4_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = Config
  L11_2 = L11_2.NotifyType
  L11_2 = L11_2.error
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  return L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
end
CheckItemsToClean = L0_1
L0_1 = RegisterCallback
L1_1 = TriggerName
L2_1 = "checkItemsToClean"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Wait
  L4_2 = 5
  L3_2(L4_2)
  L3_2 = A1_2
  L4_2 = CheckItemsToClean
  L5_2 = A0_2
  L6_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
