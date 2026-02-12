local L0_1, L1_1, L2_1
L0_1 = {}
Trash = L0_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "saveTrashData"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "saveTrashData"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = Trash
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = Trash
    L2_2[A0_2] = A1_2
  end
end
L0_1(L1_1, L2_1)
