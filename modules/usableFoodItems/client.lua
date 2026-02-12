local L0_1, L1_1, L2_1, L3_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = pairs
  L3_2 = FoodStatus
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if A0_2 == L6_2 then
      L1_2 = L7_2
      break
    end
  end
  return L1_2
end
L1_1 = RegisterNetEvent
L2_1 = TriggerName
L3_1 = "useFoodItem"
L2_1, L3_1 = L2_1(L3_1)
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = TriggerName
L3_1 = "useFoodItem"
L2_1 = L2_1(L3_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = L0_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.food
  L2_2 = L2_2.useTime
  L3_2 = L1_2.anim
  L4_2 = L1_2.prop
  L5_2 = L1_2.giveItem
  L6_2 = nil
  L7_2 = nil
  L8_2 = nil
  L9_2 = L1_2.food
  L9_2 = L9_2.hunger
  if L9_2 then
    L8_2 = "hunger"
    L9_2 = L1_2.food
    L7_2 = L9_2.hunger
    L9_2 = _U
    L10_2 = "usableitem_progressbar_eating"
    L9_2 = L9_2(L10_2)
    L6_2 = L9_2
  else
    L8_2 = "thirst"
    L9_2 = L1_2.food
    L7_2 = L9_2.thirst
    L9_2 = _U
    L10_2 = "usableitem_progressbar_drinking"
    L9_2 = L9_2(L10_2)
    L6_2 = L9_2
  end
  L9_2 = L1_2.food
  L9_2 = L9_2.stress
  if L9_2 then
    L9_2 = RemovePlayerStress
    L10_2 = L1_2.food
    L10_2 = L10_2.stress
    L9_2(L10_2)
  end
  L9_2 = TriggerServerEvent
  L10_2 = TriggerName
  L11_2 = "removeFoodItem"
  L10_2 = L10_2(L11_2)
  L11_2 = {}
  L11_2.item = A0_2
  L11_2.giveItem = L5_2
  L9_2(L10_2, L11_2)
  L9_2 = UsingFoodItemAnimation
  L10_2 = L8_2
  L11_2 = L2_2
  L12_2 = L6_2
  L13_2 = L7_2
  L14_2 = L3_2
  L15_2 = L4_2.name
  L16_2 = L4_2.pos
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = Request
  L9_2 = "anim"
  L10_2 = A4_2.anim
  L8_2(L9_2, L10_2)
  L8_2 = TaskPlayAnim
  L9_2 = L7_2
  L10_2 = A4_2.anim
  L11_2 = A4_2.disc
  L12_2 = 2.0
  L13_2 = 2.0
  L14_2 = A1_2
  L15_2 = 51
  L16_2 = 0
  L17_2 = true
  L18_2 = true
  L19_2 = false
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L8_2 = SpawnProp
  L9_2 = A5_2
  L10_2 = 18905
  L11_2 = A6_2.xPos
  L12_2 = A6_2.yPos
  L13_2 = A6_2.zPos
  L14_2 = A6_2.xRot
  L15_2 = A6_2.yRot
  L16_2 = A6_2.zRot
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = A4_2.fork
  if L8_2 then
    L8_2 = SpawnProp
    L9_2 = "prop_cs_fork"
    L10_2 = 57005
    L11_2 = 0.15
    L12_2 = 0.07
    L13_2 = -0.02
    L14_2 = -36.0
    L15_2 = -79.0
    L16_2 = -1.0
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
  L8_2 = ProgressBars
  L9_2 = A2_2
  L10_2 = A1_2
  L8_2(L9_2, L10_2)
  L8_2 = UpdatePlayerFoodStatus
  L9_2 = A0_2
  L10_2 = A3_2
  L8_2(L9_2, L10_2)
  L8_2 = ClearProps
  L8_2()
end
UsingFoodItemAnimation = L1_1
