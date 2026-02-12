local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "useMenuList"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "useMenuList"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
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
  L2_2 = Config
  L2_2 = L2_2.UI
  L2_2 = L2_2.foodMenu
  if L2_2 then
    L2_2 = pairs
    L3_2 = A0_2.args
    L3_2 = L3_2.items
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.category
      if not L8_2 then
        L8_2 = "Uncategorized"
      end
      L9_2 = pairs
      L10_2 = L7_2.items
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
        L15_2 = table
        L15_2 = L15_2.insert
        L16_2 = L1_2
        L17_2 = {}
        L17_2.category = L8_2
        L18_2 = L14_2.label
        L17_2.title = L18_2
        L18_2 = _U
        L19_2 = "menulist_menu_desc"
        L20_2 = L14_2.price
        L18_2 = L18_2(L19_2, L20_2)
        L17_2.description = L18_2
        L18_2 = "nui://"
        L19_2 = Images
        L20_2 = L14_2.icon
        L18_2 = L18_2 .. L19_2 .. L20_2
        L17_2.icon = L18_2
        L18_2 = "nui://"
        L19_2 = Images
        L20_2 = L14_2.icon
        L18_2 = L18_2 .. L19_2 .. L20_2
        L17_2.image = L18_2
        L17_2.arrow = false
        L15_2(L16_2, L17_2)
      end
    end
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.type = "openMenu"
    L3_2.menuItems = L1_2
    L2_2(L3_2)
    L2_2 = SetNuiFocus
    L3_2 = true
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = {}
    L3_2 = {}
    L3_2.name = "useMenuList"
    L4_2 = _U
    L5_2 = "menulist_menu_title"
    L6_2 = JobInfo
    L6_2 = L6_2.label
    L4_2 = L4_2(L5_2, L6_2)
    L3_2.title = L4_2
    L2_2.header = L3_2
    L3_2 = {}
    L2_2.options = L3_2
    menu = L2_2
    L2_2 = pairs
    L3_2 = A0_2.args
    L3_2 = L3_2.items
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.category
      if not L8_2 then
        L8_2 = "Uncategorized"
      end
      L9_2 = pairs
      L10_2 = L7_2.items
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
        L15_2 = table
        L15_2 = L15_2.insert
        L16_2 = menu
        L16_2 = L16_2.options
        L17_2 = {}
        L18_2 = L14_2.label
        L17_2.title = L18_2
        L18_2 = _U
        L19_2 = "menulist_menu_desc"
        L20_2 = L14_2.price
        L18_2 = L18_2(L19_2, L20_2)
        L17_2.description = L18_2
        L18_2 = "nui://"
        L19_2 = Images
        L20_2 = L14_2.icon
        L18_2 = L18_2 .. L19_2 .. L20_2
        L17_2.icon = L18_2
        L18_2 = "nui://"
        L19_2 = Images
        L20_2 = L14_2.icon
        L18_2 = L18_2 .. L19_2 .. L20_2
        L17_2.image = L18_2
        L17_2.arrow = false
        L15_2(L16_2, L17_2)
      end
    end
    L2_2 = OpenMenu
    L3_2 = menu
    L2_2(L3_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "closeMenu"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetNuiFocus
  L3_2 = A0_2.focus
  L4_2 = A0_2.cursor
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "onResourceStop"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = SetNuiFocus
    L2_2 = false
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1(L1_1, L2_1)
