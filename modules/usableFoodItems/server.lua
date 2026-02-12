local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "removeFoodItem"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "removeFoodItem"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = source
  L2_2 = A0_2.item
  L3_2 = A0_2.giveItem
  L4_2 = RemoveItem
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = 1
  L8_2 = nil
  L4_2(L5_2, L6_2, L7_2, L8_2)
  if L3_2 then
    L4_2 = pairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = pairs
      L11_2 = FoodStatus
      L11_2 = L11_2[L2_2]
      L11_2 = L11_2.giveItem
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
        L16_2 = L15_2.name
        L17_2 = L9_2.name
        if L16_2 == L17_2 then
          L16_2 = L15_2.amount
          L17_2 = L9_2.amount
          if L16_2 == L17_2 then
            L16_2 = AddItem
            L17_2 = L1_2
            L18_2 = L9_2.name
            L19_2 = L9_2.amount
            L20_2 = nil
            L16_2(L17_2, L18_2, L19_2, L20_2)
          end
        end
      end
    end
  end
end
L0_1(L1_1, L2_1)
