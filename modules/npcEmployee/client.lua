local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "useNpcEmployee"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "useNpcEmployee"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
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
  L1_2 = CallCallback
  L2_2 = TriggerName
  L3_2 = "checkUtils"
  L2_2 = L2_2(L3_2)
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = CallCallback
    L2_3 = TriggerName
    L3_3 = "hasAnOrder"
    L2_3 = L2_3(L3_3)
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L1_4 = A0_3
      if not L1_4 then
        L1_4 = {}
        L2_4 = {}
        L2_4.name = "useNpcEmployee"
        L3_4 = _U
        L4_4 = "npcemployee_menu_title"
        L3_4 = L3_4(L4_4)
        L2_4.title = L3_4
        L1_4.header = L2_4
        L2_4 = {}
        L1_4.options = L2_4
        menu = L1_4
        if not A0_4 then
          L1_4 = table
          L1_4 = L1_4.insert
          L2_4 = menu
          L2_4 = L2_4.options
          L3_4 = {}
          L4_4 = _U
          L5_4 = "npcemployee_menu_order_title"
          L4_4 = L4_4(L5_4)
          L3_4.title = L4_4
          L4_4 = _U
          L5_4 = "npcemployee_menu_order_desc"
          L4_4 = L4_4(L5_4)
          L3_4.description = L4_4
          L3_4.icon = "fas fa-calendar"
          L3_4.arrow = true
          L4_4 = {}
          L5_4 = A0_2
          L4_4.args = L5_4
          L3_4.args = L4_4
          L3_4.event = "useNpcEmployee1"
          function L4_4()
            local L0_5, L1_5, L2_5
            L0_5 = CallCallback
            L1_5 = TriggerName
            L2_5 = "checkPlayerDutyCount"
            L1_5 = L1_5(L2_5)
            function L2_5(A0_6)
              local L1_6, L2_6, L3_6, L4_6, L5_6
              L1_6 = A0_2.args
              L1_6 = L1_6.playersOnDuty
              if A0_6 > L1_6 then
                L1_6 = TriggerEvent
                L2_6 = TriggerName
                L3_6 = "notify"
                L2_6 = L2_6(L3_6)
                L3_6 = _U
                L4_6 = "npcemployee_notify_title"
                L3_6 = L3_6(L4_6)
                L4_6 = _U
                L5_6 = "npcemployee_employees_on_duty"
                L4_6 = L4_6(L5_6)
                L5_6 = Config
                L5_6 = L5_6.NotifyType
                L5_6 = L5_6.error
                return L1_6(L2_6, L3_6, L4_6, L5_6)
              end
              L1_6 = OrderFood
              L2_6 = A0_2
              L1_6(L2_6)
            end
            L0_5(L1_5, L2_5)
          end
          L3_4.onSelect = L4_4
          L1_4(L2_4, L3_4)
        else
          L1_4 = table
          L1_4 = L1_4.insert
          L2_4 = menu
          L2_4 = L2_4.options
          L3_4 = {}
          L4_4 = _U
          L5_4 = "npcemployee_menu_take_food"
          L4_4 = L4_4(L5_4)
          L3_4.title = L4_4
          L4_4 = _U
          L5_4 = "npcemployee_menu_take_food_desc"
          L4_4 = L4_4(L5_4)
          L3_4.description = L4_4
          L3_4.icon = "fas fa-hand"
          L3_4.arrow = true
          L4_4 = {}
          L3_4.args = L4_4
          L3_4.event = "useNpcEmployee2"
          function L4_4()
            local L0_5, L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5, L9_5, L10_5, L11_5, L12_5
            L0_5 = PlayerPedId
            L0_5 = L0_5()
            L1_5 = Request
            L2_5 = "anim"
            L3_5 = "random@domestic"
            L1_5(L2_5, L3_5)
            L1_5 = TaskPlayAnim
            L2_5 = L0_5
            L3_5 = "random@domestic"
            L4_5 = "pickup_low"
            L5_5 = 2.0
            L6_5 = 2.0
            L7_5 = 350
            L8_5 = 52
            L9_5 = 0
            L10_5 = true
            L11_5 = true
            L12_5 = false
            L1_5(L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5, L9_5, L10_5, L11_5, L12_5)
            L1_5 = ProgressBars
            L2_5 = _U
            L3_5 = "npcemployee_taking_food"
            L2_5 = L2_5(L3_5)
            L3_5 = 350
            L1_5(L2_5, L3_5)
            L1_5 = ClearPedTasks
            L2_5 = L0_5
            L1_5(L2_5)
            L1_5 = TriggerServerEvent
            L2_5 = TriggerName
            L3_5 = "npcEmployee"
            L2_5 = L2_5(L3_5)
            L3_5 = {}
            L3_5.status = "giveFood"
            L1_5(L2_5, L3_5)
          end
          L3_4.onSelect = L4_4
          L1_4(L2_4, L3_4)
        end
        L1_4 = Config
        L1_4 = L1_4.NpcEmployeeStock
        if L1_4 then
          L1_4 = JobInfo
          L1_4 = L1_4.name
          L2_4 = GetPlayerInfo
          L2_4 = L2_4()
          L2_4 = L2_4.job
          L2_4 = L2_4.name
          if L1_4 == L2_4 then
            L1_4 = table
            L1_4 = L1_4.insert
            L2_4 = menu
            L2_4 = L2_4.options
            L3_4 = {}
            L4_4 = _U
            L5_4 = "npcemployee_stock_adjust_title"
            L4_4 = L4_4(L5_4)
            L3_4.title = L4_4
            L4_4 = _U
            L5_4 = "npcemployee_stock_adjust_desc"
            L4_4 = L4_4(L5_4)
            L3_4.description = L4_4
            L3_4.icon = "fas fa-box"
            L3_4.arrow = true
            L4_4 = {}
            L5_4 = A0_2
            L4_4.args = L5_4
            L3_4.args = L4_4
            L3_4.event = "useNpcEmployee3"
            function L4_4()
              local L0_5, L1_5, L2_5
              L0_5 = OrderFood
              L1_5 = A0_2
              L2_5 = true
              L0_5(L1_5, L2_5)
            end
            L3_4.onSelect = L4_4
            L1_4(L2_4, L3_4)
          end
        end
        L1_4 = OpenMenu
        L2_4 = menu
        L1_4(L2_4)
      else
        L1_4 = TriggerEvent
        L2_4 = TriggerName
        L3_4 = "notify"
        L2_4 = L2_4(L3_4)
        L3_4 = false
        L4_4 = _U
        L5_4 = "npcemployee_occupied"
        L4_4 = L4_4(L5_4)
        L5_4 = Config
        L5_4 = L5_4.NotifyType
        L5_4 = L5_4.error
        return L1_4(L2_4, L3_4, L4_4, L5_4)
      end
    end
    L1_3(L2_3, L3_3)
  end
  L4_2 = {}
  L4_2.info = "checkStatus"
  L5_2 = A0_2.args
  L5_2 = L5_2.id
  L4_2.id = L5_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = nil
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.item
    if A0_2 == L9_2 then
      L2_2 = L8_2.amount
      break
    end
  end
  return L2_2
end
GetItemStock = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = {}
  L3_2 = {}
  L3_2.name = "orderFoodMenu"
  L4_2 = _U
  L5_2 = "npcemployee_menu_title"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L3_2.backMenu = "useNpcEmployee"
  L2_2.header = L3_2
  L3_2 = {}
  L2_2.options = L3_2
  menu = L2_2
  L2_2 = Config
  L2_2 = L2_2.NpcEmployeeStock
  if L2_2 then
    L2_2 = CallCallback
    L3_2 = TriggerName
    L4_2 = "getStock"
    L3_2 = L3_2(L4_2)
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
      L1_3 = pairs
      L2_3 = A0_2.args
      L2_3 = L2_3.items
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.category
        if not L7_3 then
          L7_3 = "Uncategorized"
        end
        L8_3 = pairs
        L9_3 = L6_3.items
        L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
        for L12_3, L13_3 in L8_3, L9_3, L10_3, L11_3 do
          L14_3 = GetItemStock
          L15_3 = L13_3.item
          L16_3 = A0_3
          L14_3 = L14_3(L15_3, L16_3)
          if not L14_3 then
            L14_3 = 0
          end
          L15_3 = nil
          L16_3 = A1_2
          if L16_3 then
            L15_3 = false
          else
            if 0 == L14_3 then
              L16_3 = true
              if L16_3 then
                goto lbl_33
                L15_3 = L16_3 or L15_3
              end
            end
            L15_3 = false
          end
          ::lbl_33::
          L16_3 = table
          L16_3 = L16_3.insert
          L17_3 = menu
          L17_3 = L17_3.options
          L18_3 = {}
          L19_3 = L13_3.label
          L18_3.title = L19_3
          L19_3 = A1_2
          if L19_3 then
            L19_3 = _U
            L20_3 = "npcemployee_stock_adjust_purchase_desc"
            L21_3 = L14_3
            L19_3 = L19_3(L20_3, L21_3)
            if L19_3 then
              goto lbl_56
            end
          end
          L19_3 = _U
          L20_3 = "npcemployee_stock_purchase_desc"
          L21_3 = L13_3.label
          L22_3 = L13_3.price
          L23_3 = L14_3
          L19_3 = L19_3(L20_3, L21_3, L22_3, L23_3)
          ::lbl_56::
          L18_3.description = L19_3
          L19_3 = "nui://"
          L20_3 = Images
          L21_3 = L13_3.icon
          L19_3 = L19_3 .. L20_3 .. L21_3
          L18_3.icon = L19_3
          L19_3 = "nui://"
          L20_3 = Images
          L21_3 = L13_3.icon
          L19_3 = L19_3 .. L20_3 .. L21_3
          L18_3.image = L19_3
          L18_3.arrow = true
          L18_3.disabled = L15_3
          L19_3 = {}
          L20_3 = A0_2
          L19_3.args = L20_3
          L20_3 = L13_3.item
          L19_3.item = L20_3
          L20_3 = L13_3.price
          L19_3.price = L20_3
          L20_3 = L13_3.label
          L19_3.label = L20_3
          L19_3.itemStock = L14_3
          L20_3 = A1_2
          L19_3.job = L20_3
          L18_3.args = L19_3
          L18_3.event = "orderFoodMenu1"
          function L19_3()
            local L0_4, L1_4, L2_4
            L0_4 = A1_2
            if L0_4 then
              L0_4 = A1_2
              A0_2.job = L0_4
              L0_4 = _U
              L1_4 = "npcemployee_stock_title"
              L2_4 = JobInfo
              L2_4 = L2_4.label
              L0_4 = L0_4(L1_4, L2_4)
              A0_2.menuLabel = L0_4
              L0_4 = _U
              L1_4 = "npcemployee_stock_desc"
              L0_4 = L0_4(L1_4)
              A0_2.menuDesc = L0_4
            else
              L0_4 = _U
              L1_4 = "npcemployee_order"
              L2_4 = JobInfo
              L2_4 = L2_4.label
              L0_4 = L0_4(L1_4, L2_4)
              A0_2.menuLabel = L0_4
              L0_4 = _U
              L1_4 = "shop_amount_to_buy"
              L0_4 = L0_4(L1_4)
              A0_2.menuDesc = L0_4
            end
            L0_4 = L13_3.item
            A0_2.item = L0_4
            L0_4 = L13_3.price
            A0_2.price = L0_4
            L0_4 = L13_3.label
            A0_2.label = L0_4
            L0_4 = L14_3
            A0_2.itemStock = L0_4
            L0_4 = SetItemAmountOrderFood
            L1_4 = A0_2
            L0_4(L1_4)
          end
          L18_3.onSelect = L19_3
          L16_3(L17_3, L18_3)
        end
      end
      L1_3 = OpenMenu
      L2_3 = menu
      L1_3(L2_3)
    end
    L2_2(L3_2, L4_2)
  else
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
        L19_2 = "shop_menu_purchase_desc"
        L20_2 = L14_2.label
        L21_2 = L14_2.price
        L18_2 = L18_2(L19_2, L20_2, L21_2)
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
        L17_2.arrow = true
        L18_2 = {}
        L18_2.args = A0_2
        L19_2 = L14_2.item
        L18_2.item = L19_2
        L19_2 = L14_2.price
        L18_2.price = L19_2
        L19_2 = L14_2.label
        L18_2.label = L19_2
        L17_2.args = L18_2
        L17_2.event = "orderFoodMenu2"
        function L18_2()
          local L0_3, L1_3, L2_3
          L0_3 = _U
          L1_3 = "npcemployee_order"
          L2_3 = JobInfo
          L2_3 = L2_3.label
          L0_3 = L0_3(L1_3, L2_3)
          A0_2.menuLabel = L0_3
          L0_3 = _U
          L1_3 = "shop_amount_to_buy"
          L0_3 = L0_3(L1_3)
          A0_2.menuDesc = L0_3
          L0_3 = L14_2.item
          A0_2.item = L0_3
          L0_3 = L14_2.price
          A0_2.price = L0_3
          L0_3 = L14_2.label
          A0_2.label = L0_3
          L0_3 = SetItemAmountOrderFood
          L1_3 = A0_2
          L0_3(L1_3)
        end
        L17_2.onSelect = L18_2
        L15_2(L16_2, L17_2)
      end
    end
    L2_2 = OpenMenu
    L3_2 = menu
    L2_2(L3_2)
  end
end
OrderFood = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = OpenDialogMenu
  L2_2 = {}
  L2_2.type = "setItemAmountOrderFood"
  L3_2 = A0_2.menuLabel
  L2_2.label = L3_2
  L2_2.args = A0_2
  L3_2 = {}
  L4_2 = {}
  L4_2.type = "number"
  L5_2 = A0_2.menuDesc
  L4_2.label = L5_2
  L4_2.icon = "fas fa-box"
  L4_2.required = true
  L3_2[1] = L4_2
  L2_2.menu = L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = DialogMenu
  if "esx" == L2_2 then
    return
  end
  if nil ~= L1_2 then
    L2_2 = L1_2.value1
    if L2_2 then
      goto lbl_30
    end
  end
  do return end
  ::lbl_30::
  L2_2 = tonumber
  L3_2 = L1_2.value1
  L2_2 = L2_2(L3_2)
  L1_2.value1 = L2_2
  L2_2 = L1_2.value1
  if L2_2 <= 0 then
    L2_2 = TriggerEvent
    L3_2 = TriggerName
    L4_2 = "notify"
    L3_2 = L3_2(L4_2)
    L4_2 = false
    L5_2 = _U
    L6_2 = "amount_too_low"
    L5_2 = L5_2(L6_2)
    L6_2 = Config
    L6_2 = L6_2.NotifyType
    L6_2 = L6_2.error
    return L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = Config
  L2_2 = L2_2.NpcEmployeeStock
  if L2_2 then
    L2_2 = A0_2.job
    if not L2_2 then
      L2_2 = L1_2.value1
      L3_2 = A0_2.itemStock
      if L2_2 > L3_2 then
        L2_2 = TriggerEvent
        L3_2 = TriggerName
        L4_2 = "notify"
        L3_2 = L3_2(L4_2)
        L4_2 = false
        L5_2 = _U
        L6_2 = "npcemployee_stock_not_enough_stock"
        L7_2 = A0_2.label
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = Config
        L6_2 = L6_2.NotifyType
        L6_2 = L6_2.error
        return L2_2(L3_2, L4_2, L5_2, L6_2)
      end
    end
  end
  L2_2 = DialogMenu
  if "qb" == L2_2 then
    L2_2 = L1_2.menu
    A0_2 = L2_2.args
  end
  L2_2 = L1_2.value1
  A0_2.amount = L2_2
  L2_2 = A0_2.price
  L3_2 = L1_2.value1
  L2_2 = L2_2 * L3_2
  A0_2.price = L2_2
  L2_2 = A0_2.job
  if L2_2 then
    L2_2 = AdjustStock
    L3_2 = A0_2
    L2_2(L3_2)
  else
    L2_2 = PaymentChoiseOrderFood
    L3_2 = A0_2
    L2_2(L3_2)
  end
end
SetItemAmountOrderFood = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = {}
  L2_2.name = "adjustStock"
  L3_2 = A0_2.label
  L4_2 = "("
  L5_2 = A0_2.amount
  L6_2 = "x)"
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2.title = L3_2
  L2_2.backMenu = "orderFoodMenu"
  L1_2.header = L2_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = _U
  L5_2 = "npcemployee_stock_adjust_add_title"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L4_2 = _U
  L5_2 = "npcemployee_stock_adjust_add_desc"
  L6_2 = A0_2.label
  L7_2 = A0_2.amount
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.description = L4_2
  L3_2.icon = "fas fa-plus"
  L3_2.arrow = true
  L4_2 = {}
  L4_2.args = A0_2
  L3_2.args = L4_2
  L3_2.event = "adjustStock1"
  function L4_2()
    local L0_3, L1_3, L2_3
    A0_2.status = "add"
    L0_3 = TriggerServerEvent
    L1_3 = TriggerName
    L2_3 = "manageStock"
    L1_3 = L1_3(L2_3)
    L2_3 = A0_2
    L0_3(L1_3, L2_3)
  end
  L3_2.onSelect = L4_2
  L4_2 = {}
  L5_2 = _U
  L6_2 = "npcemployee_stock_adjust_remove_title"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L5_2 = _U
  L6_2 = "npcemployee_stock_adjust_remove_desc"
  L7_2 = A0_2.label
  L8_2 = A0_2.amount
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.description = L5_2
  L4_2.icon = "fas fa-minus"
  L4_2.arrow = true
  L5_2 = {}
  L5_2.args = A0_2
  L4_2.args = L5_2
  L4_2.event = "adjustStock2"
  function L5_2()
    local L0_3, L1_3, L2_3
    A0_2.status = "take"
    L0_3 = TriggerServerEvent
    L1_3 = TriggerName
    L2_3 = "manageStock"
    L1_3 = L1_3(L2_3)
    L2_3 = A0_2
    L0_3(L1_3, L2_3)
  end
  L4_2.onSelect = L5_2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L1_2.options = L2_2
  menu = L1_2
  L1_2 = OpenMenu
  L2_2 = menu
  L1_2(L2_2)
end
AdjustStock = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Config
  L1_2 = L1_2.UI
  L1_2 = L1_2.cashRegister
  if L1_2 then
    L1_2 = SetNuiFocus
    L2_2 = true
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.type = "showUI"
    L3_2 = _U
    L4_2 = "cashregister_pay_amount"
    L3_2 = L3_2(L4_2)
    L2_2.text = L3_2
    L3_2 = A0_2.price
    L2_2.amount = L3_2
    L3_2 = A0_2.args
    L3_2 = L3_2.id
    L2_2.id = L3_2
    L2_2.args = A0_2
    L1_2(L2_2)
  else
    L1_2 = {}
    L2_2 = {}
    L2_2.name = "paymentChoiseOrderFood"
    L3_2 = _U
    L4_2 = "shop_payment_choice_title"
    L3_2 = L3_2(L4_2)
    L2_2.title = L3_2
    L2_2.backMenu = "orderFoodMenu"
    L1_2.header = L2_2
    L2_2 = {}
    L1_2.options = L2_2
    menu = L1_2
    L1_2 = A0_2.args
    L1_2 = L1_2.payment
    L1_2 = L1_2.bank
    if not L1_2 then
      L1_2 = A0_2.args
      L1_2 = L1_2.payment
      L1_2 = L1_2.cash
      if not L1_2 then
        L1_2 = table
        L1_2 = L1_2.insert
        L2_2 = menu
        L2_2 = L2_2.options
        L3_2 = {}
        L4_2 = _U
        L5_2 = "shop_payment_no_method"
        L4_2 = L4_2(L5_2)
        L3_2.title = L4_2
        L3_2.icon = "fas fa-ban"
        L3_2.arrow = false
        L3_2.disabled = true
        L1_2(L2_2, L3_2)
      end
    end
    L1_2 = A0_2.args
    L1_2 = L1_2.payment
    L1_2 = L1_2.bank
    if L1_2 then
      L1_2 = table
      L1_2 = L1_2.insert
      L2_2 = menu
      L2_2 = L2_2.options
      L3_2 = {}
      L4_2 = _U
      L5_2 = "shop_payment_bank_title"
      L4_2 = L4_2(L5_2)
      L3_2.title = L4_2
      L4_2 = _U
      L5_2 = "shop_payment_bank_desc"
      L6_2 = A0_2.price
      L4_2 = L4_2(L5_2, L6_2)
      L3_2.description = L4_2
      L3_2.icon = "fas fa-bank"
      L3_2.arrow = true
      L4_2 = {}
      L4_2.args = A0_2
      L3_2.args = L4_2
      L3_2.event = "paymentChoiseOrderFood1"
      function L4_2()
        local L0_3, L1_3
        A0_2.type = "bank"
        L0_3 = ConfirmPurchaseMenuOrderFood
        L1_3 = A0_2
        L0_3(L1_3)
      end
      L3_2.onSelect = L4_2
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2.args
    L1_2 = L1_2.payment
    L1_2 = L1_2.cash
    if L1_2 then
      L1_2 = table
      L1_2 = L1_2.insert
      L2_2 = menu
      L2_2 = L2_2.options
      L3_2 = {}
      L4_2 = _U
      L5_2 = "shop_payment_cash_title"
      L4_2 = L4_2(L5_2)
      L3_2.title = L4_2
      L4_2 = _U
      L5_2 = "shop_payment_cash_desc"
      L6_2 = A0_2.price
      L4_2 = L4_2(L5_2, L6_2)
      L3_2.description = L4_2
      L3_2.icon = "money-bill"
      L3_2.arrow = true
      L4_2 = {}
      L4_2.args = A0_2
      L3_2.args = L4_2
      L3_2.event = "paymentChoiseOrderFood2"
      function L4_2()
        local L0_3, L1_3
        A0_2.type = "cash"
        L0_3 = ConfirmPurchaseMenuOrderFood
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
end
PaymentChoiseOrderFood = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.type
  if "bank" == L1_2 then
    L1_2 = _U
    L2_2 = "shop_payment_bank_title"
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = _U
  L2_2 = "shop_payment_cash_title"
  L1_2 = L1_2(L2_2)
  ::lbl_12::
  L2_2 = {}
  L3_2 = {}
  L3_2.name = "confirmPurchaseMenuOrderFood"
  L4_2 = _U
  L5_2 = "shop_menu_purchase_title"
  L6_2 = A0_2.label
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.title = L4_2
  L3_2.backMenu = "paymentChoiseOrderFood"
  L2_2.header = L3_2
  L3_2 = {}
  L4_2 = {}
  L5_2 = _U
  L6_2 = "shop_menu_purchase_confirm_title"
  L7_2 = A0_2.price
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.title = L5_2
  L5_2 = _U
  L6_2 = "shop_menu_purchase_confirm_desc"
  L7_2 = L1_2
  L8_2 = A0_2.label
  L9_2 = A0_2.amount
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L4_2.description = L5_2
  L4_2.icon = "fas fa-circle-check"
  L4_2.arrow = true
  L5_2 = {}
  L5_2.args = A0_2
  L4_2.args = L5_2
  L4_2.event = "confirmPurchaseMenuOrderFood1"
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = CallCallback
    L1_3 = TriggerName
    L2_3 = "checkUtils"
    L1_3 = L1_3(L2_3)
    function L2_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = CallCallback
      L2_4 = TriggerName
      L3_4 = "orderFoodPay"
      L2_4 = L2_4(L3_4)
      function L3_4(A0_5)
        local L1_5, L2_5
        if A0_5 then
          L1_5 = NpcEmployeeAnimation
          L2_5 = A0_2
          L1_5(L2_5)
        end
      end
      L4_4 = A0_2
      L1_4(L2_4, L3_4, L4_4)
    end
    L3_3 = {}
    L3_3.info = "checkStatus"
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
ConfirmPurchaseMenuOrderFood = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L1_2 = A0_2.args
  L1_2 = L1_2.id
  L2_2 = A0_2.args
  L2_2 = L2_2.npc
  L3_2 = A0_2.args
  L3_2 = L3_2.coords
  L4_2 = L3_2.w
  L4_2 = L4_2 + 0.0
  L5_2 = A0_2.args
  L5_2 = L5_2.hotTablePos
  L6_2 = L5_2.w
  L6_2 = L6_2 + 0.0
  L7_2 = 0
  L8_2 = 0
  L9_2 = CallCallback
  L10_2 = TriggerName
  L11_2 = "checkUtils"
  L10_2 = L10_2(L11_2)
  function L11_2()
    local L0_3, L1_3
  end
  L12_2 = {}
  L12_2.info = "changeStatus"
  L12_2.status = true
  L12_2.id = L1_2
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = TriggerServerEvent
  L10_2 = TriggerName
  L11_2 = "npcEmployee"
  L10_2 = L10_2(L11_2)
  L11_2 = {}
  L11_2.status = "preparing"
  L12_2 = A0_2.item
  L11_2.item = L12_2
  L12_2 = A0_2.amount
  L11_2.amount = L12_2
  L9_2(L10_2, L11_2)
  L9_2 = ClearPedTasksImmediately
  L10_2 = L2_2
  L9_2(L10_2)
  L9_2 = FreezeEntityPosition
  L10_2 = L2_2
  L11_2 = false
  L9_2(L10_2, L11_2)
  L9_2 = GoToCoords
  L10_2 = L2_2
  L11_2 = L5_2
  L12_2 = L6_2
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = SetEntityCoords
  L10_2 = L2_2
  L11_2 = L5_2.x
  L12_2 = L5_2.y
  L13_2 = L5_2.z
  L13_2 = L13_2 - 1
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = true
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L9_2 = Request
  L10_2 = "anim"
  L11_2 = "mini@repair"
  L9_2(L10_2, L11_2)
  L9_2 = TaskPlayAnim
  L10_2 = L2_2
  L11_2 = "mini@repair"
  L12_2 = "fixing_a_ped"
  L13_2 = 2.0
  L14_2 = 2.0
  L15_2 = 3000
  L16_2 = 1
  L17_2 = 0
  L18_2 = true
  L19_2 = true
  L20_2 = false
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L9_2 = Wait
  L10_2 = 3000
  L9_2(L10_2)
  L9_2 = ClearPedTasks
  L10_2 = L2_2
  L9_2(L10_2)
  L9_2 = Request
  L10_2 = "anim"
  L11_2 = "anim@heists@box_carry@"
  L9_2(L10_2, L11_2)
  L9_2 = TaskPlayAnim
  L10_2 = L2_2
  L11_2 = "anim@heists@box_carry@"
  L12_2 = "idle"
  L13_2 = 2.0
  L14_2 = 2.0
  L15_2 = -1
  L16_2 = 52
  L17_2 = 0
  L18_2 = true
  L19_2 = true
  L20_2 = false
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L9_2 = CreateObject
  L10_2 = GetHashKey
  L11_2 = "prop_food_bs_tray_02"
  L10_2 = L10_2(L11_2)
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L14_2 = true
  L15_2 = true
  L16_2 = true
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = AttachEntityToEntity
  L11_2 = L9_2
  L12_2 = L2_2
  L13_2 = GetPedBoneIndex
  L14_2 = L2_2
  L15_2 = 28422
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = 0.01
  L15_2 = -0.04
  L16_2 = -0.139
  L17_2 = 20.0000007
  L18_2 = 0.0
  L19_2 = 0.0
  L20_2 = true
  L21_2 = true
  L22_2 = false
  L23_2 = true
  L24_2 = 1
  L25_2 = true
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L10_2 = GoToCoords
  L11_2 = L2_2
  L12_2 = L3_2
  L13_2 = L4_2
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = SetEntityCoords
  L11_2 = L2_2
  L12_2 = L3_2.x
  L13_2 = L3_2.y
  L14_2 = L3_2.z
  L14_2 = L14_2 - 1
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L18_2 = true
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = ClearPedTasks
  L11_2 = L2_2
  L10_2(L11_2)
  L10_2 = DeleteEntity
  L11_2 = L9_2
  L10_2(L11_2)
  L10_2 = FreezeEntityPosition
  L11_2 = L2_2
  L12_2 = true
  L10_2(L11_2, L12_2)
  L10_2 = TaskStartScenarioInPlace
  L11_2 = L2_2
  L12_2 = "WORLD_HUMAN_STAND_MOBILE"
  L13_2 = 0
  L14_2 = true
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = TriggerServerEvent
  L11_2 = TriggerName
  L12_2 = "npcEmployee"
  L11_2 = L11_2(L12_2)
  L12_2 = {}
  L12_2.status = "finished"
  L10_2(L11_2, L12_2)
  L10_2 = TriggerEvent
  L11_2 = TriggerName
  L12_2 = "notify"
  L11_2 = L11_2(L12_2)
  L12_2 = _U
  L13_2 = "npcemployee_notify_title"
  L12_2 = L12_2(L13_2)
  L13_2 = _U
  L14_2 = "npcemployee_order_ready"
  L13_2 = L13_2(L14_2)
  L14_2 = Config
  L14_2 = L14_2.NotifyType
  L14_2 = L14_2.success
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = CallCallback
  L11_2 = TriggerName
  L12_2 = "checkUtils"
  L11_2 = L11_2(L12_2)
  function L12_2()
    local L0_3, L1_3
  end
  L13_2 = {}
  L13_2.info = "changeStatus"
  L13_2.status = false
  L13_2.id = L1_2
  L10_2(L11_2, L12_2, L13_2)
end
NpcEmployeeAnimation = L0_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "sendEmployeeNotif"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "sendEmployeeNotif"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = RestaurantLocation
  L3_2 = L3_2.CashRegisters
  L3_2 = L3_2.Registers
  L4_2 = A0_2.cashRegisterId
  L5_2 = A0_2.amountPaid
  L6_2 = pairs
  L7_2 = L3_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = vec3
    L13_2 = L11_2.coords
    L13_2 = L13_2.x
    L14_2 = L11_2.coords
    L14_2 = L14_2.y
    L15_2 = L11_2.coords
    L15_2 = L15_2.z
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L12_2 = L2_2 - L12_2
    L12_2 = #L12_2
    L13_2 = 8.5
    if L12_2 <= L13_2 then
      L13_2 = TriggerEvent
      L14_2 = TriggerName
      L15_2 = "notify"
      L14_2 = L14_2(L15_2)
      L15_2 = false
      L16_2 = _U
      L17_2 = "cashregister_paid_employee_message"
      L18_2 = L5_2
      L19_2 = L4_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L17_2 = Config
      L17_2 = L17_2.NotifyType
      L17_2 = L17_2.info
      L13_2(L14_2, L15_2, L16_2, L17_2)
      break
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "useNpcEmployee1"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "useNpcEmployee1"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.args
  L2_2 = CallCallback
  L3_2 = TriggerName
  L4_2 = "checkPlayerDutyCount"
  L3_2 = L3_2(L4_2)
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L1_2.args
    L1_3 = L1_3.playersOnDuty
    if A0_3 > L1_3 then
      L1_3 = TriggerEvent
      L2_3 = TriggerName
      L3_3 = "notify"
      L2_3 = L2_3(L3_3)
      L3_3 = _U
      L4_3 = "npcemployee_notify_title"
      L3_3 = L3_3(L4_3)
      L4_3 = _U
      L5_3 = "npcemployee_employees_on_duty"
      L4_3 = L4_3(L5_3)
      L5_3 = Config
      L5_3 = L5_3.NotifyType
      L5_3 = L5_3.error
      return L1_3(L2_3, L3_3, L4_3, L5_3)
    end
    L1_3 = OrderFood
    L2_3 = L1_2
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "useNpcEmployee2"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "useNpcEmployee2"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = Request
  L3_2 = "anim"
  L4_2 = "random@domestic"
  L2_2(L3_2, L4_2)
  L2_2 = TaskPlayAnim
  L3_2 = L1_2
  L4_2 = "random@domestic"
  L5_2 = "pickup_low"
  L6_2 = 2.0
  L7_2 = 2.0
  L8_2 = 450
  L9_2 = 52
  L10_2 = 0
  L11_2 = true
  L12_2 = true
  L13_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2 = ProgressBars
  L3_2 = _U
  L4_2 = "npcemployee_taking_food"
  L3_2 = L3_2(L4_2)
  L4_2 = 450
  L2_2(L3_2, L4_2)
  L2_2 = ClearPedTasks
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = TriggerName
  L4_2 = "npcEmployee"
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L4_2.status = "giveFood"
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "useNpcEmployee3"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "useNpcEmployee3"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.args
  L2_2 = OrderFood
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "orderFoodMenu1"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "orderFoodMenu1"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.args
  L2_2 = L1_2.job
  if L2_2 then
    L2_2 = A0_2.job
    L1_2.job = L2_2
    L2_2 = _U
    L3_2 = "npcemployee_stock_title"
    L4_2 = JobInfo
    L4_2 = L4_2.label
    L2_2 = L2_2(L3_2, L4_2)
    L1_2.menuLabel = L2_2
    L2_2 = _U
    L3_2 = "npcemployee_stock_desc"
    L2_2 = L2_2(L3_2)
    L1_2.menuDesc = L2_2
  else
    L2_2 = _U
    L3_2 = "npcemployee_order"
    L4_2 = JobInfo
    L4_2 = L4_2.label
    L2_2 = L2_2(L3_2, L4_2)
    L1_2.menuLabel = L2_2
    L2_2 = _U
    L3_2 = "shop_amount_to_buy"
    L2_2 = L2_2(L3_2)
    L1_2.menuDesc = L2_2
  end
  L2_2 = A0_2.item
  L1_2.item = L2_2
  L2_2 = A0_2.price
  L1_2.price = L2_2
  L2_2 = A0_2.label
  L1_2.label = L2_2
  L2_2 = A0_2.itemStock
  L1_2.itemStock = L2_2
  L2_2 = SetItemAmountOrderFood
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "orderFoodMenu2"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "orderFoodMenu2"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.args
  L2_2 = _U
  L3_2 = "npcemployee_order"
  L4_2 = JobInfo
  L4_2 = L4_2.label
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.menuLabel = L2_2
  L2_2 = _U
  L3_2 = "shop_amount_to_buy"
  L2_2 = L2_2(L3_2)
  L1_2.menuDesc = L2_2
  L2_2 = A0_2.item
  L1_2.item = L2_2
  L2_2 = A0_2.price
  L1_2.price = L2_2
  L2_2 = A0_2.label
  L1_2.label = L2_2
  L2_2 = SetItemAmountOrderFood
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "paymentChoiseOrderFood1"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "paymentChoiseOrderFood1"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.type = "bank"
  L1_2 = A0_2.args
  L2_2 = ConfirmPurchaseMenuOrderFood
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "paymentChoiseOrderFood2"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "paymentChoiseOrderFood2"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.type = "cash"
  L1_2 = A0_2.args
  L2_2 = ConfirmPurchaseMenuOrderFood
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "confirmPurchaseMenuOrderFood1"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "confirmPurchaseMenuOrderFood1"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.args
  L2_2 = CallCallback
  L3_2 = TriggerName
  L4_2 = "checkUtils"
  L3_2 = L3_2(L4_2)
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = CallCallback
    L2_3 = TriggerName
    L3_3 = "orderFoodPay"
    L2_3 = L2_3(L3_3)
    function L3_3(A0_4)
      local L1_4, L2_4
      if A0_4 then
        L1_4 = NpcEmployeeAnimation
        L2_4 = L1_2
        L1_4(L2_4)
      end
    end
    L4_3 = L1_2
    L1_3(L2_3, L3_3, L4_3)
  end
  L5_2 = {}
  L5_2.info = "checkStatus"
  L6_2 = L1_2.args
  L6_2 = L6_2.id
  L5_2.id = L6_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "adjustStock1"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "adjustStock1"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.args
  L1_2.status = "add"
  L2_2 = TriggerServerEvent
  L3_2 = TriggerName
  L4_2 = "manageStock"
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "adjustStock2"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "adjustStock2"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.args
  L1_2.status = "take"
  L2_2 = TriggerServerEvent
  L3_2 = TriggerName
  L4_2 = "manageStock"
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
