local L0_1, L1_1, L2_1, L3_1
L0_1 = false
L1_1 = RegisterNetEvent
L2_1 = TriggerName
L3_1 = "useChairMenu"
L2_1, L3_1 = L2_1(L3_1)
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = TriggerName
L3_1 = "useChairMenu"
L2_1 = L2_1(L3_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
  L1_2 = {}
  L2_2 = {}
  L2_2.name = "useChairMenu1"
  L3_2 = _U
  L4_2 = "tablechairs_menu_title"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L1_2.header = L2_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = _U
  L5_2 = "tablechairs_menu_chair_title"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L4_2 = _U
  L5_2 = "tablechairs_menu_chair_desc"
  L4_2 = L4_2(L5_2)
  L3_2.description = L4_2
  L3_2.icon = "fas fa-chair"
  L3_2.arrow = true
  L4_2 = {}
  L4_2.args = A0_2
  L3_2.args = L4_2
  L3_2.event = "useChairMenu1"
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = CallCallback
    L1_3 = TriggerName
    L2_3 = "checkUtils"
    L1_3 = L1_3(L2_3)
    function L2_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      if not A0_4 then
        L1_4 = SitOnChair
        L2_4 = A0_2
        L1_4(L2_4)
      else
        L1_4 = TriggerEvent
        L2_4 = TriggerName
        L3_4 = "notify"
        L2_4 = L2_4(L3_4)
        L3_4 = false
        L4_4 = _U
        L5_4 = "tablechairs_chair_occupied"
        L4_4 = L4_4(L5_4)
        L5_4 = Config
        L5_4 = L5_4.NotifyType
        L5_4 = L5_4.error
        return L1_4(L2_4, L3_4, L4_4, L5_4)
      end
    end
    L3_3 = {}
    L3_3.info = "checkStatus"
    L4_3 = A0_2.args
    L4_3 = L4_3.id
    L3_3.id = L4_3
    L0_3(L1_3, L2_3, L3_3)
  end
  L3_2.onSelect = L4_2
  L2_2[1] = L3_2
  L1_2.options = L2_2
  menu = L1_2
  L1_2 = OpenMenu
  L2_2 = menu
  L1_2(L2_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = A0_2.args
  L2_2 = L2_2.coords
  L3_2 = vec4
  L4_2 = A0_2.args
  L4_2 = L4_2.leavePos
  L4_2 = L4_2.x
  L5_2 = A0_2.args
  L5_2 = L5_2.leavePos
  L5_2 = L5_2.y
  L6_2 = A0_2.args
  L6_2 = L6_2.leavePos
  L6_2 = L6_2.z
  L6_2 = L6_2 - 1
  L7_2 = A0_2.args
  L7_2 = L7_2.leavePos
  L7_2 = L7_2.w
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = nil
  Busy = true
  L5_2 = CallCallback
  L6_2 = TriggerName
  L7_2 = "checkUtils"
  L6_2 = L6_2(L7_2)
  function L7_2()
    local L0_3, L1_3
  end
  L8_2 = {}
  L8_2.info = "changeStatus"
  L8_2.status = true
  L9_2 = A0_2.args
  L9_2 = L9_2.id
  L8_2.id = L9_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = ClearPedTasks
  L6_2 = L1_2
  L5_2(L6_2)
  L5_2 = pairs
  L6_2 = Tables
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = vec3
    L12_2 = L10_2.coords
    L12_2 = L12_2.x
    L13_2 = L10_2.coords
    L13_2 = L13_2.y
    L14_2 = L10_2.coords
    L14_2 = L14_2.z
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = GetEntityCoords
    L13_2 = L1_2
    L12_2 = L12_2(L13_2)
    L11_2 = L11_2 - L12_2
    L11_2 = #L11_2
    L12_2 = 2.5
    if L11_2 <= L12_2 then
      L4_2 = L10_2
      break
    end
  end
  L5_2 = TaskStartScenarioAtPosition
  L6_2 = L1_2
  L7_2 = "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER"
  L8_2 = L2_2.x
  L9_2 = L2_2.y
  L10_2 = L2_2.z
  L11_2 = L2_2.w
  L12_2 = false
  L13_2 = true
  L14_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = Citizen
  L5_2 = L5_2.CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = true
    L0_1 = L0_3
    while true do
      L0_3 = L0_1
      if not L0_3 then
        break
      end
      L0_3 = 5
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = GetEntityCoords
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      L3_3 = GetClosestObjectOfType
      L4_3 = L2_3
      L5_3 = 3.0
      L6_3 = GetHashKey
      L7_3 = "prop_food_bs_tray_02"
      L6_3 = L6_3(L7_3)
      L7_3 = false
      L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
      L4_3 = GetEntityCoords
      L5_3 = L3_3
      L4_3 = L4_3(L5_3)
      L4_3 = L2_3 - L4_3
      L4_3 = #L4_3
      L5_3 = ""
      L6_3 = L4_2
      if L6_3 then
        L6_3 = L5_3
        L7_3 = _U
        L8_3 = "tablechairs_exit_table"
        L7_3 = L7_3(L8_3)
        L6_3 = L6_3 .. L7_3
        L5_3 = L6_3
      end
      L6_3 = 0.75
      if L4_3 <= L6_3 then
        L6_3 = _U
        L7_3 = "tablechairs_exit_tray"
        L6_3 = L6_3(L7_3)
        L5_3 = L6_3
        L6_3 = IsControlJustPressed
        L7_3 = 0
        L8_3 = Config
        L8_3 = L8_3.Keys
        L8_3 = L8_3.openTray
        L6_3 = L6_3(L7_3, L8_3)
        if L6_3 then
          L6_3 = OpenFoodTray
          L7_3 = {}
          L7_3.entity = L3_3
          L7_3.model = "prop_food_bs_tray_02"
          L8_3 = true
          L6_3(L7_3, L8_3)
        end
      end
      L6_3 = L4_2
      if L6_3 then
        L6_3 = IsControlJustPressed
        L7_3 = 0
        L8_3 = Config
        L8_3 = L8_3.Keys
        L8_3 = L8_3.openTable
        L6_3 = L6_3(L7_3, L8_3)
        if L6_3 then
          L6_3 = TriggerEvent
          L7_3 = TriggerName
          L8_3 = "useTable"
          L7_3 = L7_3(L8_3)
          L8_3 = {}
          L9_3 = L4_2
          L8_3.args = L9_3
          L6_3(L7_3, L8_3)
        end
      end
      L6_3 = IsControlJustPressed
      L7_3 = 0
      L8_3 = Config
      L8_3 = L8_3.Keys
      L8_3 = L8_3.exit
      L6_3 = L6_3(L7_3, L8_3)
      if not L6_3 then
        L6_3 = IsEntityDead
        L7_3 = L1_3
        L6_3 = L6_3(L7_3)
        if not L6_3 then
          goto lbl_118
        end
      end
      L6_3 = CallCallback
      L7_3 = TriggerName
      L8_3 = "checkUtils"
      L7_3 = L7_3(L8_3)
      function L8_3()
        local L0_4, L1_4
      end
      L9_3 = {}
      L9_3.info = "changeStatus"
      L9_3.status = false
      L10_3 = A0_2.args
      L10_3 = L10_3.id
      L9_3.id = L10_3
      L6_3(L7_3, L8_3, L9_3)
      L6_3 = ClearPedTasksImmediately
      L7_3 = L1_3
      L6_3(L7_3)
      L6_3 = SetEntityCoords
      L7_3 = L1_3
      L8_3 = L3_2
      L9_3 = 1
      L10_3 = 0
      L11_3 = 0
      L12_3 = 1
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L6_3 = false
      L0_1 = L6_3
      Busy = false
      ::lbl_118::
      L6_3 = ShowHelpNotification
      L7_3 = _U
      L8_3 = "tablechairs_exit"
      L7_3 = L7_3(L8_3)
      L8_3 = L5_3
      L7_3 = L7_3 .. L8_3
      L6_3(L7_3)
      L6_3 = Wait
      L7_3 = L0_3
      L6_3(L7_3)
    end
    L0_3 = StopHelpNotification
    L0_3()
  end
  L5_2(L6_2)
end
SitOnChair = L1_1
L1_1 = RegisterNetEvent
L2_1 = TriggerName
L3_1 = "useTable"
L2_1, L3_1 = L2_1(L3_1)
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = TriggerName
L3_1 = "useTable"
L2_1 = L2_1(L3_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2.args
  L1_2 = L1_2.id
  L2_2 = _U
  L3_2 = "tablechairs_stash_name"
  L4_2 = JobInfo
  L4_2 = L4_2.label
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = _U
  L4_2 = "tablechairs_stash_label"
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2.args
  L4_2 = L4_2.slots
  L5_2 = A0_2.args
  L5_2 = L5_2.weight
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
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = TriggerName
L3_1 = "useChairMenu1"
L2_1, L3_1 = L2_1(L3_1)
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = TriggerName
L3_1 = "useChairMenu1"
L2_1 = L2_1(L3_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.args
  L2_2 = CallCallback
  L3_2 = TriggerName
  L4_2 = "checkUtils"
  L3_2 = L3_2(L4_2)
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if not A0_3 then
      L1_3 = SitOnChair
      L2_3 = L1_2
      L1_3(L2_3)
    else
      L1_3 = TriggerEvent
      L2_3 = TriggerName
      L3_3 = "notify"
      L2_3 = L2_3(L3_3)
      L3_3 = false
      L4_3 = _U
      L5_3 = "tablechairs_chair_occupied"
      L4_3 = L4_3(L5_3)
      L5_3 = Config
      L5_3 = L5_3.NotifyType
      L5_3 = L5_3.error
      return L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  L5_2 = {}
  L5_2.info = "checkStatus"
  L6_2 = L1_2.args
  L6_2 = L6_2.id
  L5_2.id = L6_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1(L2_1, L3_1)
