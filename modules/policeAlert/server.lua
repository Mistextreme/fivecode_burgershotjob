local L0_1, L1_1, L2_1
L0_1 = {}
AlertCooldown = L0_1
L0_1 = {}
AlertCooldownTime = L0_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "activatePoliceAlert"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "activatePoliceAlert"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = AlertCooldownTime
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L2_2 = AlertCooldown
    L2_2[A1_2] = true
    L2_2 = AlertCooldownTime
    L3_2 = os
    L3_2 = L3_2.time
    L3_2 = L3_2()
    L2_2[A1_2] = L3_2
    L2_2 = TriggerClientEvent
    L3_2 = TriggerName
    L4_2 = "notify"
    L3_2 = L3_2(L4_2)
    L4_2 = source
    L5_2 = false
    L6_2 = _U
    L7_2 = "policealert_just_activated"
    L8_2 = A1_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = Config
    L7_2 = L7_2.NotifyType
    L7_2 = L7_2.success
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = DiscordLogs
    L3_2 = source
    L4_2 = nil
    L5_2 = "policeAlert"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = SetTimeout
    L3_2 = A0_2 * 60000
    function L4_2()
      local L0_3, L1_3
      L0_3 = AlertCooldown
      L1_3 = A1_2
      L0_3[L1_3] = false
      L0_3 = AlertCooldownTime
      L1_3 = A1_2
      L0_3[L1_3] = nil
    end
    L2_2(L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCallback
L1_1 = TriggerName
L2_1 = "checkPoliceAlert"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = AlertCooldown
  L4_2 = L4_2[A3_2]
  if L4_2 then
    L4_2 = os
    L4_2 = L4_2.difftime
    L5_2 = AlertCooldownTime
    L5_2 = L5_2[A3_2]
    L6_2 = os
    L6_2 = L6_2.time
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2()
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L5_2 = A2_2 * 60
    L4_2 = L4_2 + L5_2
    L5_2 = _U
    L6_2 = "policealert_cooldown_need_to_wait"
    L7_2 = math
    L7_2 = L7_2.floor
    L8_2 = L4_2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2 = A1_2
    L7_2 = true
    L6_2 = L6_2(L7_2)
    L7_2 = TriggerClientEvent
    L8_2 = TriggerName
    L9_2 = "notify"
    L8_2 = L8_2(L9_2)
    L9_2 = A0_2
    L10_2 = false
    L11_2 = L5_2
    L12_2 = Config
    L12_2 = L12_2.NotifyType
    L12_2 = L12_2.error
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    return L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  end
  L4_2 = A1_2
  L5_2 = false
  L4_2(L5_2)
end
L0_1(L1_1, L2_1)
