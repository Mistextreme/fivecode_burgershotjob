local L0_1, L1_1, L2_1
L0_1 = {}
Missions = L0_1
L0_1 = {}
PlayersDoingMissionCooldown = L0_1
L0_1 = {}
PlayersDoingMissionCooldownTime = L0_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "replaceSponge"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "replaceSponge"
L1_1 = L1_1(L2_1)
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = source
  L1_2 = GetIdentifier
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = PlayersDoingMission
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = RemoveItem
    L3_2 = L0_2
    L4_2 = SpongeItems
    L4_2 = L4_2.clean
    L5_2 = 1
    L6_2 = nil
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = AddItem
    L3_2 = L0_2
    L4_2 = SpongeItems
    L4_2 = L4_2.dirty
    L5_2 = 1
    L6_2 = nil
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCallback
L1_1 = TriggerName
L2_1 = "checkMissions"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = GetIdentifier
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = A2_2.id
  L5_2 = "-"
  L6_2 = A2_2.type
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = A2_2.cooldown
  L6_2 = Busy
  L6_2 = L6_2[L3_2]
  if L6_2 then
    L6_2 = A1_2
    L7_2 = false
    L6_2 = L6_2(L7_2)
    L7_2 = TriggerClientEvent
    L8_2 = TriggerName
    L9_2 = "notify"
    L8_2 = L8_2(L9_2)
    L9_2 = A0_2
    L10_2 = false
    L11_2 = _U
    L12_2 = "busy"
    L11_2 = L11_2(L12_2)
    L12_2 = Config
    L12_2 = L12_2.NotifyType
    L12_2 = L12_2.error
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    return L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  end
  L6_2 = PlayersDoingMission
  L6_2 = L6_2[L3_2]
  if not L6_2 then
    L6_2 = PlayersDoingMission
    L7_2 = {}
    L6_2[L3_2] = L7_2
  end
  L6_2 = Missions
  L6_2 = L6_2[L4_2]
  if not L6_2 then
    L6_2 = Missions
    L7_2 = {}
    L7_2.occupied = 0
    L6_2[L4_2] = L7_2
  end
  L6_2 = A2_2.info
  if "checkStatus" == L6_2 then
    L6_2 = A2_2.checkForCooldown
    if L6_2 then
      L6_2 = PlayersDoingMissionCooldown
      L6_2 = L6_2[L3_2]
      if L6_2 then
        L6_2 = os
        L6_2 = L6_2.difftime
        L7_2 = PlayersDoingMissionCooldownTime
        L7_2 = L7_2[L3_2]
        L8_2 = os
        L8_2 = L8_2.time
        L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2()
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L7_2 = L5_2 * 60
        L6_2 = L6_2 + L7_2
        L7_2 = _U
        L8_2 = "mission_cooldown_need_to_wait"
        L9_2 = math
        L9_2 = L9_2.floor
        L10_2 = L6_2
        L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L8_2 = TriggerClientEvent
        L9_2 = TriggerName
        L10_2 = "notify"
        L9_2 = L9_2(L10_2)
        L10_2 = A0_2
        L11_2 = false
        L12_2 = L7_2
        L13_2 = Config
        L13_2 = L13_2.NotifyType
        L13_2 = L13_2.error
        return L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
      end
    end
    L6_2 = A1_2
    L7_2 = Missions
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.occupied
    L8_2 = A2_2.playerCount
    L7_2 = L7_2 >= L8_2
    L8_2 = next
    L9_2 = PlayersDoingMission
    L9_2 = L9_2[L3_2]
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  else
    L6_2 = A2_2.info
    if "changeStatus" == L6_2 then
      L6_2 = PlayersDoingMission
      L7_2 = A2_2.status
      if L7_2 then
        L7_2 = {}
        L7_2.id = L4_2
        if L7_2 then
          goto lbl_117
        end
      end
      L7_2 = {}
      ::lbl_117::
      L6_2[L3_2] = L7_2
      L6_2 = Missions
      L6_2 = L6_2[L4_2]
      L7_2 = A2_2.status
      if L7_2 then
        L7_2 = Missions
        L7_2 = L7_2[L4_2]
        L7_2 = L7_2.occupied
        L7_2 = L7_2 + 1
        if L7_2 then
          goto lbl_135
        end
      end
      L7_2 = Missions
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.occupied
      L7_2 = L7_2 - 1
      ::lbl_135::
      L6_2.occupied = L7_2
    else
      L6_2 = A2_2.info
      if "finished" == L6_2 then
        L6_2 = math
        L6_2 = L6_2.random
        L7_2 = A2_2.reward
        L7_2 = L7_2.min
        L8_2 = A2_2.reward
        L8_2 = L8_2.max
        L6_2 = L6_2(L7_2, L8_2)
        L7_2 = PlayersDoingMission
        L8_2 = {}
        L7_2[L3_2] = L8_2
        L7_2 = Missions
        L7_2 = L7_2[L4_2]
        L8_2 = Missions
        L8_2 = L8_2[L4_2]
        L8_2 = L8_2.occupied
        L8_2 = L8_2 - 1
        L7_2.occupied = L8_2
        L7_2 = AddMoney
        L8_2 = A0_2
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
        if L6_2 > 0 then
          L7_2 = DiscordLogs
          L8_2 = A0_2
          L9_2 = {}
          L9_2.reward = L6_2
          L10_2 = "mission"
          L7_2(L8_2, L9_2, L10_2)
        end
        L7_2 = TriggerClientEvent
        L8_2 = TriggerName
        L9_2 = "notify"
        L8_2 = L8_2(L9_2)
        L9_2 = A0_2
        L10_2 = false
        L11_2 = _U
        L12_2 = "mission_reward_claimed"
        L11_2 = L11_2(L12_2)
        L12_2 = Config
        L12_2 = L12_2.NotifyType
        L12_2 = L12_2.success
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        L7_2 = PlayersDoingMissionCooldown
        L7_2 = L7_2[L3_2]
        if not L7_2 then
          L7_2 = PlayersDoingMissionCooldown
          L7_2[L3_2] = true
          L7_2 = PlayersDoingMissionCooldownTime
          L8_2 = os
          L8_2 = L8_2.time
          L8_2 = L8_2()
          L7_2[L3_2] = L8_2
          L7_2 = SetTimeout
          L8_2 = L5_2 * 60000
          function L9_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
            L0_3 = PlayersDoingMissionCooldown
            L1_3 = L3_2
            L0_3[L1_3] = false
            L0_3 = PlayersDoingMissionCooldownTime
            L1_3 = L3_2
            L0_3[L1_3] = nil
            L0_3 = TriggerClientEvent
            L1_3 = TriggerName
            L2_3 = "notify"
            L1_3 = L1_3(L2_3)
            L2_3 = A0_2
            L3_3 = false
            L4_3 = _U
            L5_3 = "mission_reward_end"
            L6_3 = JobInfo
            L6_3 = L6_3.label
            L4_3 = L4_3(L5_3, L6_3)
            L5_3 = Config
            L5_3 = L5_3.NotifyType
            L5_3 = L5_3.info
            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
          end
          L7_2(L8_2, L9_2)
        end
      end
    end
  end
end
L0_1(L1_1, L2_1)
