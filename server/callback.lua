local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = L0_1
  L2_2[A0_2] = A1_2
end
RegisterCallback = L1_1
L1_1 = RegisterNetEvent
L2_1 = TriggerName
L3_1 = "callCallback"
L2_1, L3_1 = L2_1(L3_1)
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = TriggerName
L3_1 = "callCallback"
L2_1 = L2_1(L3_1)
function L3_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if nil == L3_2 then
    return
  end
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  L4_2 = L3_2
  L5_2 = source
  function L6_2(...)
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = TriggerClientEvent
    L1_3 = TriggerName
    L2_3 = "callback"
    L1_3 = L1_3(L2_3)
    L2_3 = L2_2
    L3_3 = A1_2
    L4_3 = ...
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L7_2 = ...
  L4_2(L5_2, L6_2, L7_2)
end
L1_1(L2_1, L3_1)
