local L0_1, L1_1, L2_1
L0_1 = RegisterCallback
L1_1 = TriggerName
L2_1 = "shopPay"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = GetPlayer
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = RestaurantLocation
  L5_2 = L5_2.SupplyShop
  L6_2 = L5_2.Items
  L7_2 = CompareItemsSec
  L8_2 = A2_2.item
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = CompareDistance
  L9_2 = A0_2
  L10_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2)
  if L8_2 and L7_2 then
    L8_2 = L7_2.price
    L9_2 = A2_2.amount
    L8_2 = L8_2 * L9_2
    L9_2 = A2_2.price
    if L8_2 == L9_2 then
      L8_2 = CanCarry
      L9_2 = A0_2
      L10_2 = A2_2.item
      L11_2 = A2_2.amount
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      if L8_2 then
        goto lbl_34
      end
    end
  end
  do return end
  ::lbl_34::
  L8_2 = GetMoney
  L9_2 = A0_2
  L10_2 = A3_2.type
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = A2_2.price
  if L8_2 <= L9_2 then
    L8_2 = TriggerClientEvent
    L9_2 = TriggerName
    L10_2 = "notify"
    L9_2 = L9_2(L10_2)
    L10_2 = A0_2
    L11_2 = false
    L12_2 = _U
    L13_2 = "not_enough_money"
    L14_2 = A2_2.price
    L15_2 = GetMoney
    L16_2 = A0_2
    L17_2 = A3_2.type
    L15_2 = L15_2(L16_2, L17_2)
    L14_2 = L14_2 - L15_2
    L12_2 = L12_2(L13_2, L14_2)
    L13_2 = Config
    L13_2 = L13_2.NotifyType
    L13_2 = L13_2.error
    return L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L8_2 = RemoveMoney
  L9_2 = A0_2
  L10_2 = A3_2.type
  L11_2 = A2_2.price
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = AddItem
  L9_2 = A0_2
  L10_2 = A2_2.item
  L11_2 = A2_2.amount
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = A3_2.type
  A2_2.type = L8_2
  L8_2 = DiscordLogs
  L9_2 = A0_2
  L10_2 = A2_2
  L11_2 = "shopPay"
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = TriggerClientEvent
  L9_2 = TriggerName
  L10_2 = "notify"
  L9_2 = L9_2(L10_2)
  L10_2 = A0_2
  L11_2 = false
  L12_2 = _U
  L13_2 = "shop_purchased"
  L14_2 = A2_2.label
  L15_2 = A2_2.amount
  L16_2 = A2_2.price
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  L13_2 = Config
  L13_2 = L13_2.NotifyType
  L13_2 = L13_2.success
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = GetPlayerPed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2.Positions
  L5_2 = false
  L6_2 = nil
  L7_2 = pairs
  L8_2 = L4_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = vec3
    L14_2 = L12_2.coords
    L14_2 = L14_2.x
    L15_2 = L12_2.coords
    L15_2 = L15_2.y
    L16_2 = L12_2.coords
    L16_2 = L16_2.z
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L13_2 = L3_2 - L13_2
    L6_2 = #L13_2
    if L6_2 <= 5.0 then
      L5_2 = true
      break
    end
  end
  return L5_2
end
CompareDistance = L0_1
