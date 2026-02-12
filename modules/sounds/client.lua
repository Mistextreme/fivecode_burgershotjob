local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "playCustomSound"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "playCustomSound"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = Config
  L3_2 = L3_2.UseCustomSounds
  if L3_2 then
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.type = "playCustomSound"
    L4_2.sound = A0_2
    L4_2.duration = A1_2
    L4_2.volume = A2_2
    L3_2(L4_2)
  end
end
L0_1(L1_1, L2_1)
