local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "useDog"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "useDog"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CallCallback
  L2_2 = TriggerName
  L3_2 = "checkUtils"
  L2_2 = L2_2(L3_2)
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if not A0_3 then
      L1_3 = DogAnimation
      L2_3 = A0_2
      L1_3(L2_3)
    else
      L1_3 = TriggerEvent
      L2_3 = TriggerName
      L3_3 = "notify"
      L2_3 = L2_3(L3_3)
      L3_3 = false
      L4_3 = _U
      L5_3 = "dog_occupied"
      L4_3 = L4_3(L5_3)
      L5_3 = Config
      L5_3 = L5_3.NotifyType
      L5_3 = L5_3.error
      return L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  L4_2 = {}
  L4_2.info = "checkStatus"
  L5_2 = A0_2.args
  L5_2 = L5_2.id
  L4_2.id = L5_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = A0_2.args
  L2_2 = L2_2.pedPos
  L3_2 = A0_2.args
  L3_2 = L3_2.pedPos
  L3_2 = L3_2.w
  L4_2 = A0_2.args
  L4_2 = L4_2.removeStress
  L5_2 = A0_2.args
  L5_2 = L5_2.id
  L6_2 = 0
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
  L10_2.id = L5_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = DisableMovementLoop
  L7_2()
  L7_2 = GoToCoords
  L8_2 = L1_2
  L9_2 = L2_2
  L10_2 = L3_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = FreezeEntityPosition
  L8_2 = L1_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  DisableMovement = false
  L7_2 = Request
  L8_2 = "anim"
  L9_2 = "creatures@rottweiler@tricks@"
  L7_2(L8_2, L9_2)
  L7_2 = TaskPlayAnim
  L8_2 = L1_2
  L9_2 = "creatures@rottweiler@tricks@"
  L10_2 = "petting_franklin"
  L11_2 = 2.0
  L12_2 = 2.0
  L13_2 = 3500
  L14_2 = 1
  L15_2 = 0
  L16_2 = true
  L17_2 = true
  L18_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = ProgressBars
  L8_2 = _U
  L9_2 = "dog_progressbar_petting"
  L8_2 = L8_2(L9_2)
  L9_2 = 3500
  L7_2(L8_2, L9_2)
  L7_2 = ClearPedTasks
  L8_2 = L1_2
  L7_2(L8_2)
  L7_2 = ClearProps
  L7_2()
  L7_2 = CallCallback
  L8_2 = TriggerName
  L9_2 = "checkUtils"
  L8_2 = L8_2(L9_2)
  function L9_2()
    local L0_3, L1_3
  end
  L10_2 = {}
  L10_2.info = "changeStatus"
  L10_2.status = false
  L10_2.id = L5_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = FreezeEntityPosition
  L8_2 = L1_2
  L9_2 = false
  L7_2(L8_2, L9_2)
  if L4_2 then
    L7_2 = RemovePlayerStress
    L7_2()
  end
  Busy = false
end
DogAnimation = L0_1
