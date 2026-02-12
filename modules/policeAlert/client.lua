local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "usePoliceAlertMenu"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "usePoliceAlertMenu"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Busy
  if L1_2 then
    L1_2 = TriggerEvent
    L2_2 = TriggerName
    L3_2 = "notify"
    L2_2 = L2_2(L3_2)
    L3_2 = false
    L4_2 = _U
    L5_2 = "busy"
    L4_2 = L4_2(L5_2)
    L5_2 = Config
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.error
    return L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = {}
  L3_2 = {}
  L3_2.name = "usePoliceAlertMenu"
  L4_2 = _U
  L5_2 = "policealert_menu_title"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L2_2.header = L3_2
  L3_2 = {}
  L4_2 = {}
  L5_2 = _U
  L6_2 = "policealert_menu_activate_title"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L5_2 = _U
  L6_2 = "policealert_menu_activate_desc"
  L5_2 = L5_2(L6_2)
  L4_2.description = L5_2
  L4_2.icon = "fas fa-circle-dot"
  L4_2.arrow = true
  L5_2 = {}
  L5_2.args = A0_2
  L5_2.ped = L1_2
  L4_2.args = L5_2
  L4_2.event = "usePoliceAlertMenu1"
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = CallCallback
    L1_3 = TriggerName
    L2_3 = "checkPoliceAlert"
    L1_3 = L1_3(L2_3)
    function L2_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
      if not A0_4 then
        L1_4 = Request
        L2_4 = "anim"
        L3_4 = "gestures@f@standing@casual"
        L1_4(L2_4, L3_4)
        L1_4 = TaskPlayAnim
        L2_4 = L1_2
        L3_4 = "gestures@f@standing@casual"
        L4_4 = "gesture_hand_down"
        L5_4 = 8.0
        L6_4 = -8.0
        L7_4 = 1250
        L8_4 = 51
        L9_4 = 0.0
        L10_4 = false
        L11_4 = false
        L12_4 = false
        L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
        L1_4 = ProgressBars
        L2_4 = _U
        L3_4 = "policealert_progressbar_activating"
        L2_4 = L2_4(L3_4)
        L3_4 = 1250
        L1_4(L2_4, L3_4)
        L1_4 = ClearPedTasks
        L2_4 = L1_2
        L1_4(L2_4)
        L1_4 = TriggerServerEvent
        L2_4 = TriggerName
        L3_4 = "activatePoliceAlert"
        L2_4 = L2_4(L3_4)
        L3_4 = A0_2.args
        L3_4 = L3_4.cooldown
        L4_4 = A0_2.args
        L4_4 = L4_4.id
        L1_4(L2_4, L3_4, L4_4)
        L1_4 = ActivatePoliceAlert
        L1_4()
      end
    end
    L3_3 = A0_2.args
    L3_3 = L3_3.cooldown
    L4_3 = A0_2.args
    L4_3 = L4_3.id
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L4_2.onSelect = L5_2
  L3_2[1] = L4_2
  L2_2.options = L3_2
  menu = L2_2
  L2_2 = OpenMenu
  L3_2 = menu
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "usePoliceAlertMenu1"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "usePoliceAlertMenu1"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.ped
  L2_2 = A0_2.args
  L3_2 = CallCallback
  L4_2 = TriggerName
  L5_2 = "checkPoliceAlert"
  L4_2 = L4_2(L5_2)
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    if not A0_3 then
      L1_3 = Request
      L2_3 = "anim"
      L3_3 = "gestures@f@standing@casual"
      L1_3(L2_3, L3_3)
      L1_3 = TaskPlayAnim
      L2_3 = L1_2
      L3_3 = "gestures@f@standing@casual"
      L4_3 = "gesture_hand_down"
      L5_3 = 8.0
      L6_3 = -8.0
      L7_3 = 1250
      L8_3 = 51
      L9_3 = 0.0
      L10_3 = false
      L11_3 = false
      L12_3 = false
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L1_3 = ProgressBars
      L2_3 = _U
      L3_3 = "policealert_progressbar_activating"
      L2_3 = L2_3(L3_3)
      L3_3 = 1250
      L1_3(L2_3, L3_3)
      L1_3 = ClearPedTasks
      L2_3 = L1_2
      L1_3(L2_3)
      L1_3 = TriggerServerEvent
      L2_3 = TriggerName
      L3_3 = "activatePoliceAlert"
      L2_3 = L2_3(L3_3)
      L3_3 = L2_2.args
      L3_3 = L3_3.cooldown
      L4_3 = L2_2.args
      L4_3 = L4_3.id
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = ActivatePoliceAlert
      L1_3()
    end
  end
  L6_2 = L2_2.args
  L6_2 = L6_2.cooldown
  L7_2 = L2_2.args
  L7_2 = L7_2.id
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
