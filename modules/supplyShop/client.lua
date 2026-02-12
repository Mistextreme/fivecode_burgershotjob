local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "useShop"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "useShop"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = MainCheck
  L2_2 = A0_2.args
  L2_2 = L2_2.jobName
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = {}
    L2_2 = {}
    L2_2.name = "npcShop"
    L3_2 = _U
    L4_2 = "shop_menu_title"
    L5_2 = JobInfo
    L5_2 = L5_2.label
    L3_2 = L3_2(L4_2, L5_2)
    L2_2.title = L3_2
    L1_2.header = L2_2
    L2_2 = {}
    L1_2.options = L2_2
    menu = L1_2
    L1_2 = pairs
    L2_2 = A0_2.args
    L2_2 = L2_2.items
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = menu
      L8_2 = L8_2.options
      L9_2 = {}
      L10_2 = L6_2.label
      L9_2.title = L10_2
      L10_2 = _U
      L11_2 = "shop_menu_purchase_desc"
      L12_2 = L6_2.label
      L13_2 = L6_2.price
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L9_2.description = L10_2
      L10_2 = "nui://"
      L11_2 = Images
      L12_2 = L6_2.icon
      L10_2 = L10_2 .. L11_2 .. L12_2
      L9_2.icon = L10_2
      L10_2 = "nui://"
      L11_2 = Images
      L12_2 = L6_2.icon
      L10_2 = L10_2 .. L11_2 .. L12_2
      L9_2.image = L10_2
      L9_2.arrow = true
      L10_2 = {}
      L10_2.item = L6_2
      L10_2.args = A0_2
      L9_2.args = L10_2
      L9_2.event = "npcShop1"
      function L10_2()
        local L0_3, L1_3, L2_3
        L0_3 = SetItemAmount
        L1_3 = L6_2
        L2_3 = A0_2
        L0_3(L1_3, L2_3)
      end
      L9_2.onSelect = L10_2
      L7_2(L8_2, L9_2)
    end
    L1_2 = OpenMenu
    L2_2 = menu
    L1_2(L2_2)
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = OpenDialogMenu
  L3_2 = {}
  L3_2.type = "burgershotSupplyShop"
  L4_2 = _U
  L5_2 = "shop_menu_title"
  L6_2 = JobInfo
  L6_2 = L6_2.label
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.label = L4_2
  L3_2.item = A0_2
  L3_2.args = A1_2
  L4_2 = {}
  L5_2 = {}
  L5_2.type = "number"
  L6_2 = _U
  L7_2 = "shop_amount_to_buy"
  L6_2 = L6_2(L7_2)
  L5_2.label = L6_2
  L5_2.icon = "fas fa-box"
  L5_2.required = true
  L4_2[1] = L5_2
  L3_2.menu = L4_2
  L2_2 = L2_2(L3_2)
  L3_2 = DialogMenu
  if "esx" == L3_2 then
    return
  end
  if nil ~= L2_2 then
    L3_2 = L2_2.value1
    if L3_2 then
      goto lbl_37
    end
  end
  do return end
  ::lbl_37::
  L3_2 = tonumber
  L4_2 = L2_2.value1
  L3_2 = L3_2(L4_2)
  L2_2.value1 = L3_2
  L3_2 = L2_2.value1
  if L3_2 <= 0 then
    L3_2 = TriggerEvent
    L4_2 = TriggerName
    L5_2 = "notify"
    L4_2 = L4_2(L5_2)
    L5_2 = false
    L6_2 = _U
    L7_2 = "shop_amount_too_low"
    L6_2 = L6_2(L7_2)
    L7_2 = Config
    L7_2 = L7_2.NotifyType
    L7_2 = L7_2.error
    return L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = DialogMenu
  if "qb" == L3_2 then
    L3_2 = L2_2.menu
    A1_2 = L3_2.args
    L3_2 = L2_2.menu
    A0_2 = L3_2.item
  end
  L3_2 = L2_2.value1
  A0_2.amount = L3_2
  L3_2 = A0_2.price
  L4_2 = L2_2.value1
  L3_2 = L3_2 * L4_2
  A0_2.price = L3_2
  L3_2 = PaymentChoise
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
SetItemAmount = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = {}
  L3_2.name = "paymentChoise"
  L4_2 = _U
  L5_2 = "shop_payment_choice_title"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L3_2.backMenu = "npcShop"
  L2_2.header = L3_2
  L3_2 = {}
  L2_2.options = L3_2
  menu = L2_2
  L2_2 = A1_2.args
  L2_2 = L2_2.payment
  L2_2 = L2_2.bank
  if not L2_2 then
    L2_2 = A1_2.args
    L2_2 = L2_2.payment
    L2_2 = L2_2.cash
    if not L2_2 then
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = menu
      L3_2 = L3_2.options
      L4_2 = {}
      L5_2 = _U
      L6_2 = "shop_payment_no_method"
      L5_2 = L5_2(L6_2)
      L4_2.title = L5_2
      L4_2.icon = "fas fa-ban"
      L4_2.arrow = false
      L4_2.disabled = true
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A1_2.args
  L2_2 = L2_2.payment
  L2_2 = L2_2.bank
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = menu
    L3_2 = L3_2.options
    L4_2 = {}
    L5_2 = _U
    L6_2 = "shop_payment_bank_title"
    L5_2 = L5_2(L6_2)
    L4_2.title = L5_2
    L5_2 = _U
    L6_2 = "shop_payment_bank_desc"
    L7_2 = A0_2.price
    L5_2 = L5_2(L6_2, L7_2)
    L4_2.description = L5_2
    L4_2.icon = "fas fa-bank"
    L4_2.arrow = true
    L5_2 = {}
    L5_2.item = A0_2
    L5_2.args = A1_2
    L4_2.args = L5_2
    L4_2.event = "paymentChoise1"
    function L5_2()
      local L0_3, L1_3, L2_3
      A1_2.type = "bank"
      L0_3 = ConfirmPurchaseMenu
      L1_3 = A0_2
      L2_3 = A1_2
      L0_3(L1_3, L2_3)
    end
    L4_2.onSelect = L5_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A1_2.args
  L2_2 = L2_2.payment
  L2_2 = L2_2.cash
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = menu
    L3_2 = L3_2.options
    L4_2 = {}
    L5_2 = _U
    L6_2 = "shop_payment_cash_title"
    L5_2 = L5_2(L6_2)
    L4_2.title = L5_2
    L5_2 = _U
    L6_2 = "shop_payment_cash_desc"
    L7_2 = A0_2.price
    L5_2 = L5_2(L6_2, L7_2)
    L4_2.description = L5_2
    L4_2.icon = "money-bill"
    L4_2.arrow = true
    L5_2 = {}
    L5_2.item = A0_2
    L5_2.args = A1_2
    L4_2.args = L5_2
    L4_2.event = "paymentChoise2"
    function L5_2()
      local L0_3, L1_3, L2_3
      A1_2.type = "cash"
      L0_3 = ConfirmPurchaseMenu
      L1_3 = A0_2
      L2_3 = A1_2
      L0_3(L1_3, L2_3)
    end
    L4_2.onSelect = L5_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = OpenMenu
  L3_2 = menu
  L2_2(L3_2)
end
PaymentChoise = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.type
  if "bank" == L2_2 then
    L2_2 = "Bank"
    if L2_2 then
      goto lbl_8
    end
  end
  L2_2 = "Cash"
  ::lbl_8::
  L3_2 = {}
  L4_2 = {}
  L4_2.name = "confirmPurchaseMenu"
  L5_2 = _U
  L6_2 = "shop_menu_purchase_title"
  L7_2 = A1_2.label
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.title = L5_2
  L4_2.backMenu = "paymentChoise"
  L3_2.header = L4_2
  L4_2 = {}
  L5_2 = {}
  L6_2 = _U
  L7_2 = "shop_menu_purchase_confirm_title"
  L8_2 = A0_2.price
  L6_2 = L6_2(L7_2, L8_2)
  L5_2.title = L6_2
  L6_2 = _U
  L7_2 = "shop_menu_purchase_confirm_desc"
  L8_2 = L2_2
  L9_2 = A0_2.label
  L10_2 = A0_2.amount
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L5_2.description = L6_2
  L5_2.icon = "fas fa-circle-check"
  L5_2.arrow = true
  L6_2 = {}
  L6_2.item = A0_2
  L6_2.args = A1_2
  L5_2.args = L6_2
  L5_2.event = "confirmPurchaseMenu1"
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = CallCallback
    L1_3 = TriggerName
    L2_3 = "shopPay"
    L1_3 = L1_3(L2_3)
    function L2_3()
      local L0_4, L1_4
    end
    L3_3 = A0_2
    L4_3 = A1_2
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L5_2.onSelect = L6_2
  L4_2[1] = L5_2
  L3_2.options = L4_2
  menu = L3_2
  L3_2 = OpenMenu
  L4_2 = menu
  L3_2(L4_2)
end
ConfirmPurchaseMenu = L0_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "npcShop1"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "npcShop1"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.item
  L2_2 = A0_2.args
  L3_2 = SetItemAmount
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "paymentChoise1"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "paymentChoise1"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.item
  L2_2 = A0_2.args
  L2_2.type = "bank"
  L3_2 = ConfirmPurchaseMenu
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "paymentChoise2"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "paymentChoise2"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.item
  L2_2 = A0_2.args
  L2_2.type = "cash"
  L3_2 = ConfirmPurchaseMenu
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "confirmPurchaseMenu1"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "confirmPurchaseMenu1"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.item
  L2_2 = A0_2.args
  L3_2 = CallCallback
  L4_2 = TriggerName
  L5_2 = "shopPay"
  L4_2 = L4_2(L5_2)
  function L5_2()
    local L0_3, L1_3
  end
  L6_2 = L1_2
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
