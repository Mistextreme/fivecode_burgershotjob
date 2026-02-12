local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "useHotTable"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "useHotTable"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2.args
  L1_2 = L1_2.id
  L2_2 = _U
  L3_2 = "hottable_stash_name"
  L4_2 = JobInfo
  L4_2 = L4_2.label
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = _U
  L4_2 = "hottable_stash_label"
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2.args
  L4_2 = L4_2.slots
  L5_2 = A0_2.args
  L5_2 = L5_2.weight
  L6_2 = MainCheck
  L7_2 = A0_2.args
  L7_2 = L7_2.jobName
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = TriggerServerEvent
    L7_2 = TriggerName
    L8_2 = "openStash"
    L7_2 = L7_2(L8_2)
    L8_2 = L2_2
    L9_2 = L3_2
    L10_2 = L4_2
    L11_2 = L5_2
    L12_2 = false
    L13_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
L0_1(L1_1, L2_1)
