local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = false
L1_1 = false
L2_1 = RegisterNetEvent
L3_1 = TriggerName
L4_1 = "useToiletMenu"
L3_1, L4_1, L5_1, L6_1 = L3_1(L4_1)
L2_1(L3_1, L4_1, L5_1, L6_1)
L2_1 = AddEventHandler
L3_1 = TriggerName
L4_1 = "useToiletMenu"
L3_1 = L3_1(L4_1)
function L4_1(A0_2)
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
  L2_2.name = "useToiletMenu"
  L3_2 = _U
  L4_2 = "toilet_menu_title"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L1_2.header = L2_2
  L2_2 = {}
  L1_2.options = L2_2
  menu = L1_2
  L1_2 = A0_2.args
  L1_2 = L1_2.poop
  if L1_2 then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = menu
    L2_2 = L2_2.options
    L3_2 = {}
    L4_2 = _U
    L5_2 = "toilet_menu_use_title"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L4_2 = _U
    L5_2 = "toilet_menu_normal_desc"
    L4_2 = L4_2(L5_2)
    L3_2.description = L4_2
    L3_2.icon = "fas fa-toilet-paper"
    L3_2.arrow = true
    L4_2 = {}
    L4_2.args = A0_2
    L3_2.args = L4_2
    L3_2.event = "useToiletMenu1"
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = {}
      L0_3.dict = "timetable@ron@ig_3_couch"
      L0_3.anim = "base"
      A0_2.anim = L0_3
      L1_3 = CallCallback
      L2_3 = TriggerName
      L3_3 = "checkUtils"
      L2_3 = L2_3(L3_3)
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4
        if not A0_4 then
          L1_4 = UseToilet
          L2_4 = A0_2
          L1_4(L2_4)
        else
          L1_4 = TriggerEvent
          L2_4 = TriggerName
          L3_4 = "notify"
          L2_4 = L2_4(L3_4)
          L3_4 = false
          L4_4 = _U
          L5_4 = "toilet_occupied"
          L4_4 = L4_4(L5_4)
          L5_4 = Config
          L5_4 = L5_4.NotifyType
          L5_4 = L5_4.error
          return L1_4(L2_4, L3_4, L4_4, L5_4)
        end
      end
      L4_3 = {}
      L4_3.info = "checkStatus"
      L5_3 = A0_2.args
      L5_3 = L5_3.id
      L4_3.id = L5_3
      L1_3(L2_3, L3_3, L4_3)
    end
    L3_2.onSelect = L4_2
    L1_2(L2_2, L3_2)
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = menu
    L2_2 = L2_2.options
    L3_2 = {}
    L4_2 = _U
    L5_2 = "toilet_menu_use_title"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L4_2 = _U
    L5_2 = "toilet_menu_hard_desc"
    L4_2 = L4_2(L5_2)
    L3_2.description = L4_2
    L3_2.icon = "fas fa-toilet-paper"
    L3_2.arrow = true
    L4_2 = {}
    L4_2.args = A0_2
    L3_2.args = L4_2
    L3_2.event = "useToiletMenu2"
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = {}
      L0_3.dict = "timetable@ron@ron_ig_2_alt1"
      L0_3.anim = "ig_2_alt1_base"
      A0_2.anim = L0_3
      L1_3 = CallCallback
      L2_3 = TriggerName
      L3_3 = "checkUtils"
      L2_3 = L2_3(L3_3)
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4
        if not A0_4 then
          L1_4 = UseToilet
          L2_4 = A0_2
          L1_4(L2_4)
        else
          L1_4 = TriggerEvent
          L2_4 = TriggerName
          L3_4 = "notify"
          L2_4 = L2_4(L3_4)
          L3_4 = false
          L4_4 = _U
          L5_4 = "toilet_occupied"
          L4_4 = L4_4(L5_4)
          L5_4 = Config
          L5_4 = L5_4.NotifyType
          L5_4 = L5_4.error
          return L1_4(L2_4, L3_4, L4_4, L5_4)
        end
      end
      L4_3 = {}
      L4_3.info = "checkStatus"
      L5_3 = A0_2.args
      L5_3 = L5_3.id
      L4_3.id = L5_3
      L1_3(L2_3, L3_3, L4_3)
    end
    L3_2.onSelect = L4_2
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2.args
  L1_2 = L1_2.pee
  if L1_2 then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = menu
    L2_2 = L2_2.options
    L3_2 = {}
    L4_2 = _U
    L5_2 = "toilet_menu_use_title"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L4_2 = _U
    L5_2 = "toilet_menu_pee_desc"
    L4_2 = L4_2(L5_2)
    L3_2.description = L4_2
    L3_2.icon = "fas fa-toilet-paper-slash"
    L3_2.arrow = true
    L4_2 = {}
    L4_2.args = A0_2
    L3_2.args = L4_2
    L3_2.event = "useToiletMenu3"
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = nil
      L1_3 = GetPlayerGender
      L1_3 = L1_3()
      if "male" == L1_3 then
        L1_3 = {}
        L1_3.dict = "misscarsteal2peeing"
        L1_3.anim = "peeing_loop"
        L0_3 = L1_3
        L1_3 = A0_2.args
        L2_3 = {}
        L3_3 = A0_2.args
        L3_3 = L3_3.pedPos
        L3_3 = L3_3.x
        L2_3.x = L3_3
        L3_3 = A0_2.args
        L3_3 = L3_3.pedPos
        L3_3 = L3_3.y
        L2_3.y = L3_3
        L3_3 = A0_2.args
        L3_3 = L3_3.pedPos
        L3_3 = L3_3.z
        L2_3.z = L3_3
        L3_3 = A0_2.args
        L3_3 = L3_3.pedPos
        L3_3 = L3_3.w
        L3_3 = L3_3 + 180
        L3_3 = L3_3 % 360
        L2_3.w = L3_3
        L1_3.pedPos = L2_3
      else
        L1_3 = {}
        L1_3.dict = "timetable@ron@ig_3_couch"
        L1_3.anim = "base"
        L0_3 = L1_3
      end
      A0_2.anim = L0_3
      L1_3 = CallCallback
      L2_3 = TriggerName
      L3_3 = "checkUtils"
      L2_3 = L2_3(L3_3)
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4
        if not A0_4 then
          L1_4 = UseToilet
          L2_4 = A0_2
          L1_4(L2_4)
        else
          L1_4 = TriggerEvent
          L2_4 = TriggerName
          L3_4 = "notify"
          L2_4 = L2_4(L3_4)
          L3_4 = false
          L4_4 = _U
          L5_4 = "toilet_occupied"
          L4_4 = L4_4(L5_4)
          L5_4 = Config
          L5_4 = L5_4.NotifyType
          L5_4 = L5_4.error
          return L1_4(L2_4, L3_4, L4_4, L5_4)
        end
      end
      L4_3 = {}
      L4_3.info = "checkStatus"
      L5_3 = A0_2.args
      L5_3 = L5_3.id
      L4_3.id = L5_3
      L1_3(L2_3, L3_3, L4_3)
    end
    L3_2.onSelect = L4_2
    L1_2(L2_2, L3_2)
  end
  L1_2 = OpenMenu
  L2_2 = menu
  L1_2(L2_2)
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = A0_2.args
  L2_2 = L2_2.pants
  L3_2 = GetPlayerGender
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if "male" == L3_2 then
    L3_2 = L2_2.male
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = L2_2.female
  ::lbl_14::
  L4_2 = A0_2.args
  L4_2 = L4_2.pedPos
  L5_2 = L4_2.w
  L6_2 = A0_2.anim
  L7_2 = L2_2.check
  if L7_2 then
    L7_2 = GetPedDrawableVariation
    L8_2 = L1_2
    L9_2 = 4
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= L3_2 then
      L7_2 = TriggerEvent
      L8_2 = TriggerName
      L9_2 = "notify"
      L8_2 = L8_2(L9_2)
      L9_2 = false
      L10_2 = _U
      L11_2 = "toilet_pants_on"
      L10_2 = L10_2(L11_2)
      L11_2 = Config
      L11_2 = L11_2.NotifyType
      L11_2 = L11_2.error
      return L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
  Busy = true
  L7_2 = CallCallback
  L8_2 = TriggerName
  L9_2 = "checkUtils"
  L8_2 = L8_2(L9_2)
  function L9_2()
    local L0_3, L1_3
  end
  L10_2 = {}
  L10_2.info = "changeStatus"
  L10_2.status = true
  L11_2 = A0_2.args
  L11_2 = L11_2.id
  L10_2.id = L11_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = DisableMovementLoop
  L7_2()
  L7_2 = GoToCoords
  L8_2 = L1_2
  L9_2 = L4_2
  L10_2 = L5_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = true
  L0_1 = L7_2
  L7_2 = Request
  L8_2 = "anim"
  L9_2 = L6_2.dict
  L7_2(L8_2, L9_2)
  L7_2 = TaskPlayAnim
  L8_2 = L1_2
  L9_2 = L6_2.dict
  L10_2 = L6_2.anim
  L11_2 = 2.0
  L12_2 = 2.0
  L13_2 = -1
  L14_2 = 1
  L15_2 = 0
  L16_2 = true
  L17_2 = true
  L18_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  DisableMovement = false
  L7_2 = Citizen
  L7_2 = L7_2.CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    while true do
      L0_3 = L0_1
      if not L0_3 then
        break
      end
      L0_3 = 5
      L1_3 = ShowHelpNotification
      L2_3 = _U
      L3_3 = "toilet_exit"
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = FreezeEntityPosition
      L2_3 = L1_2
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = Config
      L3_3 = L3_3.Keys
      L3_3 = L3_3.exit
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L1_3 = IsEntityDead
        L2_3 = L1_2
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          goto lbl_50
        end
      end
      L1_3 = CallCallback
      L2_3 = TriggerName
      L3_3 = "checkUtils"
      L2_3 = L2_3(L3_3)
      function L3_3()
        local L0_4, L1_4
      end
      L4_3 = {}
      L4_3.info = "changeStatus"
      L4_3.status = false
      L5_3 = A0_2.args
      L5_3 = L5_3.id
      L4_3.id = L5_3
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = FreezeEntityPosition
      L2_3 = L1_2
      L3_3 = false
      L1_3(L2_3, L3_3)
      L1_3 = ClearPedTasks
      L2_3 = L1_2
      L1_3(L2_3)
      L1_3 = false
      L0_1 = L1_3
      Busy = false
      ::lbl_50::
      L1_3 = Wait
      L2_3 = L0_3
      L1_3(L2_3)
    end
    L0_3 = StopHelpNotification
    L0_3()
  end
  L7_2(L8_2)
end
UseToilet = L2_1
L2_1 = RegisterNetEvent
L3_1 = TriggerName
L4_1 = "useSinkMenu"
L3_1, L4_1, L5_1, L6_1 = L3_1(L4_1)
L2_1(L3_1, L4_1, L5_1, L6_1)
L2_1 = AddEventHandler
L3_1 = TriggerName
L4_1 = "useSinkMenu"
L3_1 = L3_1(L4_1)
function L4_1(A0_2)
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
  L1_2 = {}
  L2_2 = {}
  L2_2.name = "useSinkMenu"
  L3_2 = _U
  L4_2 = "sink_menu_title"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L1_2.header = L2_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = _U
  L5_2 = "toilet_menu_use_title"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L4_2 = _U
  L5_2 = "sink_menu_hands_desc"
  L4_2 = L4_2(L5_2)
  L3_2.description = L4_2
  L3_2.icon = "fas fa-hands-bubbles"
  L3_2.arrow = true
  L4_2 = {}
  L4_2.args = A0_2
  L3_2.args = L4_2
  L3_2.event = "useSinkMenu1"
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = {}
    L0_3.dict = "missheist_agency3aig_23"
    L0_3.anim = "urinal_sink_loop"
    A0_2.anim = L0_3
    A0_2.cleaning = "hands"
    L1_3 = CallCallback
    L2_3 = TriggerName
    L3_3 = "checkUtils"
    L2_3 = L2_3(L3_3)
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      if not A0_4 then
        L1_4 = UseSink
        L2_4 = A0_2
        L1_4(L2_4)
      else
        L1_4 = TriggerEvent
        L2_4 = TriggerName
        L3_4 = "notify"
        L2_4 = L2_4(L3_4)
        L3_4 = false
        L4_4 = _U
        L5_4 = "sink_occupied"
        L4_4 = L4_4(L5_4)
        L5_4 = Config
        L5_4 = L5_4.NotifyType
        L5_4 = L5_4.error
        return L1_4(L2_4, L3_4, L4_4, L5_4)
      end
    end
    L4_3 = {}
    L4_3.info = "checkStatus"
    L5_3 = A0_2.args
    L5_3 = L5_3.id
    L4_3.id = L5_3
    L1_3(L2_3, L3_3, L4_3)
  end
  L3_2.onSelect = L4_2
  L4_2 = {}
  L5_2 = _U
  L6_2 = "toilet_menu_use_title"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L5_2 = _U
  L6_2 = "sink_menu_face_desc"
  L5_2 = L5_2(L6_2)
  L4_2.description = L5_2
  L4_2.icon = "fas fa-face-grin-beam-sweat"
  L4_2.arrow = true
  L5_2 = {}
  L5_2.args = A0_2
  L4_2.args = L5_2
  L4_2.event = "useSinkMenu2"
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = {}
    L0_3.dict = "switch@michael@wash_face"
    L0_3.anim = "loop_michael"
    A0_2.anim = L0_3
    A0_2.cleaning = "face"
    L1_3 = CallCallback
    L2_3 = TriggerName
    L3_3 = "checkUtils"
    L2_3 = L2_3(L3_3)
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      if not A0_4 then
        L1_4 = UseSink
        L2_4 = A0_2
        L1_4(L2_4)
      else
        L1_4 = TriggerEvent
        L2_4 = TriggerName
        L3_4 = "notify"
        L2_4 = L2_4(L3_4)
        L3_4 = false
        L4_4 = _U
        L5_4 = "sink_occupied"
        L4_4 = L4_4(L5_4)
        L5_4 = Config
        L5_4 = L5_4.NotifyType
        L5_4 = L5_4.error
        return L1_4(L2_4, L3_4, L4_4, L5_4)
      end
    end
    L4_3 = {}
    L4_3.info = "checkStatus"
    L5_3 = A0_2.args
    L5_3 = L5_3.id
    L4_3.id = L5_3
    L1_3(L2_3, L3_3, L4_3)
  end
  L4_2.onSelect = L5_2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L1_2.options = L2_2
  menu = L1_2
  L1_2 = A0_2.args
  L1_2 = L1_2.jobName
  if L1_2 then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = menu
    L2_2 = L2_2.options
    L3_2 = {}
    L4_2 = _U
    L5_2 = "sink_employee_menu_clean_title"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L4_2 = _U
    L5_2 = "sink_employee_menu_clean_desc"
    L4_2 = L4_2(L5_2)
    L3_2.description = L4_2
    L3_2.icon = "fas fa-soap"
    L3_2.arrow = true
    L4_2 = {}
    L4_2.args = A0_2
    L3_2.args = L4_2
    L3_2.event = "useSinkMenu3"
    function L4_2()
      local L0_3, L1_3
      L0_3 = OpeanCleanItemsMenu
      L1_3 = A0_2
      L0_3(L1_3)
    end
    L3_2.onSelect = L4_2
    L1_2(L2_2, L3_2)
  end
  L1_2 = OpenMenu
  L2_2 = menu
  L1_2(L2_2)
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = A0_2.args
  L2_2 = L2_2.pedPos
  L3_2 = A0_2.args
  L3_2 = L3_2.coords
  L4_2 = L2_2.w
  L5_2 = A0_2.anim
  L6_2 = A0_2.cleaning
  Busy = true
  L7_2 = CallCallback
  L8_2 = TriggerName
  L9_2 = "checkUtils"
  L8_2 = L8_2(L9_2)
  function L9_2()
    local L0_3, L1_3
  end
  L10_2 = {}
  L10_2.info = "changeStatus"
  L10_2.status = true
  L11_2 = A0_2.args
  L11_2 = L11_2.id
  L10_2.id = L11_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = DisableMovementLoop
  L7_2()
  L7_2 = GoToCoords
  L8_2 = L1_2
  L9_2 = L2_2
  L10_2 = L4_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = Request
  L8_2 = "anim"
  L9_2 = L5_2.dict
  L7_2(L8_2, L9_2)
  L7_2 = TaskPlayAnim
  L8_2 = L1_2
  L9_2 = L5_2.dict
  L10_2 = L5_2.anim
  L11_2 = 2.0
  L12_2 = 2.0
  L13_2 = -1
  L14_2 = 1
  L15_2 = 0
  L16_2 = true
  L17_2 = true
  L18_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  DisableMovement = false
  L7_2 = Citizen
  L7_2 = L7_2.CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = true
    L1_1 = L0_3
    while true do
      L0_3 = L1_1
      if not L0_3 then
        break
      end
      L0_3 = 5
      L1_3 = ShowHelpNotification
      L2_3 = _U
      L3_3 = "sink_stop_cleaning"
      L4_3 = L6_2
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3, L4_3)
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = FreezeEntityPosition
      L2_3 = L1_2
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = Config
      L3_3 = L3_3.Keys
      L3_3 = L3_3.exit
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L1_3 = IsEntityDead
        L2_3 = L1_2
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          goto lbl_53
        end
      end
      L1_3 = CallCallback
      L2_3 = TriggerName
      L3_3 = "checkUtils"
      L2_3 = L2_3(L3_3)
      function L3_3()
        local L0_4, L1_4
      end
      L4_3 = {}
      L4_3.info = "changeStatus"
      L4_3.status = false
      L5_3 = A0_2.args
      L5_3 = L5_3.id
      L4_3.id = L5_3
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = FreezeEntityPosition
      L2_3 = L1_2
      L3_3 = false
      L1_3(L2_3, L3_3)
      L1_3 = ClearPedTasks
      L2_3 = L1_2
      L1_3(L2_3)
      L1_3 = false
      L1_1 = L1_3
      Busy = false
      ::lbl_53::
      L1_3 = Wait
      L2_3 = L0_3
      L1_3(L2_3)
    end
    L0_3 = StopHelpNotification
    L0_3()
  end
  L7_2(L8_2)
end
UseSink = L2_1
L2_1 = {}
L3_1 = {}
L4_1 = _U
L5_1 = "sink_employee_menu_clean_cup"
L4_1 = L4_1(L5_1)
L3_1.title = L4_1
L4_1 = _U
L5_1 = "sink_employee_menu_clean_cup_desc"
L4_1 = L4_1(L5_1)
L3_1.desc = L4_1
L4_1 = _U
L5_1 = "sink_employee_menu_dirty_cup_item_name"
L4_1 = L4_1(L5_1)
L3_1.label = L4_1
L3_1.icon = "fas fa-mug-saucer"
L4_1 = {}
L4_1.clean = "cleancup"
L4_1.dirty = "dirtycup"
L3_1.item = L4_1
L3_1.prop = "v_res_mcofcupdirt"
L4_1 = {}
L5_1 = _U
L6_1 = "sink_employee_menu_clean_sponge"
L5_1 = L5_1(L6_1)
L4_1.title = L5_1
L5_1 = _U
L6_1 = "sink_employee_menu_clean_sponge_desc"
L5_1 = L5_1(L6_1)
L4_1.desc = L5_1
L5_1 = _U
L6_1 = "sink_employee_menu_dirty_sponge_item_name"
L5_1 = L5_1(L6_1)
L4_1.label = L5_1
L4_1.icon = "fas fa-plate-wheat"
L5_1 = {}
L6_1 = SpongeItems
L6_1 = L6_1.clean
L5_1.clean = L6_1
L6_1 = SpongeItems
L6_1 = L6_1.dirty
L5_1.dirty = L6_1
L4_1.item = L5_1
L4_1.prop = "prop_sponge_01"
L2_1[1] = L3_1
L2_1[2] = L4_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L1_2.dict = "missheist_agency3aig_23"
  L1_2.anim = "urinal_sink_loop"
  A0_2.anim = L1_2
  L2_2 = {}
  L3_2 = {}
  L3_2.name = "cleanItemsMenu"
  L4_2 = _U
  L5_2 = "sink_employee_menu_clean_items_title"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L3_2.backMenu = "useSinkMenu"
  L2_2.header = L3_2
  L3_2 = {}
  L2_2.options = L3_2
  menu = L2_2
  L2_2 = pairs
  L3_2 = L2_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = menu
    L9_2 = L9_2.options
    L10_2 = {}
    L11_2 = L7_2.title
    L10_2.title = L11_2
    L11_2 = L7_2.desc
    L10_2.description = L11_2
    L11_2 = L7_2.icon
    L10_2.icon = L11_2
    L10_2.arrow = true
    L11_2 = {}
    L11_2.args = A0_2
    L11_2.washData = L7_2
    L10_2.args = L11_2
    L10_2.event = "cleanItemsMenu1"
    function L11_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = StartCleaning
      L1_3 = A0_2
      L2_3 = 4500
      L3_3 = {}
      L4_3 = L7_2.item
      L4_3 = L4_3.clean
      L3_3.clean = L4_3
      L4_3 = L7_2.item
      L4_3 = L4_3.dirty
      L3_3.dirty = L4_3
      L4_3 = L7_2.prop
      L3_3.prop = L4_3
      L4_3 = L7_2.label
      L3_3.label = L4_3
      L0_3(L1_3, L2_3, L3_3)
    end
    L10_2.onSelect = L11_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = OpenMenu
  L3_2 = menu
  L2_2(L3_2)
end
OpeanCleanItemsMenu = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = 1
  L4_2 = OpenDialogMenu
  L5_2 = {}
  L5_2.type = "changeTime"
  L6_2 = _U
  L7_2 = "sink_employee_menu_clean_items_title"
  L6_2 = L6_2(L7_2)
  L5_2.label = L6_2
  L5_2.args = A0_2
  L6_2 = {}
  L7_2 = {}
  L7_2.type = "number"
  L8_2 = _U
  L9_2 = "sink_employee_menu_set_amount_desc"
  L8_2 = L8_2(L9_2)
  L7_2.label = L8_2
  L7_2.icon = "fas fa-cubes-stacked"
  L7_2.required = true
  L6_2[1] = L7_2
  L5_2.menu = L6_2
  L4_2 = L4_2(L5_2)
  L5_2 = DialogMenu
  if "esx" == L5_2 then
    return
  end
  if nil ~= L4_2 then
    L5_2 = L4_2.value1
    if L5_2 then
      goto lbl_35
    end
  end
  do return end
  ::lbl_35::
  L5_2 = tonumber
  L6_2 = L4_2.value1
  L5_2 = L5_2(L6_2)
  L4_2.value1 = L5_2
  L5_2 = L4_2.value1
  if L5_2 < 1 then
    L5_2 = TriggerEvent
    L6_2 = TriggerName
    L7_2 = "notify"
    L6_2 = L6_2(L7_2)
    L7_2 = false
    L8_2 = _U
    L9_2 = "amount_not_number"
    L8_2 = L8_2(L9_2)
    L9_2 = Config
    L9_2 = L9_2.NotifyType
    L9_2 = L9_2.error
    return L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = DialogMenu
  if "qb" == L5_2 then
    L5_2 = L4_2.menu
    A0_2 = L5_2.args
  end
  L5_2 = L4_2.value1
  L3_2 = L3_2 * L5_2
  A0_2.itemAmount = L3_2
  L5_2 = CallCallback
  L6_2 = TriggerName
  L7_2 = "checkItemsToClean"
  L6_2 = L6_2(L7_2)
  function L7_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = {}
      L2_3 = A1_2
      L1_3.time = L2_3
      L2_3 = A2_2.clean
      L1_3.clean = L2_3
      L2_3 = A2_2.dirty
      L1_3.dirty = L2_3
      L2_3 = A0_2.itemAmount
      L1_3.amount = L2_3
      L2_3 = A2_2.label
      L1_3.cleaning = L2_3
      L2_3 = A2_2.prop
      L1_3.prop = L2_3
      A0_2.itemInfo = L1_3
      L1_3 = UseSinkToCleanItems
      L2_3 = A0_2
      L1_3(L2_3)
    end
  end
  L8_2 = {}
  L9_2 = A2_2.dirty
  L8_2.item = L9_2
  L9_2 = A0_2.itemAmount
  L8_2.amount = L9_2
  L9_2 = A2_2.label
  L8_2.itemName = L9_2
  L5_2(L6_2, L7_2, L8_2)
end
StartCleaning = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = A0_2.args
  L2_2 = L2_2.pedPos
  L3_2 = A0_2.args
  L3_2 = L3_2.coords
  L4_2 = L2_2.w
  L5_2 = A0_2.anim
  L6_2 = A0_2.itemInfo
  L6_2 = L6_2.cleaning
  L7_2 = A0_2.itemInfo
  L7_2 = L7_2.prop
  Busy = true
  L8_2 = CallCallback
  L9_2 = TriggerName
  L10_2 = "checkUtils"
  L9_2 = L9_2(L10_2)
  function L10_2()
    local L0_3, L1_3
  end
  L11_2 = {}
  L11_2.info = "changeStatus"
  L11_2.status = true
  L12_2 = A0_2.args
  L12_2 = L12_2.id
  L11_2.id = L12_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = DisableMovementLoop
  L8_2()
  L8_2 = GoToCoords
  L9_2 = L1_2
  L10_2 = L2_2
  L11_2 = L4_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = Request
  L9_2 = "anim"
  L10_2 = L5_2.dict
  L8_2(L9_2, L10_2)
  L8_2 = TaskPlayAnim
  L9_2 = L1_2
  L10_2 = L5_2.dict
  L11_2 = L5_2.anim
  L12_2 = 2.0
  L13_2 = 2.0
  L14_2 = -1
  L15_2 = 1
  L16_2 = 0
  L17_2 = true
  L18_2 = true
  L19_2 = false
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L8_2 = SpawnProp
  L9_2 = "v_res_fa_sponge01"
  L10_2 = 18905
  L11_2 = 0.15
  L12_2 = 0.02
  L13_2 = 0.02
  L14_2 = -25.0
  L15_2 = 0.0
  L16_2 = 0.0
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = SpawnProp
  L9_2 = L7_2
  L10_2 = 58866
  L11_2 = 0.1
  L12_2 = -0.02
  L13_2 = 0.001
  L14_2 = 80.0
  L15_2 = -50.0
  L16_2 = 0.0
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  DisableMovement = false
  L8_2 = FreezeEntityPosition
  L9_2 = L1_2
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = ProgressBars
  L9_2 = _U
  L10_2 = "sink_employee_progressbar_cleaning"
  L11_2 = L6_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = A0_2.itemAmount
  L10_2 = 6000 * L10_2
  L8_2(L9_2, L10_2)
  L8_2 = TriggerServerEvent
  L9_2 = TriggerName
  L10_2 = "getCleanedItems"
  L9_2 = L9_2(L10_2)
  L10_2 = A0_2.itemInfo
  L11_2 = A0_2.args
  L11_2 = L11_2.id
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = FreezeEntityPosition
  L9_2 = L1_2
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = ClearPedTasks
  L9_2 = L1_2
  L8_2(L9_2)
  L8_2 = ClearProps
  L8_2()
  L8_2 = CallCallback
  L9_2 = TriggerName
  L10_2 = "checkUtils"
  L9_2 = L9_2(L10_2)
  function L10_2()
    local L0_3, L1_3
  end
  L11_2 = {}
  L11_2.info = "changeStatus"
  L11_2.status = false
  L12_2 = A0_2.args
  L12_2 = L12_2.id
  L11_2.id = L12_2
  L8_2(L9_2, L10_2, L11_2)
  Busy = false
end
UseSinkToCleanItems = L3_1
L3_1 = RegisterNetEvent
L4_1 = TriggerName
L5_1 = "useToiletMenu1"
L4_1, L5_1, L6_1 = L4_1(L5_1)
L3_1(L4_1, L5_1, L6_1)
L3_1 = AddEventHandler
L4_1 = TriggerName
L5_1 = "useToiletMenu1"
L4_1 = L4_1(L5_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.args
  L2_2 = {}
  L2_2.dict = "timetable@ron@ig_3_couch"
  L2_2.anim = "base"
  L1_2.anim = L2_2
  L3_2 = CallCallback
  L4_2 = TriggerName
  L5_2 = "checkUtils"
  L4_2 = L4_2(L5_2)
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if not A0_3 then
      L1_3 = UseToilet
      L2_3 = L1_2
      L1_3(L2_3)
    else
      L1_3 = TriggerEvent
      L2_3 = TriggerName
      L3_3 = "notify"
      L2_3 = L2_3(L3_3)
      L3_3 = false
      L4_3 = _U
      L5_3 = "toilet_occupied"
      L4_3 = L4_3(L5_3)
      L5_3 = Config
      L5_3 = L5_3.NotifyType
      L5_3 = L5_3.error
      return L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  L6_2 = {}
  L6_2.info = "checkStatus"
  L7_2 = L1_2.args
  L7_2 = L7_2.id
  L6_2.id = L7_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = TriggerName
L5_1 = "useToiletMenu2"
L4_1, L5_1, L6_1 = L4_1(L5_1)
L3_1(L4_1, L5_1, L6_1)
L3_1 = AddEventHandler
L4_1 = TriggerName
L5_1 = "useToiletMenu2"
L4_1 = L4_1(L5_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.args
  L2_2 = {}
  L2_2.dict = "timetable@ron@ron_ig_2_alt1"
  L2_2.anim = "ig_2_alt1_base"
  L1_2.anim = L2_2
  L3_2 = CallCallback
  L4_2 = TriggerName
  L5_2 = "checkUtils"
  L4_2 = L4_2(L5_2)
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if not A0_3 then
      L1_3 = UseToilet
      L2_3 = L1_2
      L1_3(L2_3)
    else
      L1_3 = TriggerEvent
      L2_3 = TriggerName
      L3_3 = "notify"
      L2_3 = L2_3(L3_3)
      L3_3 = false
      L4_3 = _U
      L5_3 = "toilet_occupied"
      L4_3 = L4_3(L5_3)
      L5_3 = Config
      L5_3 = L5_3.NotifyType
      L5_3 = L5_3.error
      return L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  L6_2 = {}
  L6_2.info = "checkStatus"
  L7_2 = L1_2.args
  L7_2 = L7_2.id
  L6_2.id = L7_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = TriggerName
L5_1 = "useToiletMenu3"
L4_1, L5_1, L6_1 = L4_1(L5_1)
L3_1(L4_1, L5_1, L6_1)
L3_1 = AddEventHandler
L4_1 = TriggerName
L5_1 = "useToiletMenu3"
L4_1 = L4_1(L5_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.args
  L2_2 = nil
  L3_2 = GetPlayerGender
  L3_2 = L3_2()
  if "male" == L3_2 then
    L3_2 = {}
    L3_2.dict = "misscarsteal2peeing"
    L3_2.anim = "peeing_loop"
    L2_2 = L3_2
    L3_2 = L1_2.args
    L4_2 = {}
    L5_2 = L1_2.args
    L5_2 = L5_2.pedPos
    L5_2 = L5_2.x
    L4_2.x = L5_2
    L5_2 = L1_2.args
    L5_2 = L5_2.pedPos
    L5_2 = L5_2.y
    L4_2.y = L5_2
    L5_2 = L1_2.args
    L5_2 = L5_2.pedPos
    L5_2 = L5_2.z
    L4_2.z = L5_2
    L5_2 = L1_2.args
    L5_2 = L5_2.pedPos
    L5_2 = L5_2.w
    L5_2 = L5_2 + 180
    L5_2 = L5_2 % 360
    L4_2.w = L5_2
    L3_2.pedPos = L4_2
  else
    L3_2 = {}
    L3_2.dict = "timetable@ron@ig_3_couch"
    L3_2.anim = "base"
    L2_2 = L3_2
  end
  L1_2.anim = L2_2
  L3_2 = CallCallback
  L4_2 = TriggerName
  L5_2 = "checkUtils"
  L4_2 = L4_2(L5_2)
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if not A0_3 then
      L1_3 = UseToilet
      L2_3 = L1_2
      L1_3(L2_3)
    else
      L1_3 = TriggerEvent
      L2_3 = TriggerName
      L3_3 = "notify"
      L2_3 = L2_3(L3_3)
      L3_3 = false
      L4_3 = _U
      L5_3 = "toilet_occupied"
      L4_3 = L4_3(L5_3)
      L5_3 = Config
      L5_3 = L5_3.NotifyType
      L5_3 = L5_3.error
      return L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  L6_2 = {}
  L6_2.info = "checkStatus"
  L7_2 = L1_2.args
  L7_2 = L7_2.id
  L6_2.id = L7_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = TriggerName
L5_1 = "useSinkMenu1"
L4_1, L5_1, L6_1 = L4_1(L5_1)
L3_1(L4_1, L5_1, L6_1)
L3_1 = AddEventHandler
L4_1 = TriggerName
L5_1 = "useSinkMenu1"
L4_1 = L4_1(L5_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.args
  L2_2 = {}
  L2_2.dict = "missheist_agency3aig_23"
  L2_2.anim = "urinal_sink_loop"
  L1_2.anim = L2_2
  L1_2.cleaning = "hands"
  L3_2 = CallCallback
  L4_2 = TriggerName
  L5_2 = "checkUtils"
  L4_2 = L4_2(L5_2)
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if not A0_3 then
      L1_3 = UseSink
      L2_3 = L1_2
      L1_3(L2_3)
    else
      L1_3 = TriggerEvent
      L2_3 = TriggerName
      L3_3 = "notify"
      L2_3 = L2_3(L3_3)
      L3_3 = false
      L4_3 = _U
      L5_3 = "sink_occupied"
      L4_3 = L4_3(L5_3)
      L5_3 = Config
      L5_3 = L5_3.NotifyType
      L5_3 = L5_3.error
      return L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  L6_2 = {}
  L6_2.info = "checkStatus"
  L7_2 = L1_2.args
  L7_2 = L7_2.id
  L6_2.id = L7_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = TriggerName
L5_1 = "useSinkMenu2"
L4_1, L5_1, L6_1 = L4_1(L5_1)
L3_1(L4_1, L5_1, L6_1)
L3_1 = AddEventHandler
L4_1 = TriggerName
L5_1 = "useSinkMenu2"
L4_1 = L4_1(L5_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.args
  L2_2 = {}
  L2_2.dict = "switch@michael@wash_face"
  L2_2.anim = "loop_michael"
  L1_2.anim = L2_2
  L1_2.cleaning = "face"
  L3_2 = CallCallback
  L4_2 = TriggerName
  L5_2 = "checkUtils"
  L4_2 = L4_2(L5_2)
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if not A0_3 then
      L1_3 = UseSink
      L2_3 = L1_2
      L1_3(L2_3)
    else
      L1_3 = TriggerEvent
      L2_3 = TriggerName
      L3_3 = "notify"
      L2_3 = L2_3(L3_3)
      L3_3 = false
      L4_3 = _U
      L5_3 = "sink_occupied"
      L4_3 = L4_3(L5_3)
      L5_3 = Config
      L5_3 = L5_3.NotifyType
      L5_3 = L5_3.error
      return L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  L6_2 = {}
  L6_2.info = "checkStatus"
  L7_2 = L1_2.args
  L7_2 = L7_2.id
  L6_2.id = L7_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = TriggerName
L5_1 = "useSinkMenu3"
L4_1, L5_1, L6_1 = L4_1(L5_1)
L3_1(L4_1, L5_1, L6_1)
L3_1 = AddEventHandler
L4_1 = TriggerName
L5_1 = "useSinkMenu3"
L4_1 = L4_1(L5_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.args
  L2_2 = OpeanCleanItemsMenu
  L3_2 = L1_2
  L2_2(L3_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = TriggerName
L5_1 = "cleanItemsMenu1"
L4_1, L5_1, L6_1 = L4_1(L5_1)
L3_1(L4_1, L5_1, L6_1)
L3_1 = AddEventHandler
L4_1 = TriggerName
L5_1 = "cleanItemsMenu1"
L4_1 = L4_1(L5_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.args
  L2_2 = L1_2.washData
  L3_2 = StartCleaning
  L4_2 = L1_2
  L5_2 = 4500
  L6_2 = {}
  L7_2 = L2_2.item
  L7_2 = L7_2.clean
  L6_2.clean = L7_2
  L7_2 = L2_2.item
  L7_2 = L7_2.dirty
  L6_2.dirty = L7_2
  L7_2 = L2_2.prop
  L6_2.prop = L7_2
  L7_2 = L2_2.label
  L6_2.label = L7_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1(L4_1, L5_1)
