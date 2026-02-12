local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
Duty = L0_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "dutySystem"
L1_1, L2_1, L3_1 = L1_1(L2_1)
L0_1(L1_1, L2_1, L3_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "dutySystem"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetIdentifier
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if not A0_2 then
    L2_2 = Duty
    L2_2[L1_2] = true
    L2_2 = TriggerClientEvent
    L3_2 = TriggerName
    L4_2 = "notify"
    L3_2 = L3_2(L4_2)
    L4_2 = source
    L5_2 = _U
    L6_2 = "duty_notify_title"
    L5_2 = L5_2(L6_2)
    L6_2 = _U
    L7_2 = "duty_went_on_duty"
    L6_2 = L6_2(L7_2)
    L7_2 = Config
    L7_2 = L7_2.NotifyType
    L7_2 = L7_2.info
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  elseif A0_2 then
    L2_2 = Duty
    L2_2[L1_2] = false
    L2_2 = TriggerClientEvent
    L3_2 = TriggerName
    L4_2 = "notify"
    L3_2 = L3_2(L4_2)
    L4_2 = source
    L5_2 = _U
    L6_2 = "duty_notify_title"
    L5_2 = L5_2(L6_2)
    L6_2 = _U
    L7_2 = "duty_went_off_duty"
    L6_2 = L6_2(L7_2)
    L7_2 = Config
    L7_2 = L7_2.NotifyType
    L7_2 = L7_2.info
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCallback
L1_1 = TriggerName
L2_1 = "checkDuty"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetIdentifier
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2
  L4_2 = Duty
  L4_2 = L4_2[L2_2]
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCallback
L1_1 = TriggerName
L2_1 = "checkPlayerDutyCount"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 0
  L3_2 = Config
  L3_2 = L3_2.Functions
  L3_2 = L3_2.Use
  L3_2 = L3_2.duty
  if L3_2 then
    L3_2 = pairs
    L4_2 = Duty
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      if L8_2 then
        L2_2 = L2_2 + 1
      end
    end
  else
    L3_2 = ipairs
    L4_2 = GetPlayers
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2()
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = JobInfo
      L9_2 = L9_2.name
      L10_2 = GetPlayerJobInfo
      L11_2 = A0_2
      L10_2 = L10_2(L11_2)
      L10_2 = L10_2.name
      if L9_2 == L10_2 then
        L2_2 = L2_2 + 1
      end
    end
  end
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "getDuty"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetIdentifier
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Duty
  L2_2 = L2_2[L1_2]
  if not L2_2 then
    L2_2 = false
    return L2_2
  else
    L2_2 = Duty
    L2_2 = L2_2[L1_2]
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "checkduty"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = Config
  L3_2 = L3_2.Functions
  L3_2 = L3_2.Use
  L3_2 = L3_2.duty
  if not L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = TriggerName
    L5_2 = "notify"
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2
    L6_2 = _U
    L7_2 = "duty_notify_title"
    L6_2 = L6_2(L7_2)
    L7_2 = _U
    L8_2 = "duty_on_duty"
    L7_2 = L7_2(L8_2)
    L8_2 = Config
    L8_2 = L8_2.NotifyType
    L8_2 = L8_2.info
    return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = exports
  L3_2 = L3_2.fivecode_burgershotjob
  L4_2 = L3_2
  L3_2 = L3_2.getDuty
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = TriggerName
    L5_2 = "notify"
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2
    L6_2 = _U
    L7_2 = "duty_notify_title"
    L6_2 = L6_2(L7_2)
    L7_2 = _U
    L8_2 = "duty_on_duty"
    L7_2 = L7_2(L8_2)
    L8_2 = Config
    L8_2 = L8_2.NotifyType
    L8_2 = L8_2.info
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L3_2 = TriggerClientEvent
    L4_2 = TriggerName
    L5_2 = "notify"
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2
    L6_2 = _U
    L7_2 = "duty_notify_title"
    L6_2 = L6_2(L7_2)
    L7_2 = _U
    L8_2 = "duty_off_duty"
    L7_2 = L7_2(L8_2)
    L8_2 = Config
    L8_2 = L8_2.NotifyType
    L8_2 = L8_2.error
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L3_1 = false
L0_1(L1_1, L2_1, L3_1)
