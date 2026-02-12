local L0_1, L1_1, L2_1
L0_1 = {}
PlayersFood = L0_1
L0_1 = {}
PlayerFoodItem = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Config
  L3_2 = L3_2.NpcEmployeeStock
  if not L3_2 then
    L3_2 = A2_2
    L4_2 = true
    return L3_2(L4_2)
  end
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.fetchScalar
  L4_2 = [[
        SELECT amount 
        FROM burgershot_stock 
        WHERE item = ?
    ]]
  L5_2 = {}
  L6_2 = A0_2
  L5_2[1] = L6_2
  function L6_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A1_2
      if A0_3 >= L1_3 then
        L1_3 = A2_2
        L2_3 = true
        L1_3(L2_3)
    end
    else
      L1_3 = A2_2
      L2_3 = false
      L1_3(L2_3)
    end
  end
  L3_2(L4_2, L5_2, L6_2)
end
CheckStock = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Config
  L3_2 = L3_2.NpcEmployeeStock
  if not L3_2 then
    return
  end
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.fetchScalar
  L4_2 = [[
        SELECT amount 
        FROM burgershot_stock 
        WHERE item = ?
    ]]
  L5_2 = {}
  L6_2 = A0_2
  L5_2[1] = L6_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    if not A0_3 then
      L1_3 = MySQL
      L1_3 = L1_3.Async
      L1_3 = L1_3.execute
      L2_3 = [[
                INSERT INTO burgershot_stock (item, amount) 
                VALUES (?, ?)
            ]]
      L3_3 = {}
      L4_3 = A0_2
      L5_3 = A1_2
      L3_3[1] = L4_3
      L3_3[2] = L5_3
      L1_3(L2_3, L3_3)
      L1_3 = Debug
      L2_3 = "Item - "
      L3_3 = A0_2
      L4_3 = "("
      L5_3 = A1_2
      L6_3 = ") has been inserted into the database."
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3
      L1_3(L2_3)
    else
      L1_3 = nil
      L2_3 = nil
      L3_3 = A2_2
      if "add" == L3_3 then
        L3_3 = A1_2
        L1_3 = A0_3 + L3_3
        L2_3 = "+"
      else
        L3_3 = A1_2
        L1_3 = A0_3 - L3_3
        L2_3 = "-"
      end
      if L1_3 < 0 then
        L1_3 = 0
      end
      L3_3 = MySQL
      L3_3 = L3_3.Async
      L3_3 = L3_3.execute
      L4_3 = [[
                UPDATE burgershot_stock
                SET amount = ? 
                WHERE item = ?
            ]]
      L5_3 = {}
      L6_3 = L1_3
      L7_3 = A0_2
      L5_3[1] = L6_3
      L5_3[2] = L7_3
      L3_3(L4_3, L5_3)
      L3_3 = Debug
      L4_3 = "Item - "
      L5_3 = A0_2
      L6_3 = "("
      L7_3 = L2_3
      L8_3 = A1_2
      L9_3 = ") has been updated in the database."
      L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3
      L3_3(L4_3)
    end
  end
  L3_2(L4_2, L5_2, L6_2)
end
UpdateItemsDb = L0_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "npcEmployee"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "npcEmployee"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetIdentifier
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.status
  L3_2 = PlayerFoodItem
  L3_2 = L3_2[L1_2]
  if not L3_2 then
    L3_2 = PlayerFoodItem
    L4_2 = {}
    L3_2[L1_2] = L4_2
  end
  L3_2 = PlayersFood
  L3_2 = L3_2[L1_2]
  if not L3_2 and "preparing" == L2_2 then
    L3_2 = PlayersFood
    L3_2[L1_2] = L2_2
    L3_2 = PlayerFoodItem
    L4_2 = {}
    L5_2 = A0_2.item
    L4_2.item = L5_2
    L5_2 = A0_2.amount
    L4_2.amount = L5_2
    L3_2[L1_2] = L4_2
  else
    L3_2 = PlayersFood
    L3_2 = L3_2[L1_2]
    if "preparing" == L3_2 and "finished" == L2_2 then
      L3_2 = PlayersFood
      L3_2[L1_2] = L2_2
    else
      L3_2 = PlayersFood
      L3_2 = L3_2[L1_2]
      if "finished" == L3_2 and "giveFood" == L2_2 then
        L3_2 = CanCarry
        L4_2 = source
        L5_2 = PlayerFoodItem
        L5_2 = L5_2[L1_2]
        L5_2 = L5_2.item
        L6_2 = PlayerFoodItem
        L6_2 = L6_2[L1_2]
        L6_2 = L6_2.amount
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        if not L3_2 then
          L3_2 = Debug
          L4_2 = "No inventory space = user is not able to pick up food from npc employee."
          return L3_2(L4_2)
        end
        L3_2 = AddItem
        L4_2 = source
        L5_2 = PlayerFoodItem
        L5_2 = L5_2[L1_2]
        L5_2 = L5_2.item
        L6_2 = PlayerFoodItem
        L6_2 = L6_2[L1_2]
        L6_2 = L6_2.amount
        L7_2 = nil
        L3_2(L4_2, L5_2, L6_2, L7_2)
        L3_2 = PlayersFood
        L3_2[L1_2] = nil
        L3_2 = PlayerFoodItem
        L4_2 = {}
        L3_2[L1_2] = L4_2
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "manageStock"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "manageStock"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = GetPlayerJobInfo
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.name
  L3_2 = JobInfo
  L3_2 = L3_2.name
  if L2_2 ~= L3_2 then
    return
  end
  L2_2 = A0_2.status
  if "add" == L2_2 then
    L2_2 = GetInventoryItemCount
    L3_2 = L1_2
    L4_2 = A0_2.item
    L5_2 = nil
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2.amount
    if L2_2 < L3_2 then
      L2_2 = TriggerClientEvent
      L3_2 = TriggerName
      L4_2 = "notify"
      L3_2 = L3_2(L4_2)
      L4_2 = L1_2
      L5_2 = false
      L6_2 = _U
      L7_2 = "npcemployee_stock_not_enough"
      L8_2 = A0_2.label
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = Config
      L7_2 = L7_2.NotifyType
      L7_2 = L7_2.error
      return L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
    L2_2 = RemoveItem
    L3_2 = L1_2
    L4_2 = A0_2.item
    L5_2 = A0_2.amount
    L6_2 = nil
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = UpdateItemsDb
    L3_2 = A0_2.item
    L4_2 = A0_2.amount
    L5_2 = "add"
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = CheckStock
    L3_2 = A0_2.item
    L4_2 = A0_2.amount
    function L5_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
      if A0_3 then
        L1_3 = CanCarry
        L2_3 = L1_2
        L3_3 = A0_2.item
        L4_3 = A0_2.amount
        L1_3 = L1_3(L2_3, L3_3, L4_3)
        if not L1_3 then
          L1_3 = Debug
          L2_3 = "No inventory space = user is not able to take stock from npc employee."
          return L1_3(L2_3)
        end
        L1_3 = AddItem
        L2_3 = L1_2
        L3_3 = A0_2.item
        L4_3 = A0_2.amount
        L5_3 = nil
        L1_3(L2_3, L3_3, L4_3, L5_3)
        L1_3 = UpdateItemsDb
        L2_3 = A0_2.item
        L3_3 = A0_2.amount
        L4_3 = "remove"
        L1_3(L2_3, L3_3, L4_3)
      else
        L1_3 = TriggerClientEvent
        L2_3 = TriggerName
        L3_3 = "notify"
        L2_3 = L2_3(L3_3)
        L3_3 = L1_2
        L4_3 = false
        L5_3 = _U
        L6_3 = "npcemployee_stock_not_enough_storage"
        L7_3 = A0_2.label
        L5_3 = L5_3(L6_3, L7_3)
        L6_3 = Config
        L6_3 = L6_3.NotifyType
        L6_3 = L6_3.error
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      end
    end
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCallback
L1_1 = TriggerName
L2_1 = "hasAnOrder"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetIdentifier
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2
  L4_2 = PlayersFood
  L4_2 = L4_2[L2_2]
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCallback
L1_1 = TriggerName
L2_1 = "orderFoodPay"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = GetIdentifier
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetMoney
  L5_2 = A0_2
  L6_2 = A2_2.type
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A2_2.price
  if L4_2 <= L5_2 then
    L4_2 = A1_2
    L5_2 = false
    L4_2 = L4_2(L5_2)
    L5_2 = TriggerClientEvent
    L6_2 = TriggerName
    L7_2 = "notify"
    L6_2 = L6_2(L7_2)
    L7_2 = A0_2
    L8_2 = false
    L9_2 = _U
    L10_2 = "not_enough_money"
    L11_2 = A2_2.price
    L12_2 = GetMoney
    L13_2 = A0_2
    L14_2 = A2_2.type
    L12_2 = L12_2(L13_2, L14_2)
    L11_2 = L11_2 - L12_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = Config
    L10_2 = L10_2.NotifyType
    L10_2 = L10_2.error
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    return L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  end
  L4_2 = CheckStock
  L5_2 = A2_2.item
  L6_2 = A2_2.amount
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    if A0_3 then
      L1_3 = UpdateItemsDb
      L2_3 = A2_2.item
      L3_3 = A2_2.amount
      L4_3 = "remove"
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = RemoveMoney
      L2_3 = A0_2
      L3_3 = A2_2.type
      L4_3 = A2_2.price
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = AddMoneyToSociety
      L2_3 = JobInfo
      L2_3 = L2_3.society
      L2_3 = L2_3.name
      L3_3 = L2_3
      L2_3 = L2_3.lower
      L2_3 = L2_3(L3_3)
      L3_3 = A2_2.price
      L1_3(L2_3, L3_3)
      L1_3 = DiscordLogs
      L2_3 = A0_2
      L3_3 = {}
      L4_3 = JobInfo
      L4_3 = L4_3.society
      L4_3 = L4_3.name
      L5_3 = L4_3
      L4_3 = L4_3.lower
      L4_3 = L4_3(L5_3)
      L3_3.societyName = L4_3
      L4_3 = A2_2.price
      L3_3.amount = L4_3
      L4_3 = "cashRegister"
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = TriggerClientEvent
      L2_3 = TriggerName
      L3_3 = "notify"
      L2_3 = L2_3(L3_3)
      L3_3 = A0_2
      L4_3 = false
      L5_3 = _U
      L6_3 = "shop_purchased"
      L7_3 = A2_2.label
      L8_3 = A2_2.amount
      L9_3 = A2_2.price
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
      L6_3 = Config
      L6_3 = L6_3.NotifyType
      L6_3 = L6_3.success
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L1_3 = TriggerClientEvent
      L2_3 = TriggerName
      L3_3 = "playCustomSound"
      L2_3 = L2_3(L3_3)
      L3_3 = A0_2
      L4_3 = "cash-register-purchase"
      L5_3 = 1250
      L6_3 = Config
      L6_3 = L6_3.CustomSoundsVolume
      L6_3 = L6_3.cash_register
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L1_3 = A1_2
      L2_3 = true
      L1_3(L2_3)
    else
      L1_3 = TriggerClientEvent
      L2_3 = TriggerName
      L3_3 = "notify"
      L2_3 = L2_3(L3_3)
      L3_3 = A0_2
      L4_3 = false
      L5_3 = _U
      L6_3 = "npcemployee_stock_gone"
      L5_3 = L5_3(L6_3)
      L6_3 = Config
      L6_3 = L6_3.NotifyType
      L6_3 = L6_3.error
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L1_3 = A1_2
      L2_3 = false
      L1_3(L2_3)
    end
  end
  L4_2(L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCallback
L1_1 = TriggerName
L2_1 = "getStock"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.fetchAll
  L4_2 = [[
 
        SELECT * FROM burgershot_stock
    ]]
  L5_2 = {}
  function L6_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = A0_3
      L1_3(L2_3)
    end
  end
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
