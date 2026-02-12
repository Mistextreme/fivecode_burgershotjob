local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "storageMenu"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "storageMenu"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CallCallback
  L2_2 = TriggerName
  L3_2 = "checkDuty"
  L2_2 = L2_2(L3_2)
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = A0_2.args
    L1_3 = L1_3.duty
    if L1_3 and not A0_3 then
      L1_3 = TriggerEvent
      L2_3 = TriggerName
      L3_3 = "notify"
      L2_3 = L2_3(L3_3)
      L3_3 = _U
      L4_3 = "duty_notify_title"
      L3_3 = L3_3(L4_3)
      L4_3 = _U
      L5_3 = "not_on_duty"
      L4_3 = L4_3(L5_3)
      L5_3 = Config
      L5_3 = L5_3.NotifyType
      L5_3 = L5_3.error
      return L1_3(L2_3, L3_3, L4_3, L5_3)
    end
    L1_3 = MainCheck
    L2_3 = A0_2.args
    L2_3 = L2_3.jobName
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = {}
      L2_3 = {}
      L2_3.name = "storageMenu"
      L3_3 = _U
      L4_3 = "storage_menu_title"
      L5_3 = A0_2.args
      L5_3 = L5_3.labelName
      L3_3 = L3_3(L4_3, L5_3)
      L2_3.title = L3_3
      L1_3.header = L2_3
      L2_3 = {}
      L1_3.options = L2_3
      menu = L1_3
      L1_3 = A0_2.args
      L1_3 = L1_3.company
      L1_3 = L1_3.use
      if L1_3 then
        L1_3 = table
        L1_3 = L1_3.insert
        L2_3 = menu
        L2_3 = L2_3.options
        L3_3 = {}
        L4_3 = _U
        L5_3 = "storage_menu_company_title"
        L4_3 = L4_3(L5_3)
        L3_3.title = L4_3
        L4_3 = _U
        L5_3 = "storage_menu_company_desc"
        L4_3 = L4_3(L5_3)
        L3_3.description = L4_3
        L3_3.icon = "fas fa-box"
        L3_3.arrow = true
        L4_3 = {}
        L4_3.stashType = "company"
        L5_3 = _U
        L6_3 = "storage_company_stash_name"
        L7_3 = A0_2.args
        L7_3 = L7_3.name
        L5_3 = L5_3(L6_3, L7_3)
        L4_3.stashName = L5_3
        L5_3 = _U
        L6_3 = "storage_company_stash_name"
        L7_3 = A0_2.args
        L7_3 = L7_3.label
        L5_3 = L5_3(L6_3, L7_3)
        L4_3.stashLabel = L5_3
        L5_3 = A0_2.args
        L5_3 = L5_3.company
        L5_3 = L5_3.slots
        L4_3.slots = L5_3
        L5_3 = A0_2.args
        L5_3 = L5_3.company
        L5_3 = L5_3.weight
        L4_3.weight = L5_3
        L5_3 = JobInfo
        L5_3 = L5_3.name
        L4_3.owner = L5_3
        L5_3 = A0_2.args
        L5_3 = L5_3.job
        L4_3.job = L5_3
        L3_3.args = L4_3
        L3_3.event = "storageMenu1"
        function L4_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4
          L0_4 = _U
          L1_4 = "storage_company_stash_name"
          L2_4 = A0_2.args
          L2_4 = L2_4.name
          L0_4 = L0_4(L1_4, L2_4)
          L1_4 = _U
          L2_4 = "storage_company_stash_name"
          L3_4 = A0_2.args
          L3_4 = L3_4.label
          L1_4 = L1_4(L2_4, L3_4)
          L2_4 = A0_2.args
          L2_4 = L2_4.company
          L2_4 = L2_4.slots
          L3_4 = A0_2.args
          L3_4 = L3_4.company
          L3_4 = L3_4.weight
          L4_4 = JobInfo
          L4_4 = L4_4.name
          L5_4 = A0_2.args
          L5_4 = L5_4.job
          L6_4 = StorageAnim
          L7_4 = "company"
          L6_4(L7_4)
          L6_4 = TriggerServerEvent
          L7_4 = TriggerName
          L8_4 = "openStash"
          L7_4 = L7_4(L8_4)
          L8_4 = L0_4
          L9_4 = L1_4
          L10_4 = L2_4
          L11_4 = L3_4
          L12_4 = L4_4
          L13_4 = L5_4
          L6_4(L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4)
        end
        L3_3.onSelect = L4_3
        L1_3(L2_3, L3_3)
      end
      L1_3 = A0_2.args
      L1_3 = L1_3.personal
      L1_3 = L1_3.use
      if L1_3 then
        L1_3 = table
        L1_3 = L1_3.insert
        L2_3 = menu
        L2_3 = L2_3.options
        L3_3 = {}
        L4_3 = _U
        L5_3 = "storage_menu_personal_title"
        L4_3 = L4_3(L5_3)
        L3_3.title = L4_3
        L4_3 = _U
        L5_3 = "storage_menu_personal_desc"
        L4_3 = L4_3(L5_3)
        L3_3.description = L4_3
        L3_3.icon = "fas fa-box"
        L3_3.arrow = true
        L4_3 = {}
        L4_3.stashType = "personal"
        L5_3 = _U
        L6_3 = "storage_personal_stash_name"
        L7_3 = A0_2.args
        L7_3 = L7_3.name
        L5_3 = L5_3(L6_3, L7_3)
        L4_3.stashName = L5_3
        L5_3 = _U
        L6_3 = "storage_personal_stash_name"
        L7_3 = A0_2.args
        L7_3 = L7_3.label
        L5_3 = L5_3(L6_3, L7_3)
        L4_3.stashLabel = L5_3
        L5_3 = A0_2.args
        L5_3 = L5_3.personal
        L5_3 = L5_3.slots
        L4_3.slots = L5_3
        L5_3 = A0_2.args
        L5_3 = L5_3.personal
        L5_3 = L5_3.weight
        L4_3.weight = L5_3
        L5_3 = GetIdentifier
        L5_3 = L5_3()
        L4_3.owner = L5_3
        L5_3 = A0_2.args
        L5_3 = L5_3.job
        L4_3.job = L5_3
        L3_3.args = L4_3
        L3_3.event = "storageMenu1"
        function L4_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4
          L0_4 = _U
          L1_4 = "storage_personal_stash_name"
          L2_4 = GetIdentifier
          L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4 = L2_4()
          L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4)
          L1_4 = _U
          L2_4 = "storage_personal_stash_name"
          L3_4 = GetIdentifier
          L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4 = L3_4()
          L1_4 = L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4)
          L2_4 = A0_2.args
          L2_4 = L2_4.personal
          L2_4 = L2_4.slots
          L3_4 = A0_2.args
          L3_4 = L3_4.personal
          L3_4 = L3_4.weight
          L4_4 = GetIdentifier
          L4_4 = L4_4()
          L5_4 = A0_2.args
          L5_4 = L5_4.job
          L6_4 = StorageAnim
          L7_4 = "personal"
          L6_4(L7_4)
          L6_4 = TriggerServerEvent
          L7_4 = TriggerName
          L8_4 = "openStash"
          L7_4 = L7_4(L8_4)
          L8_4 = L0_4
          L9_4 = L1_4
          L10_4 = L2_4
          L11_4 = L3_4
          L12_4 = L4_4
          L13_4 = L5_4
          L6_4(L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4)
        end
        L3_3.onSelect = L4_3
        L1_3(L2_3, L3_3)
      end
      L1_3 = A0_2.args
      L1_3 = L1_3.company
      L1_3 = L1_3.use
      if not L1_3 then
        L1_3 = A0_2.args
        L1_3 = L1_3.personal
        L1_3 = L1_3.use
        if not L1_3 then
          L1_3 = table
          L1_3 = L1_3.insert
          L2_3 = menu
          L2_3 = L2_3.options
          L3_3 = {}
          L4_3 = _U
          L5_3 = "storage_not_avalible"
          L4_3 = L4_3(L5_3)
          L3_3.title = L4_3
          L3_3.icon = "fas fa-ban"
          L1_3(L2_3, L3_3)
        end
      end
      L1_3 = OpenMenu
      L2_3 = menu
      L1_3(L2_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = Request
  L3_2 = "anim"
  L4_2 = "mp_arresting"
  L2_2(L3_2, L4_2)
  L2_2 = TaskPlayAnim
  L3_2 = L1_2
  L4_2 = "mp_arresting"
  L5_2 = "a_uncuff"
  L6_2 = 8.0
  L7_2 = -8.0
  L8_2 = 2000
  L9_2 = 1.0
  L10_2 = 0.0
  L11_2 = false
  L12_2 = false
  L13_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2 = ProgressBars
  L3_2 = _U
  L4_2 = "storage_progressbar_open"
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 2000
  L2_2(L3_2, L4_2)
  L2_2 = Framework
  L2_2 = L2_2.type
  if "qbcore" == L2_2 then
    L2_2 = Wait
    L3_2 = 500
    L2_2(L3_2)
  end
end
StorageAnim = L0_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "storageMenu1"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "storageMenu1"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = A0_2.name
  L2_2 = A0_2.label
  L3_2 = A0_2.slots
  L4_2 = A0_2.weight
  L5_2 = JobInfo
  L5_2 = L5_2.name
  L6_2 = A0_2.job
  L7_2 = A0_2.stashType
  L8_2 = StorageAnim
  L9_2 = L7_2
  L8_2(L9_2)
  L8_2 = TriggerServerEvent
  L9_2 = TriggerName
  L10_2 = "openStash"
  L9_2 = L9_2(L10_2)
  L10_2 = L1_2
  L11_2 = L2_2
  L12_2 = L3_2
  L13_2 = L4_2
  L14_2 = L5_2
  L15_2 = L6_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L0_1(L1_1, L2_1)
