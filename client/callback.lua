local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = 0
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = L1_1
  L2_2 = L0_1
  L2_2[L3_2] = A1_2
  L2_2 = TriggerServerEvent
  L3_2 = TriggerName
  L4_2 = "callCallback"
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2
  L5_2 = L1_1
  L6_2 = ...
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L1_1
  L3_2 = 65535
  if L2_2 < L3_2 then
    L2_2 = L1_1
    L2_2 = L2_2 + 1
    L1_1 = L2_2
  else
    L2_2 = 0
    L1_1 = L2_2
  end
end
CallCallback = L2_1
L2_1 = RegisterNetEvent
L3_1 = TriggerName
L4_1 = "callback"
L3_1, L4_1 = L3_1(L4_1)
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = TriggerName
L4_1 = "callback"
L3_1 = L3_1(L4_1)
function L4_1(A0_2, ...)
  local L1_2, L2_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    return
  end
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  L2_2 = ...
  L1_2(L2_2)
end
L2_1(L3_1, L4_1)
