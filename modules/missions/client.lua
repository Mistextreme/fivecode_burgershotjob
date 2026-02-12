local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = {}
L1_1 = false
L2_1 = false
L3_1 = false
L4_1 = false
L5_1 = nil
L6_1 = 0
L7_1 = 0
L8_1 = RegisterNetEvent
L9_1 = TriggerName
L10_1 = "useMissionMenu"
L9_1, L10_1 = L9_1(L10_1)
L8_1(L9_1, L10_1)
L8_1 = AddEventHandler
L9_1 = TriggerName
L10_1 = "useMissionMenu"
L9_1 = L9_1(L10_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = CallCallback
  L4_2 = TriggerName
  L5_2 = "checkMissions"
  L4_2 = L4_2(L5_2)
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = CallCallback
    L3_3 = TriggerName
    L4_3 = "checkDuty"
    L3_3 = L3_3(L4_3)
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
      L1_4 = A0_2.args
      L1_4 = L1_4.duty
      if L1_4 and not A0_4 then
        L1_4 = TriggerEvent
        L2_4 = TriggerName
        L3_4 = "notify"
        L2_4 = L2_4(L3_4)
        L3_4 = _U
        L4_4 = "duty_notify_title"
        L3_4 = L3_4(L4_4)
        L4_4 = _U
        L5_4 = "not_on_duty"
        L4_4 = L4_4(L5_4)
        L5_4 = Config
        L5_4 = L5_4.NotifyType
        L5_4 = L5_4.error
        return L1_4(L2_4, L3_4, L4_4, L5_4)
      end
      L1_4 = MainCheck
      L2_4 = A0_2.args
      L2_4 = L2_4.jobName
      L1_4 = L1_4(L2_4)
      if L1_4 then
        L1_4 = {}
        L2_4 = {}
        L2_4.name = "useMissionMenu"
        L3_4 = _U
        L4_4 = "mission_menu_title"
        L3_4 = L3_4(L4_4)
        L2_4.title = L3_4
        L1_4.header = L2_4
        L2_4 = {}
        L1_4.options = L2_4
        menu = L1_4
        L1_4 = A1_3
        if not L1_4 then
          L1_4 = table
          L1_4 = L1_4.insert
          L2_4 = menu
          L2_4 = L2_4.options
          L3_4 = {}
          L4_4 = _U
          L5_4 = "mission_menu_sweeping_title"
          L4_4 = L4_4(L5_4)
          L3_4.title = L4_4
          L4_4 = _U
          L5_4 = "mission_menu_sweeping_title_desc"
          L4_4 = L4_4(L5_4)
          L3_4.description = L4_4
          L3_4.icon = "fas fa-broom"
          L3_4.arrow = true
          L4_4 = {}
          L5_4 = A0_2
          L4_4.args = L5_4
          L3_4.args = L4_4
          L3_4.event = "useMissionMenu1"
          function L4_4()
            local L0_5, L1_5
            L0_1.type = "sweeping"
            L0_5 = StartMissionConfirm
            L1_5 = A0_2
            L0_5(L1_5)
          end
          L3_4.onSelect = L4_4
          L1_4(L2_4, L3_4)
          L1_4 = table
          L1_4 = L1_4.insert
          L2_4 = menu
          L2_4 = L2_4.options
          L3_4 = {}
          L4_4 = _U
          L5_4 = "mission_menu_clean_tables_title"
          L4_4 = L4_4(L5_4)
          L3_4.title = L4_4
          L4_4 = _U
          L5_4 = "mission_menu_clean_tables_title_desc"
          L4_4 = L4_4(L5_4)
          L3_4.description = L4_4
          L3_4.icon = "fas fa-broom"
          L3_4.arrow = true
          L4_4 = {}
          L5_4 = A0_2
          L4_4.args = L5_4
          L3_4.args = L4_4
          L3_4.event = "useMissionMenu2"
          function L4_4()
            local L0_5, L1_5
            L0_1.type = "cleaning"
            L0_5 = StartMissionConfirm
            L1_5 = A0_2
            L0_5(L1_5)
          end
          L3_4.onSelect = L4_4
          L1_4(L2_4, L3_4)
        else
          L1_4 = L4_1
          if not L1_4 then
            L1_4 = _U
            L2_4 = "mission_finish_message"
            L1_4 = L1_4(L2_4)
            L2_2 = L1_4
          else
            L1_4 = _U
            L2_4 = "mission_store_broom_message"
            L1_4 = L1_4(L2_4)
            L2_2 = L1_4
          end
          L1_4 = L6_1
          L1_4 = L1_4 < 100
          L1_2 = L1_4
          L1_4 = L6_1
          if L1_4 >= 100 then
            L1_4 = L1_1
            if L1_4 then
              L1_4 = true
              L1_2 = L1_4
            end
          end
          L1_4 = L1_2
          if not L1_4 then
            L1_4 = _U
            L2_4 = "mission_enjoy_reward_message"
            L1_4 = L1_4(L2_4)
            L2_2 = L1_4
          end
          L1_4 = table
          L1_4 = L1_4.insert
          L2_4 = menu
          L2_4 = L2_4.options
          L3_4 = {}
          L4_4 = L6_1
          if L4_4 < 100 then
            L4_4 = "Reward"
            if L4_4 then
              goto lbl_142
            end
          end
          L4_4 = "Claim reward"
          ::lbl_142::
          L3_4.title = L4_4
          L4_4 = _U
          L5_4 = "mission_menu_current_progress_desc"
          L6_4 = math
          L6_4 = L6_4.floor
          L7_4 = L6_1
          L6_4 = L6_4(L7_4)
          L7_4 = L2_2
          L4_4 = L4_4(L5_4, L6_4, L7_4)
          L3_4.description = L4_4
          L3_4.icon = "fas fa-coins"
          L4_4 = L1_2
          L3_4.disabled = L4_4
          L4_4 = L1_2
          L4_4 = not L4_4
          L3_4.arrow = L4_4
          L4_4 = {}
          L5_4 = A0_2
          L4_4.args = L5_4
          L3_4.args = L4_4
          L3_4.event = "useMissionMenu3"
          function L4_4()
            local L0_5, L1_5, L2_5, L3_5, L4_5
            L0_5 = L6_1
            if L0_5 >= 100 then
              L0_5 = CallCallback
              L1_5 = TriggerName
              L2_5 = "checkMissions"
              L1_5 = L1_5(L2_5)
              function L2_5()
                local L0_6, L1_6
              end
              L3_5 = {}
              L3_5.info = "finished"
              L3_5.status = false
              L4_5 = L0_1.type
              L3_5.type = L4_5
              L4_5 = A0_2.args
              L4_5 = L4_5.playerCount
              L3_5.playerCount = L4_5
              L4_5 = A0_2.args
              L4_5 = L4_5.cooldown
              L3_5.cooldown = L4_5
              L4_5 = A0_2.args
              L4_5 = L4_5.reward
              L3_5.reward = L4_5
              L4_5 = A0_2.args
              L4_5 = L4_5.id
              L3_5.id = L4_5
              L0_5(L1_5, L2_5, L3_5)
            end
          end
          L3_4.onSelect = L4_4
          L1_4(L2_4, L3_4)
          L1_4 = L6_1
          if L1_4 < 100 then
            L1_4 = table
            L1_4 = L1_4.insert
            L2_4 = menu
            L2_4 = L2_4.options
            L3_4 = {}
            L4_4 = _U
            L5_4 = "mission_menu_cancel"
            L4_4 = L4_4(L5_4)
            L3_4.title = L4_4
            L4_4 = _U
            L5_4 = "mission_menu_cancel_desc"
            L4_4 = L4_4(L5_4)
            L3_4.description = L4_4
            L3_4.icon = "fas fa-ban"
            L3_4.arrow = true
            L4_4 = {}
            L5_4 = A0_2
            L4_4.args = L5_4
            L3_4.args = L4_4
            L3_4.event = "useMissionMenu4"
            function L4_4()
              local L0_5, L1_5, L2_5, L3_5, L4_5
              L0_5 = L0_1.type
              if "sweeping" == L0_5 then
                L0_5 = A0_2.storeBroom
                if not L0_5 then
                  L0_5 = L5_1
                  if L0_5 then
                    A0_2.storeBroom = true
                    L0_5 = CancelMission
                    L1_5 = A0_2
                    L2_5 = "none"
                    L0_5(L1_5, L2_5)
                    L0_5 = StartStopWorking
                    L1_5 = A0_2
                    L0_5(L1_5)
                    L0_5 = TriggerEvent
                    L1_5 = TriggerName
                    L2_5 = "notify"
                    L1_5 = L1_5(L2_5)
                    L2_5 = false
                    L3_5 = _U
                    L4_5 = "mission_store_broom"
                    L3_5 = L3_5(L4_5)
                    L4_5 = Config
                    L4_5 = L4_5.NotifyType
                    L4_5 = L4_5.info
                    L0_5(L1_5, L2_5, L3_5, L4_5)
                  else
                    L0_5 = CancelMission
                    L1_5 = A0_2
                    L2_5 = "normal"
                    L0_5(L1_5, L2_5)
                  end
                end
              else
                L0_5 = CancelMission
                L1_5 = A0_2
                L2_5 = "normal"
                L0_5(L1_5, L2_5)
              end
            end
            L3_4.onSelect = L4_4
            L1_4(L2_4, L3_4)
          end
        end
        L1_4 = OpenMenu
        L2_4 = menu
        L1_4(L2_4)
      end
    end
    L2_3(L3_3, L4_3)
  end
  L6_2 = {}
  L6_2.info = "checkStatus"
  L6_2.type = "none"
  L7_2 = A0_2.args
  L7_2 = L7_2.playerCount
  L6_2.playerCount = L7_2
  L7_2 = A0_2.args
  L7_2 = L7_2.id
  L6_2.id = L7_2
  L3_2(L4_2, L5_2, L6_2)
end
L8_1(L9_1, L10_1)
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = L0_1.type
  if "sweeping" == L2_2 then
    L2_2 = _U
    L3_2 = "mission_menu_start_mission_message"
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L2_2 = _U
    L3_2 = "mission_menu_start_mission_message2"
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  L2_2 = {}
  L3_2 = {}
  L3_2.name = "missionMenuConfirm"
  L4_2 = _U
  L5_2 = "mission_menu_start_title"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L3_2.backMenu = "useMissionMenu"
  L2_2.header = L3_2
  L3_2 = {}
  L4_2 = {}
  L5_2 = _U
  L6_2 = "mission_menu_start_disc"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L4_2.description = L1_2
  L4_2.icon = "fas fa-circle-check"
  L4_2.arrow = true
  L5_2 = {}
  L5_2.args = A0_2
  L4_2.args = L5_2
  L4_2.event = "missionMenuConfirm1"
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = CallCallback
    L1_3 = TriggerName
    L2_3 = "checkMissions"
    L1_3 = L1_3(L2_3)
    function L2_3(A0_4, A1_4)
      local L2_4, L3_4, L4_4, L5_4, L6_4
      if not A0_4 then
        L2_4 = false
        L4_1 = L2_4
        L2_4 = 0
        L6_1 = L2_4
        L2_4 = StartStopWorking
        L3_4 = A0_2
        L2_4(L3_4)
      else
        L2_4 = TriggerEvent
        L3_4 = TriggerName
        L4_4 = "notify"
        L3_4 = L3_4(L4_4)
        L4_4 = false
        L5_4 = _U
        L6_4 = "mission_occupied"
        L5_4 = L5_4(L6_4)
        L6_4 = Config
        L6_4 = L6_4.NotifyType
        L6_4 = L6_4.error
        L2_4(L3_4, L4_4, L5_4, L6_4)
      end
    end
    L3_3 = {}
    L3_3.info = "checkStatus"
    L4_3 = L0_1.type
    L3_3.type = L4_3
    L4_3 = A0_2.args
    L4_3 = L4_3.playerCount
    L3_3.playerCount = L4_3
    L3_3.checkForCooldown = true
    L4_3 = A0_2.args
    L4_3 = L4_3.cooldown
    L3_3.cooldown = L4_3
    L4_3 = A0_2.args
    L4_3 = L4_3.id
    L3_3.id = L4_3
    L0_3(L1_3, L2_3, L3_3)
  end
  L4_2.onSelect = L5_2
  L3_2[1] = L4_2
  L2_2.options = L3_2
  menu = L2_2
  L2_2 = OpenMenu
  L3_2 = menu
  L2_2(L3_2)
end
StartMissionConfirm = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = vec3
  L2_2 = A0_2.args
  L2_2 = L2_2.storagePos
  L2_2 = L2_2.x
  L3_2 = A0_2.args
  L3_2 = L3_2.storagePos
  L3_2 = L3_2.y
  L4_2 = A0_2.args
  L4_2 = L4_2.storagePos
  L4_2 = L4_2.z
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L0_1.type
  if "sweeping" == L2_2 then
    L2_2 = A0_2.args
    L2_2 = L2_2.dirtySpots
    L2_2 = L2_2.Ground
    if L2_2 then
      goto lbl_23
    end
  end
  L2_2 = A0_2.args
  L2_2 = L2_2.dirtySpots
  L2_2 = L2_2.Tables
  ::lbl_23::
  L3_2 = nil
  L4_2 = L0_1.type
  if "sweeping" == L4_2 then
    L4_2 = A0_2.storeBroom
    if L4_2 then
      L4_2 = _U
      L5_2 = "mission_store_broon"
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2 or L3_2
    end
    if not L4_2 then
      L4_2 = _U
      L5_2 = "mission_take_broom"
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
    end
  else
    L4_2 = CallCallback
    L5_2 = TriggerName
    L6_2 = "checkItemsToClean"
    L5_2 = L5_2(L6_2)
    function L6_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      if A0_3 then
        L1_3 = StartMission
        L2_3 = A0_2
        L1_3(L2_3)
        L1_3 = StartSweeping
        L2_3 = A0_2
        L3_3 = L2_2
        L4_3 = L1_2
        L1_3(L2_3, L3_3, L4_3)
      end
    end
    L7_2 = {}
    L8_2 = SpongeItems
    L8_2 = L8_2.clean
    L7_2.item = L8_2
    L7_2.amount = 1
    L8_2 = _U
    L9_2 = "mission_clean_sponges"
    L8_2 = L8_2(L9_2)
    L7_2.itemName = L8_2
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = A0_2.storeBroom
  if not L4_2 then
    L4_2 = StartMission
    L5_2 = A0_2
    L4_2(L5_2)
  end
  L4_2 = Citizen
  L4_2 = L4_2.CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = true
    L2_1 = L0_3
    while true do
      L0_3 = L2_1
      if not L0_3 then
        break
      end
      L0_3 = 5
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = GetEntityCoords
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      L3_3 = L1_2
      L3_3 = L2_3 - L3_3
      L3_3 = #L3_3
      L4_3 = DrawDestination
      L5_3 = L1_2
      L6_3 = L3_2
      L7_3 = L3_3
      L8_3 = "sweeping"
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = 1.5
      if L3_3 > L4_3 and L3_3 < 2.0 then
        L4_3 = StopHelpNotification
        L4_3()
      end
      L4_3 = 1.5
      if L3_3 < L4_3 then
        L4_3 = Busy
        if not L4_3 then
          L4_3 = ShowHelpNotification
          L5_3 = _U
          L6_3 = "mission_store_take_broon"
          L5_3 = L5_3(L6_3)
          L6_3 = L3_2
          L5_3 = L5_3 .. L6_3
          L4_3(L5_3)
          L4_3 = IsControlJustPressed
          L5_3 = 0
          L6_3 = 38
          L4_3 = L4_3(L5_3, L6_3)
          if L4_3 then
            L4_3 = Busy
            if not L4_3 then
              L4_3 = A0_2.storeBroom
              if L4_3 then
                L4_3 = StopHelpNotification
                L4_3()
                L4_3 = L5_1
                if L4_3 then
                  L4_3 = SetEntityHeading
                  L5_3 = L1_3
                  L6_3 = A0_2.args
                  L6_3 = L6_3.storagePos
                  L6_3 = L6_3.w
                  L4_3(L5_3, L6_3)
                  L4_3 = Broom
                  L5_3 = "store"
                  L4_3(L5_3)
                end
                L4_3 = L6_1
                if L4_3 >= 100 then
                  L4_3 = CancelMission
                  L5_3 = A0_2
                  L6_3 = "finished"
                  L4_3(L5_3, L6_3)
                  L4_3 = false
                  L1_1 = L4_3
                else
                  L4_3 = CancelMission
                  L5_3 = A0_2
                  L6_3 = "normal"
                  L4_3(L5_3, L6_3)
                end
              else
                L4_3 = StopHelpNotification
                L4_3()
                L4_3 = SetEntityHeading
                L5_3 = L1_3
                L6_3 = A0_2.args
                L6_3 = L6_3.storagePos
                L6_3 = L6_3.w
                L4_3(L5_3, L6_3)
                L4_3 = Broom
                L5_3 = "create"
                L4_3(L5_3)
                L4_3 = StartSweeping
                L5_3 = A0_2
                L6_3 = L2_2
                L7_3 = L1_2
                L4_3(L5_3, L6_3, L7_3)
                L4_3 = CancelMission
                L5_3 = A0_2
                L6_3 = "none"
                L4_3(L5_3, L6_3)
                L4_3 = true
                L1_1 = L4_3
              end
            end
          end
        end
      end
      if not (L3_3 > 60) then
        L4_3 = IsPedDeadOrDying
        L5_3 = L1_3
        L4_3 = L4_3(L5_3)
        if not L4_3 then
          goto lbl_119
        end
      end
      L4_3 = CancelMission
      L5_3 = A0_2
      L6_3 = "forced"
      L4_3(L5_3, L6_3)
      L4_3 = Broom
      L5_3 = "delete"
      L4_3(L5_3)
      ::lbl_119::
      L4_3 = Wait
      L5_3 = L0_3
      L4_3(L5_3)
    end
  end
  L4_2(L5_2)
end
StartStopWorking = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = {}
  L4_2 = 0
  L5_2 = #A1_2
  if L5_2 < 3 then
    L5_2 = #A1_2
    if L5_2 then
      goto lbl_20
    end
  end
  L5_2 = math
  L5_2 = L5_2.random
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = #A1_2
  L7_2 = L7_2 / 3
  L6_2 = L6_2(L7_2)
  L7_2 = #A1_2
  L5_2 = L5_2(L6_2, L7_2)
  ::lbl_20::
  L6_2 = GetRandomSpotsToClean
  L7_2 = A1_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = Citizen
  L7_2 = L7_2.CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3
    L0_3 = true
    L3_1 = L0_3
    while true do
      L0_3 = L3_1
      if not L0_3 then
        break
      end
      L0_3 = 500
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = GetEntityCoords
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      L3_3 = A2_2
      L3_3 = L2_3 - L3_3
      L3_3 = #L3_3
      L4_3 = pairs
      L5_3 = L6_2
      L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
      for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
        L10_3 = vec3
        L11_3 = L9_3.x
        L12_3 = L9_3.y
        L13_3 = L9_3.z
        L10_3 = L10_3(L11_3, L12_3, L13_3)
        L10_3 = L2_3 - L10_3
        L10_3 = #L10_3
        L11_3 = L3_2
        L11_3 = L11_3[L8_3]
        if not L11_3 then
          L0_3 = 5
          L11_3 = DrawMarker
          L12_3 = 2
          L13_3 = L9_3.x
          L14_3 = L9_3.y
          L15_3 = L9_3.z
          L16_3 = 0.0
          L17_3 = 0.0
          L18_3 = 0.0
          L19_3 = -180.0
          L20_3 = 0.0
          L21_3 = 0.0
          L22_3 = 0.2
          L23_3 = 0.2
          L24_3 = 0.2
          L25_3 = 200
          L26_3 = 200
          L27_3 = 0
          L28_3 = 120
          L29_3 = true
          L30_3 = true
          L31_3 = 2
          L32_3 = true
          L33_3 = false
          L34_3 = false
          L35_3 = false
          L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
          L11_3 = 1.5
          if L10_3 > L11_3 and L10_3 < 2.0 then
            L11_3 = StopHelpNotification
            L11_3()
          end
          L11_3 = 1.5
          if L10_3 < L11_3 then
            L11_3 = Busy
            if not L11_3 then
              L11_3 = ShowHelpNotification
              L12_3 = _U
              L13_3 = "mission_start_clean"
              L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3 = L12_3(L13_3)
              L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
              L11_3 = IsControlJustPressed
              L12_3 = 0
              L13_3 = 38
              L11_3 = L11_3(L12_3, L13_3)
              if L11_3 then
                L11_3 = Busy
                if not L11_3 then
                  Busy = true
                  L11_3 = L0_1.type
                  if "sweeping" == L11_3 then
                    L11_3 = L3_2
                    L11_3[L8_3] = true
                    L11_3 = L4_2
                    L11_3 = L11_3 + 1
                    L4_2 = L11_3
                    L11_3 = L4_2
                    L11_3 = L11_3 * 100
                    L12_3 = L5_2
                    L11_3 = L11_3 / L12_3
                    L6_1 = L11_3
                    L11_3 = L4_2
                    L12_3 = L5_2
                    if L11_3 < L12_3 then
                      L11_3 = _U
                      L12_3 = "mission_spots_left"
                      L13_3 = L5_2
                      L14_3 = L4_2
                      L13_3 = L13_3 - L14_3
                      L11_3 = L11_3(L12_3, L13_3)
                      if L11_3 then
                        goto lbl_119
                      end
                    end
                    L11_3 = _U
                    L12_3 = "mission_spots_finished"
                    L11_3 = L11_3(L12_3)
                    ::lbl_119::
                    message = L11_3
                    L11_3 = StopHelpNotification
                    L11_3()
                    L11_3 = SweepingAnimation
                    L12_3 = L9_3
                    L11_3(L12_3)
                    L11_3 = TriggerEvent
                    L12_3 = TriggerName
                    L13_3 = "notify"
                    L12_3 = L12_3(L13_3)
                    L13_3 = false
                    L14_3 = message
                    L15_3 = Config
                    L15_3 = L15_3.NotifyType
                    L15_3 = L15_3.info
                    L11_3(L12_3, L13_3, L14_3, L15_3)
                  else
                    L11_3 = CallCallback
                    L12_3 = TriggerName
                    L13_3 = "checkItemsToClean"
                    L12_3 = L12_3(L13_3)
                    function L13_3(A0_4)
                      local L1_4, L2_4, L3_4, L4_4, L5_4
                      if A0_4 then
                        L2_4 = L8_3
                        L1_4 = L3_2
                        L1_4[L2_4] = true
                        L1_4 = L4_2
                        L1_4 = L1_4 + 1
                        L4_2 = L1_4
                        L1_4 = L4_2
                        L1_4 = L1_4 * 100
                        L2_4 = L5_2
                        L1_4 = L1_4 / L2_4
                        L6_1 = L1_4
                        L1_4 = L4_2
                        L2_4 = L5_2
                        if L1_4 < L2_4 then
                          L1_4 = _U
                          L2_4 = "mission_spots_only_left"
                          L3_4 = L5_2
                          L4_4 = L4_2
                          L3_4 = L3_4 - L4_4
                          L1_4 = L1_4(L2_4, L3_4)
                          if L1_4 then
                            goto lbl_33
                          end
                        end
                        L1_4 = _U
                        L2_4 = "mission_spots_finished_reward"
                        L1_4 = L1_4(L2_4)
                        ::lbl_33::
                        message = L1_4
                        L1_4 = StopHelpNotification
                        L1_4()
                        L1_4 = CleaningTableAnimation
                        L2_4 = L1_3
                        L3_4 = L9_3
                        L1_4(L2_4, L3_4)
                        L1_4 = TriggerEvent
                        L2_4 = TriggerName
                        L3_4 = "notify"
                        L2_4 = L2_4(L3_4)
                        L3_4 = false
                        L4_4 = message
                        L5_4 = Config
                        L5_4 = L5_4.NotifyType
                        L5_4 = L5_4.info
                        L1_4(L2_4, L3_4, L4_4, L5_4)
                      else
                        Busy = false
                      end
                    end
                    L14_3 = {}
                    L15_3 = SpongeItems
                    L15_3 = L15_3.clean
                    L14_3.item = L15_3
                    L14_3.amount = 1
                    L15_3 = _U
                    L16_3 = "mission_clean_sponges"
                    L15_3 = L15_3(L16_3)
                    L14_3.itemName = L15_3
                    L11_3(L12_3, L13_3, L14_3)
                  end
                  L11_3 = L4_2
                  L12_3 = L5_2
                  if L11_3 >= L12_3 then
                    L11_3 = true
                    L4_1 = L11_3
                    L11_3 = L0_1.type
                    if "sweeping" == L11_3 then
                      A0_2.storeBroom = true
                      L11_3 = StartStopWorking
                      L12_3 = A0_2
                      L11_3(L12_3)
                      L11_3 = false
                      L3_1 = L11_3
                    else
                      L11_3 = 0
                      L7_1 = L11_3
                      L11_3 = false
                      L3_1 = L11_3
                    end
                  end
                end
              end
            end
          end
        end
      end
      if not (L3_3 > 60) then
        L4_3 = IsPedDeadOrDying
        L5_3 = L1_3
        L4_3 = L4_3(L5_3)
        if not L4_3 then
          goto lbl_190
        end
      end
      L4_3 = CancelMission
      L5_3 = A0_2
      L6_3 = "forced"
      L4_3(L5_3, L6_3)
      L4_3 = Broom
      L5_3 = "delete"
      L4_3(L5_3)
      ::lbl_190::
      L4_3 = Wait
      L5_3 = L0_3
      L4_3(L5_3)
    end
  end
  L7_2(L8_2)
end
StartSweeping = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 0
  L4_2 = 10
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L7_1
  L3_2 = L3_2 + 1
  L7_1 = L3_2
  if L2_2 > 7 then
    L3_2 = TriggerServerEvent
    L4_2 = TriggerName
    L5_2 = "replaceSponge"
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L3_2 = FreezeEntityPosition
  L4_2 = A0_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityCoords
  L4_2 = A0_2
  L5_2 = A1_2.x
  L6_2 = A1_2.y
  L7_2 = A1_2.z
  L7_2 = L7_2 - 1
  L8_2 = false
  L9_2 = false
  L10_2 = false
  L11_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = SetEntityHeading
  L4_2 = A0_2
  L5_2 = A1_2.w
  L3_2(L4_2, L5_2)
  L3_2 = Request
  L4_2 = "anim"
  L5_2 = "timetable@floyd@clean_kitchen@base"
  L3_2(L4_2, L5_2)
  L3_2 = TaskPlayAnim
  L4_2 = A0_2
  L5_2 = "timetable@floyd@clean_kitchen@base"
  L6_2 = "base"
  L7_2 = -8.0
  L8_2 = 8.0
  L9_2 = 4500
  L10_2 = 1.0
  L11_2 = false
  L12_2 = false
  L13_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2 = SpawnProp
  L4_2 = "prop_sponge_01"
  L5_2 = 28422
  L6_2 = 0.0
  L7_2 = 0.0
  L8_2 = -0.01
  L9_2 = 90.0
  L10_2 = 0.0
  L11_2 = 0.0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = ProgressBars
  L4_2 = _U
  L5_2 = "mission_progressbar_cleaning"
  L4_2 = L4_2(L5_2)
  L5_2 = 2500
  L3_2(L4_2, L5_2)
  L3_2 = FreezeEntityPosition
  L4_2 = A0_2
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = ClearPedTasks
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = ClearProps
  L3_2()
  Busy = false
end
CleaningTableAnimation = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetOffsetFromEntityInWorldCoords
  L2_2 = L0_2
  L3_2 = 0.0
  L4_2 = 1.25
  L5_2 = 0.0
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = 4
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  L3_2.anim = "anim@amb@drug_field_workers@rake@male_a@base"
  L3_2.disc = "base"
  if 2 == L2_2 then
    L3_2.anim = "anim@amb@drug_field_workers@rake@male_a@idles"
    L3_2.disc = "idle_b"
  elseif 3 == L2_2 then
    L3_2.anim = "anim@amb@drug_field_workers@rake@male_b@base"
    L3_2.disc = "base"
  elseif 4 == L2_2 then
    L3_2.anim = "anim@amb@drug_field_workers@rake@male_b@idles"
    L3_2.disc = "idle_d"
  end
  L4_2 = Broom
  L5_2 = "sweeping"
  L4_2(L5_2)
  L4_2 = FreezeEntityPosition
  L5_2 = L0_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = Request
  L5_2 = "anim"
  L6_2 = L3_2.anim
  L4_2(L5_2, L6_2)
  L4_2 = TaskPlayAnim
  L5_2 = L0_2
  L6_2 = L3_2.anim
  L7_2 = L3_2.disc
  L8_2 = -8.0
  L9_2 = 8.0
  L10_2 = 4500
  L11_2 = 1.0
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L4_2 = SetTimeout
  L5_2 = 0
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = 0
    L1_3 = nil
    repeat
      L0_3 = L0_3 + 1
      L2_3 = {}
      L3_3 = math
      L3_3 = L3_3.random
      L4_3 = 500
      L5_3 = 1000
      L3_3 = L3_3(L4_3, L5_3)
      L2_3._msec = L3_3
      L3_3 = tonumber
      L4_3 = math
      L4_3 = L4_3.random
      L5_3 = 0
      L6_3 = 2
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = ".0"
      L4_3 = L4_3 .. L5_3
      L3_3 = L3_3(L4_3)
      L2_3.size = L3_3
      L1_3 = L2_3
      L2_3 = ShowLoopParticle
      L3_3 = "core"
      L4_3 = "bul_rubber_dust"
      L5_3 = vector3
      L6_3 = L1_2.x
      L7_3 = L1_2.y
      L8_3 = L1_2.z
      L8_3 = L8_3 - 0.92
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L6_3 = L1_3.size
      L7_3 = L1_3._msec
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    until 5 == L0_3
  end
  L4_2(L5_2, L6_2)
  L4_2 = ProgressBars
  L5_2 = _U
  L6_2 = "mission_progressbar_sweeping"
  L5_2 = L5_2(L6_2)
  L6_2 = 4500
  L4_2(L5_2, L6_2)
  L4_2 = ClearPedTasks
  L5_2 = L0_2
  L4_2(L5_2)
  L4_2 = FreezeEntityPosition
  L5_2 = L0_2
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = Broom
  L5_2 = "holding"
  L4_2(L5_2)
  Busy = false
end
SweepingAnimation = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = vector3
  L4_2 = 0.09
  L5_2 = 0.02
  L6_2 = -0.03
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = vector3
  L5_2 = -70.0
  L6_2 = 0.0
  L7_2 = 0.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = Request
  L6_2 = "anim"
  L7_2 = "mini@repair"
  L5_2(L6_2, L7_2)
  if "create" == A0_2 then
    L5_2 = TaskPlayAnim
    L6_2 = L1_2
    L7_2 = "mini@repair"
    L8_2 = "fixing_a_ped"
    L9_2 = 8.0
    L10_2 = -8.0
    L11_2 = 1250
    L12_2 = 1.0
    L13_2 = 0.0
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L5_2 = ProgressBars
    L6_2 = _U
    L7_2 = "mission_progressbar_taking_broom"
    L6_2 = L6_2(L7_2)
    L7_2 = 1250
    L5_2(L6_2, L7_2)
    L5_2 = CreateObject
    L6_2 = "prop_tool_broom"
    L7_2 = L2_2.x
    L8_2 = L2_2.y
    L9_2 = L2_2.z
    L9_2 = L9_2 + 1.0
    L10_2 = true
    L11_2 = true
    L12_2 = false
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L5_1 = L5_2
    L5_2 = AttachEntityToEntity
    L6_2 = L5_1
    L7_2 = L1_2
    L8_2 = GetPedBoneIndex
    L9_2 = L1_2
    L10_2 = 28422
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L3_2.x
    L10_2 = L3_2.y
    L11_2 = L3_2.z
    L12_2 = L4_2.x
    L13_2 = L4_2.y
    L14_2 = L4_2.z
    L15_2 = false
    L16_2 = false
    L17_2 = false
    L18_2 = true
    L19_2 = 2
    L20_2 = true
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  elseif "store" == A0_2 then
    L5_2 = TaskPlayAnim
    L6_2 = L1_2
    L7_2 = "mini@repair"
    L8_2 = "fixing_a_ped"
    L9_2 = 8.0
    L10_2 = -8.0
    L11_2 = 1250
    L12_2 = 1.0
    L13_2 = 0.0
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L5_2 = ProgressBars
    L6_2 = _U
    L7_2 = "mission_progressbar_storing_broom"
    L6_2 = L6_2(L7_2)
    L7_2 = 1250
    L5_2(L6_2, L7_2)
    L5_2 = Broom
    L6_2 = "delete"
    L5_2(L6_2)
  elseif "delete" == A0_2 then
    L5_2 = L5_1
    if nil ~= L5_2 then
      L5_2 = DeleteEntity
      L6_2 = L5_1
      L5_2(L6_2)
      L5_2 = nil
      L5_1 = L5_2
    end
  elseif "holding" == A0_2 or "sweeping" == A0_2 then
    if "sweeping" == A0_2 then
      L5_2 = vector3
      L6_2 = -0.01
      L7_2 = 0.04
      L8_2 = -0.03
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L6_2 = vector3
      L7_2 = 0.0
      L8_2 = 0.0
      L9_2 = 0.0
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L4_2 = L6_2
      L3_2 = L5_2
    end
    L5_2 = AttachEntityToEntity
    L6_2 = L5_1
    L7_2 = L1_2
    L8_2 = GetPedBoneIndex
    L9_2 = L1_2
    L10_2 = 28422
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L3_2.x
    L10_2 = L3_2.y
    L11_2 = L3_2.z
    L12_2 = L4_2.x
    L13_2 = L4_2.y
    L14_2 = L4_2.z
    L15_2 = false
    L16_2 = false
    L17_2 = false
    L18_2 = true
    L19_2 = 2
    L20_2 = true
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  end
end
Broom = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = "error"
  L3_2 = nil
  if "normal" == A1_2 then
    L4_2 = _U
    L5_2 = "mission_canceled_normal"
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  elseif "forced" == A1_2 then
    L4_2 = _U
    L5_2 = "mission_canceled_force"
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  elseif "finished" == A1_2 then
    L4_2 = _U
    L5_2 = "mission_can_take_reward"
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
    L2_2 = "info"
  end
  if "none" ~= A1_2 and "finished" ~= A1_2 then
    L4_2 = CallCallback
    L5_2 = TriggerName
    L6_2 = "checkMissions"
    L5_2 = L5_2(L6_2)
    function L6_2()
      local L0_3, L1_3
    end
    L7_2 = {}
    L7_2.info = "changeStatus"
    L7_2.status = false
    L8_2 = L0_1.type
    L7_2.type = L8_2
    L8_2 = A0_2.args
    L8_2 = L8_2.playerCount
    L7_2.playerCount = L8_2
    L8_2 = A0_2.args
    L8_2 = L8_2.cooldown
    L7_2.cooldown = L8_2
    L8_2 = A0_2.args
    L8_2 = L8_2.id
    L7_2.id = L8_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = TriggerEvent
  L5_2 = TriggerName
  L6_2 = "notify"
  L5_2 = L5_2(L6_2)
  L6_2 = false
  L7_2 = L3_2
  L8_2 = L2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = 0
  L7_1 = L4_2
  L4_2 = false
  L3_1 = L4_2
  L4_2 = false
  L2_1 = L4_2
end
CancelMission = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CallCallback
  L2_2 = TriggerName
  L3_2 = "checkMissions"
  L2_2 = L2_2(L3_2)
  function L3_2()
    local L0_3, L1_3
  end
  L4_2 = {}
  L4_2.info = "changeStatus"
  L4_2.status = true
  L5_2 = L0_1.type
  L4_2.type = L5_2
  L5_2 = A0_2.args
  L5_2 = L5_2.playerCount
  L4_2.playerCount = L5_2
  L5_2 = A0_2.args
  L5_2 = L5_2.cooldown
  L4_2.cooldown = L5_2
  L5_2 = A0_2.args
  L5_2 = L5_2.id
  L4_2.id = L5_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = TriggerEvent
  L2_2 = TriggerName
  L3_2 = "notify"
  L2_2 = L2_2(L3_2)
  L3_2 = false
  L4_2 = _U
  L5_2 = "mission_started_mission"
  L4_2 = L4_2(L5_2)
  L5_2 = Config
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.success
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
StartMission = L8_1
L8_1 = RegisterNetEvent
L9_1 = TriggerName
L10_1 = "useMissionMenu1"
L9_1, L10_1 = L9_1(L10_1)
L8_1(L9_1, L10_1)
L8_1 = AddEventHandler
L9_1 = TriggerName
L10_1 = "useMissionMenu1"
L9_1 = L9_1(L10_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.args
  L0_1.type = "sweeping"
  L2_2 = StartMissionConfirm
  L3_2 = L1_2
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = TriggerName
L10_1 = "useMissionMenu2"
L9_1, L10_1 = L9_1(L10_1)
L8_1(L9_1, L10_1)
L8_1 = AddEventHandler
L9_1 = TriggerName
L10_1 = "useMissionMenu2"
L9_1 = L9_1(L10_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.args
  L0_1.type = "cleaning"
  L2_2 = StartMissionConfirm
  L3_2 = L1_2
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = TriggerName
L10_1 = "useMissionMenu3"
L9_1, L10_1 = L9_1(L10_1)
L8_1(L9_1, L10_1)
L8_1 = AddEventHandler
L9_1 = TriggerName
L10_1 = "useMissionMenu3"
L9_1 = L9_1(L10_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.args
  L2_2 = L6_1
  if L2_2 >= 100 then
    L2_2 = CallCallback
    L3_2 = TriggerName
    L4_2 = "checkMissions"
    L3_2 = L3_2(L4_2)
    function L4_2()
      local L0_3, L1_3
    end
    L5_2 = {}
    L5_2.info = "finished"
    L5_2.status = false
    L6_2 = L0_1.type
    L5_2.type = L6_2
    L6_2 = L1_2.args
    L6_2 = L6_2.playerCount
    L5_2.playerCount = L6_2
    L6_2 = L1_2.args
    L6_2 = L6_2.cooldown
    L5_2.cooldown = L6_2
    L6_2 = L1_2.args
    L6_2 = L6_2.reward
    L5_2.reward = L6_2
    L6_2 = L1_2.args
    L6_2 = L6_2.id
    L5_2.id = L6_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = TriggerName
L10_1 = "useMissionMenu4"
L9_1, L10_1 = L9_1(L10_1)
L8_1(L9_1, L10_1)
L8_1 = AddEventHandler
L9_1 = TriggerName
L10_1 = "useMissionMenu4"
L9_1 = L9_1(L10_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.args
  L2_2 = L0_1.type
  if "sweeping" == L2_2 then
    L2_2 = L1_2.storeBroom
    if not L2_2 then
      L2_2 = L5_1
      if L2_2 then
        L1_2.storeBroom = true
        L2_2 = CancelMission
        L3_2 = L1_2
        L4_2 = "none"
        L2_2(L3_2, L4_2)
        L2_2 = StartStopWorking
        L3_2 = L1_2
        L2_2(L3_2)
        L2_2 = TriggerEvent
        L3_2 = TriggerName
        L4_2 = "notify"
        L3_2 = L3_2(L4_2)
        L4_2 = false
        L5_2 = _U
        L6_2 = "mission_store_broom"
        L5_2 = L5_2(L6_2)
        L6_2 = Config
        L6_2 = L6_2.NotifyType
        L6_2 = L6_2.info
        L2_2(L3_2, L4_2, L5_2, L6_2)
      else
        L2_2 = CancelMission
        L3_2 = L1_2
        L4_2 = "normal"
        L2_2(L3_2, L4_2)
      end
    end
  else
    L2_2 = CancelMission
    L3_2 = L1_2
    L4_2 = "normal"
    L2_2(L3_2, L4_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = TriggerName
L10_1 = "missionMenuConfirm1"
L9_1, L10_1 = L9_1(L10_1)
L8_1(L9_1, L10_1)
L8_1 = AddEventHandler
L9_1 = TriggerName
L10_1 = "missionMenuConfirm1"
L9_1 = L9_1(L10_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.args
  L2_2 = CallCallback
  L3_2 = TriggerName
  L4_2 = "checkMissions"
  L3_2 = L3_2(L4_2)
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    if not A0_3 then
      L2_3 = false
      L4_1 = L2_3
      L2_3 = 0
      L6_1 = L2_3
      L2_3 = StartStopWorking
      L3_3 = L1_2
      L2_3(L3_3)
    else
      L2_3 = TriggerEvent
      L3_3 = TriggerName
      L4_3 = "notify"
      L3_3 = L3_3(L4_3)
      L4_3 = false
      L5_3 = _U
      L6_3 = "mission_occupied"
      L5_3 = L5_3(L6_3)
      L6_3 = Config
      L6_3 = L6_3.NotifyType
      L6_3 = L6_3.error
      L2_3(L3_3, L4_3, L5_3, L6_3)
    end
  end
  L5_2 = {}
  L5_2.info = "checkStatus"
  L6_2 = L0_1.type
  L5_2.type = L6_2
  L6_2 = L1_2.args
  L6_2 = L6_2.playerCount
  L5_2.playerCount = L6_2
  L5_2.checkForCooldown = true
  L6_2 = L1_2.args
  L6_2 = L6_2.cooldown
  L5_2.cooldown = L6_2
  L6_2 = L1_2.args
  L6_2 = L6_2.id
  L5_2.id = L6_2
  L2_2(L3_2, L4_2, L5_2)
end
L8_1(L9_1, L10_1)
