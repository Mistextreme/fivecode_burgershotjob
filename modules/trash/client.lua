local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "useTrash"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "useTrash"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2.args
  L1_2 = L1_2.delete
  L2_2 = A0_2.args
  L2_2 = L2_2.id
  L3_2 = _U
  L4_2 = "trash_stash_name"
  L5_2 = JobInfo
  L5_2 = L5_2.label
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = _U
  L5_2 = "trash_stash_label"
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2.args
  L5_2 = L5_2.slots
  L6_2 = A0_2.args
  L6_2 = L6_2.weight
  L7_2 = TriggerServerEvent
  L8_2 = TriggerName
  L9_2 = "openStash"
  L8_2 = L8_2(L9_2)
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = L5_2
  L12_2 = L6_2
  L13_2 = false
  L14_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if L1_2 then
    L7_2 = TriggerServerEvent
    L8_2 = TriggerName
    L9_2 = "saveTrashData"
    L8_2 = L8_2(L9_2)
    L9_2 = L2_2
    L10_2 = L3_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1(L1_1, L2_1)
