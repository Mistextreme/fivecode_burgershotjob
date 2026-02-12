local L0_1, L1_1, L2_1, L3_1, L4_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A0_2 then
    A0_2 = 0
  end
  L1_2 = GetGameplayCamRot
  L1_2 = L1_2()
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = L1_2.z
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.rad
  L4_2 = L1_2.x
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.sin
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L4_2 = -L4_2
  L5_2 = math
  L5_2 = L5_2.abs
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L3_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = L4_2 * L5_2
  L4_2 = L4_2 * A0_2
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = math
  L6_2 = L6_2.abs
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = L3_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L5_2 = L5_2 * L6_2
  L5_2 = L5_2 * A0_2
  L6_2 = math
  L6_2 = L6_2.sin
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 + 2
  L7_2 = vector3
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = L6_2
  return L7_2(L8_2, L9_2, L10_2)
end
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  Busy = true
  L3_2 = FreezeEntityPosition
  L4_2 = A0_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = CreateObject
  L4_2 = GetHashKey
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = true
  L9_2 = true
  L10_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = NetworkFadeInEntity
  L5_2 = L3_2
  L6_2 = false
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = GetNetworkIdFromEntity
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = Request
  L6_2 = "anim"
  L7_2 = "anim@mp_fireworks"
  L5_2(L6_2, L7_2)
  L5_2 = SetNetworkIdCanMigrate
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityAsMissionEntity
  L6_2 = L3_2
  L7_2 = true
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = AttachEntityToEntity
  L6_2 = L3_2
  L7_2 = A0_2
  L8_2 = GetPedBoneIndex
  L9_2 = A0_2
  L10_2 = 64016
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = 0.095
  L10_2 = -0.05
  L11_2 = 0.08
  L12_2 = 280.0
  L13_2 = 20.0
  L14_2 = 0.0
  L15_2 = true
  L16_2 = true
  L17_2 = false
  L18_2 = true
  L19_2 = 1
  L20_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L5_2 = TaskPlayAnim
  L6_2 = A0_2
  L7_2 = "anim@mp_fireworks"
  L8_2 = "place_firework_3_box"
  L9_2 = 2.0
  L10_2 = 2.0
  L11_2 = -1
  L12_2 = 52
  L13_2 = 0
  L14_2 = true
  L15_2 = true
  L16_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = ProgressBars
  L6_2 = _U
  L7_2 = "trays_placing"
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = 2250
  L5_2(L6_2, L7_2)
  L5_2 = NetworkFadeOutEntity
  L6_2 = L3_2
  L7_2 = false
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Wait
  L6_2 = 250
  L5_2(L6_2)
  L5_2 = DeleteObject
  L6_2 = L3_2
  L5_2(L6_2)
  L5_2 = FreezeEntityPosition
  L6_2 = A0_2
  L7_2 = false
  L5_2(L6_2, L7_2)
  Busy = false
end
L2_1 = RegisterNetEvent
L3_1 = TriggerName
L4_1 = "placeTray"
L3_1, L4_1 = L3_1(L4_1)
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = TriggerName
L4_1 = "placeTray"
L3_1 = L3_1(L4_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = Busy
  if not L2_2 then
    L2_2 = IsPedSittingInAnyVehicle
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = IsPedSwimming
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = IsPedDeadOrDying
        L3_2 = L1_2
        L4_2 = 1
        L2_2 = L2_2(L3_2, L4_2)
        if not L2_2 then
          L2_2 = IsPedSprinting
          L3_2 = L1_2
          L2_2 = L2_2(L3_2)
          if not L2_2 then
            goto lbl_40
          end
        end
      end
    end
  end
  L2_2 = TriggerEvent
  L3_2 = TriggerName
  L4_2 = "notify"
  L3_2 = L3_2(L4_2)
  L4_2 = false
  L5_2 = _U
  L6_2 = "busy"
  L5_2 = L5_2(L6_2)
  L6_2 = Config
  L6_2 = L6_2.NotifyType
  L6_2 = L6_2.error
  do return L2_2(L3_2, L4_2, L5_2, L6_2) end
  ::lbl_40::
  if "burgershotfoodtray" == A0_2 then
    L2_2 = "prop_food_bs_tray_02"
    if L2_2 then
      goto lbl_46
    end
  end
  L2_2 = "prop_food_bs_tray_01"
  ::lbl_46::
  L3_2 = CreateGhostObject
  L4_2 = L2_2
  L5_2 = L2_2
  L6_2 = 0.1
  L7_2 = A0_2
  L8_2 = _U
  L9_2 = "trays_label"
  L8_2, L9_2 = L8_2(L9_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L5_2 = Busy
  if L5_2 then
    L5_2 = TriggerEvent
    L6_2 = TriggerName
    L7_2 = "notify"
    L6_2 = L6_2(L7_2)
    L7_2 = false
    L8_2 = _U
    L9_2 = "busy"
    L8_2 = L8_2(L9_2)
    L9_2 = Config
    L9_2 = L9_2.NotifyType
    L9_2 = L9_2.error
    return L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = CreateObjectNoOffset
  L7_2 = A0_2
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = false
  L12_2 = false
  L13_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = SetEntityCompletelyDisableCollision
  L8_2 = L6_2
  L9_2 = false
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = SetEntityVisible
  L8_2 = L6_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = SetEntityAlpha
  L8_2 = L6_2
  L9_2 = 100
  L7_2(L8_2, L9_2)
  Busy = true
  L7_2 = Request
  L8_2 = "anim"
  L9_2 = "anim@heists@box_carry@"
  L7_2(L8_2, L9_2)
  L7_2 = TaskPlayAnim
  L8_2 = L5_2
  L9_2 = "anim@heists@box_carry@"
  L10_2 = "idle"
  L11_2 = 2.0
  L12_2 = 2.0
  L13_2 = -1
  L14_2 = 52
  L15_2 = 0
  L16_2 = true
  L17_2 = true
  L18_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = CreateObject
  L8_2 = GetHashKey
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = true
  L13_2 = true
  L14_2 = true
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = AttachEntityToEntity
  L9_2 = L7_2
  L10_2 = L5_2
  L11_2 = GetPedBoneIndex
  L12_2 = L5_2
  L13_2 = 28422
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = 0.01
  L13_2 = -0.04
  L14_2 = -0.139
  L15_2 = 20.0000007
  L16_2 = 0.0
  L17_2 = 0.0
  L18_2 = true
  L19_2 = true
  L20_2 = false
  L21_2 = true
  L22_2 = 1
  L23_2 = true
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L8_2 = Citizen
  L8_2 = L8_2.CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3
    while true do
      L0_3 = Busy
      if not L0_3 then
        goto lbl_272
      end
      L0_3 = 1
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = IsEntityPlayingAnim
      L3_3 = L1_3
      L4_3 = "anim@heists@box_carry@"
      L5_3 = "idle"
      L6_3 = 3
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      if not L2_3 then
        L2_3 = TaskPlayAnim
        L3_3 = L1_3
        L4_3 = "anim@heists@box_carry@"
        L5_3 = "idle"
        L6_3 = 2.0
        L7_3 = 2.0
        L8_3 = -1
        L9_3 = 52
        L10_3 = 0
        L11_3 = true
        L12_3 = true
        L13_3 = false
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      end
      L2_3 = ShowHelpNotification
      L3_3 = _U
      L4_3 = "trays_placing_controls"
      L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3 = L3_3(L4_3)
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
      L2_3 = IsPedSittingInAnyVehicle
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        L2_3 = IsPedSwimming
        L3_3 = L1_3
        L2_3 = L2_3(L3_3)
        if not L2_3 then
          L2_3 = IsPedDeadOrDying
          L3_3 = L1_3
          L4_3 = 1
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            L2_3 = IsPedSprinting
            L3_3 = L1_3
            L2_3 = L2_3(L3_3)
            if not L2_3 then
              goto lbl_74
            end
          end
        end
      end
      Busy = false
      L2_3 = TriggerEvent
      L3_3 = TriggerName
      L4_3 = "notify"
      L3_3 = L3_3(L4_3)
      L4_3 = false
      L5_3 = _U
      L6_3 = "canceled"
      L5_3 = L5_3(L6_3)
      L6_3 = Config
      L6_3 = L6_3.NotifyType
      L6_3 = L6_3.error
      L2_3(L3_3, L4_3, L5_3, L6_3)
      L2_3 = DeleteObject
      L3_3 = L7_2
      L2_3(L3_3)
      L2_3 = ClearPedTasks
      L3_3 = L1_3
      L2_3(L3_3)
      do break end
      ::lbl_74::
      L2_3 = GetEntityCoords
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      L3_3 = L0_1
      L4_3 = 2.35
      L3_3 = L3_3(L4_3)
      L4_3 = GetEntityHeading
      L5_3 = L6_2
      L4_3 = L4_3(L5_3)
      L5_3 = nil
      L6_3 = A3_2
      if "burgershotfoodtray" ~= L6_3 then
        L6_3 = A3_2
        if "burgershotfoodtrayempty" ~= L6_3 then
          goto lbl_94
        end
      end
      L6_3 = L3_3 * 0.45
      L5_3 = L2_3 + L6_3
      ::lbl_94::
      L6_3 = GetGroundZFor_3dCoord_2
      L7_3 = L5_3.x
      L8_3 = L5_3.y
      L9_3 = L5_3.z
      L10_3 = 1
      L6_3, L7_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
      L8_3 = SetEntityCoordsNoOffset
      L9_3 = L6_2
      L10_3 = L5_3.x
      L11_3 = L5_3.y
      L12_3 = A2_2
      L12_3 = L7_3 + L12_3
      L13_3 = false
      L14_3 = false
      L15_3 = false
      L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      L8_3 = IsControlJustPressed
      L9_3 = 0
      L10_3 = Config
      L10_3 = L10_3.Keys
      L10_3 = L10_3.placingTray
      L10_3 = L10_3.rotateR
      L8_3 = L8_3(L9_3, L10_3)
      if L8_3 then
        L8_3 = SetEntityHeading
        L9_3 = L6_2
        L10_3 = L4_3 - 7
        L8_3(L9_3, L10_3)
      else
        L8_3 = IsControlJustPressed
        L9_3 = 0
        L10_3 = Config
        L10_3 = L10_3.Keys
        L10_3 = L10_3.placingTray
        L10_3 = L10_3.rotateL
        L8_3 = L8_3(L9_3, L10_3)
        if L8_3 then
          L8_3 = SetEntityHeading
          L9_3 = L6_2
          L10_3 = L4_3 + 7
          L8_3(L9_3, L10_3)
        end
      end
      L8_3 = IsControlJustPressed
      L9_3 = 0
      L10_3 = Config
      L10_3 = L10_3.Keys
      L10_3 = L10_3.placingTray
      L10_3 = L10_3.place
      L8_3 = L8_3(L9_3, L10_3)
      if L8_3 then
        L8_3 = StartShapeTestCapsule
        L9_3 = L2_3
        L10_3 = L5_3
        L11_3 = 1.0
        L12_3 = 2
        L13_3 = L1_3
        L14_3 = 7
        L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
        L9_3 = StartShapeTestCapsule
        L10_3 = L2_3
        L11_3 = L5_3
        L12_3 = 1.0
        L13_3 = 4
        L14_3 = L1_3
        L15_3 = 7
        L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
        L10_3 = StartShapeTestCapsule
        L11_3 = L2_3
        L12_3 = L5_3
        L13_3 = 1.0
        L14_3 = 8
        L15_3 = L1_3
        L16_3 = 7
        L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
        L11_3 = StartShapeTestCapsule
        L12_3 = L2_3
        L13_3 = L5_3
        L14_3 = 1.0
        L15_3 = 16
        L16_3 = L1_3
        L17_3 = 7
        L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
        L12_3 = GetShapeTestResult
        L13_3 = L8_3
        L12_3, L13_3, L14_3, L15_3, L16_3 = L12_3(L13_3)
        L17_3 = GetShapeTestResult
        L18_3 = L9_3
        L17_3, L18_3, L19_3, L20_3, L21_3 = L17_3(L18_3)
        L22_3 = GetShapeTestResult
        L23_3 = L10_3
        L22_3, L23_3, L24_3, L25_3, L26_3 = L22_3(L23_3)
        L27_3 = GetShapeTestResult
        L28_3 = L11_3
        L27_3, L28_3, L29_3, L30_3, L31_3 = L27_3(L28_3)
        if 0 == L16_3 and 0 == L21_3 then
          L32_3 = math
          L32_3 = L32_3.abs
          L33_3 = L5_3.z
          L33_3 = L33_3 - L7_3
          L32_3 = L32_3(L33_3)
          L33_3 = 1.5
          if not (L32_3 > L33_3) then
            L32_3 = math
            L32_3 = L32_3.abs
            L33_3 = L2_3.z
            L33_3 = L33_3 - L7_3
            L32_3 = L32_3(L33_3)
            L33_3 = 1.5
            if not (L32_3 > L33_3) then
              goto lbl_228
            end
          end
          L32_3 = TriggerEvent
          L33_3 = TriggerName
          L34_3 = "notify"
          L33_3 = L33_3(L34_3)
          L34_3 = false
          L35_3 = _U
          L36_3 = "trays_cannot_be_placed"
          L35_3 = L35_3(L36_3)
          L36_3 = Config
          L36_3 = L36_3.NotifyType
          L36_3 = L36_3.error
          L32_3(L33_3, L34_3, L35_3, L36_3)
          goto lbl_266
          ::lbl_228::
          Busy = false
          L32_3 = CallCallback
          L33_3 = TriggerName
          L34_3 = "useFoodTray"
          L33_3 = L33_3(L34_3)
          function L34_3(A0_4)
            local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
            if A0_4 then
              L1_4 = DeleteObject
              L2_4 = L7_2
              L1_4(L2_4)
              L1_4 = ClearPedTasks
              L2_4 = L1_3
              L1_4(L2_4)
              L1_4 = PlaceTray
              L2_4 = A0_2
              L3_4 = A1_2
              L4_4 = {}
              L5_4 = L5_3.x
              L4_4.x = L5_4
              L5_4 = L5_3.y
              L4_4.y = L5_4
              L5_4 = L7_3
              L6_4 = A2_2
              L5_4 = L5_4 + L6_4
              L4_4.z = L5_4
              L5_4 = L4_3
              L4_4.h = L5_4
              L5_4 = A3_2
              L6_4 = A4_2
              L1_4(L2_4, L3_4, L4_4, L5_4, L6_4)
            end
          end
          L35_3 = A3_2
          L32_3(L33_3, L34_3, L35_3)
        else
          L32_3 = TriggerEvent
          L33_3 = TriggerName
          L34_3 = "notify"
          L33_3 = L33_3(L34_3)
          L34_3 = false
          L35_3 = _U
          L36_3 = "trays_cannot_be_placed"
          L35_3 = L35_3(L36_3)
          L36_3 = Config
          L36_3 = L36_3.NotifyType
          L36_3 = L36_3.error
          L32_3(L33_3, L34_3, L35_3, L36_3)
        end
      else
        L8_3 = IsControlJustPressed
        L9_3 = 0
        L10_3 = Config
        L10_3 = L10_3.Keys
        L10_3 = L10_3.placingTray
        L10_3 = L10_3.exit
        L8_3 = L8_3(L9_3, L10_3)
        if L8_3 then
          L8_3 = DeleteObject
          L9_3 = L7_2
          L8_3(L9_3)
          L8_3 = ClearPedTasks
          L9_3 = L1_3
          L8_3(L9_3)
          Busy = false
        end
      end
      ::lbl_266::
      L8_3 = Wait
      L9_3 = L0_3
      L8_3(L9_3)
    end
    ::lbl_272::
    L0_3 = DeleteObject
    L1_3 = L6_2
    L0_3(L1_3)
    L0_3 = StopHelpNotification
    L0_3()
  end
  L8_2(L9_2)
end
CreateGhostObject = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = vec3
  L7_2 = A2_2.x
  L8_2 = A2_2.y
  L9_2 = A2_2.z
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L1_1
  L8_2 = L5_2
  L9_2 = A1_2
  L10_2 = A4_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = CreateObject
  L8_2 = GetHashKey
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  L9_2 = L6_2
  L10_2 = true
  L11_2 = true
  L12_2 = true
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = TriggerServerEvent
  L9_2 = TriggerName
  L10_2 = "foodTray"
  L9_2 = L9_2(L10_2)
  L10_2 = {}
  L10_2.status = "place"
  L10_2.item = A3_2
  L11_2 = GetNetworkIdFromEntity
  L12_2 = L7_2
  L11_2 = L11_2(L12_2)
  L10_2.entity = L11_2
  L8_2(L9_2, L10_2)
  L8_2 = NetworkFadeInEntity
  L9_2 = L7_2
  L10_2 = false
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = SetEntityHeading
  L9_2 = L7_2
  L10_2 = A2_2.h
  L8_2(L9_2, L10_2)
  L8_2 = PlaceObjectOnGroundProperly
  L9_2 = L7_2
  L8_2(L9_2)
  L8_2 = SetEntityAsMissionEntity
  L9_2 = L7_2
  L8_2(L9_2)
  L8_2 = FreezeEntityPosition
  L9_2 = L7_2
  L10_2 = true
  L8_2(L9_2, L10_2)
end
PlaceTray = L2_1
L2_1 = RegisterNetEvent
L3_1 = TriggerName
L4_1 = "foodTrayMenu"
L3_1, L4_1 = L3_1(L4_1)
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = TriggerName
L4_1 = "foodTrayMenu"
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
  L1_2 = A0_2.model
  if "prop_food_bs_tray_02" == L1_2 then
    L1_2 = "burgershotfoodtray"
    if L1_2 then
      goto lbl_24
    end
  end
  L1_2 = "burgershotfoodtrayempty"
  ::lbl_24::
  A0_2.item = L1_2
  L2_2 = {}
  L3_2 = {}
  L3_2.name = "foodTrayMenu"
  L4_2 = _U
  L5_2 = "trays_menu_title"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L2_2.header = L3_2
  L3_2 = {}
  L4_2 = {}
  L5_2 = _U
  L6_2 = "trays_menu_take_title"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L5_2 = _U
  L6_2 = "trays_menu_take_desc"
  L5_2 = L5_2(L6_2)
  L4_2.description = L5_2
  L4_2.icon = "fas fa-hand"
  L4_2.arrow = true
  L5_2 = {}
  L5_2.args = A0_2
  L4_2.args = L5_2
  L4_2.event = "foodTrayMenu1"
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = CallCallback
    L1_3 = TriggerName
    L2_3 = "checkFoodTray"
    L1_3 = L1_3(L2_3)
    function L2_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      if A0_4 then
        L1_4 = TakeFoodTray
        L2_4 = A0_2
        L1_4(L2_4)
      else
        L1_4 = TriggerEvent
        L2_4 = TriggerName
        L3_4 = "notify"
        L2_4 = L2_4(L3_4)
        L3_4 = false
        L4_4 = _U
        L5_4 = "trays_cannot_take"
        L4_4 = L4_4(L5_4)
        L5_4 = Config
        L5_4 = L5_4.NotifyType
        L5_4 = L5_4.error
        return L1_4(L2_4, L3_4, L4_4, L5_4)
      end
    end
    L3_3 = {}
    L4_3 = GetNetworkIdFromEntity
    L5_3 = A0_2.entity
    L4_3 = L4_3(L5_3)
    L3_3.entity = L4_3
    L0_3(L1_3, L2_3, L3_3)
  end
  L4_2.onSelect = L5_2
  L3_2[1] = L4_2
  L2_2.options = L3_2
  menu = L2_2
  if "burgershotfoodtray" == L1_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = menu
    L3_2 = L3_2.options
    L4_2 = {}
    L5_2 = _U
    L6_2 = "trays_menu_open_title"
    L5_2 = L5_2(L6_2)
    L4_2.title = L5_2
    L5_2 = _U
    L6_2 = "trays_menu_open_desc"
    L5_2 = L5_2(L6_2)
    L4_2.description = L5_2
    L4_2.icon = "fas fa-hand"
    L4_2.arrow = true
    L5_2 = {}
    L5_2.args = A0_2
    L4_2.args = L5_2
    L4_2.event = "foodTrayMenu2"
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = CallCallback
      L1_3 = TriggerName
      L2_3 = "checkFoodTray"
      L1_3 = L1_3(L2_3)
      function L2_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4
        if A0_4 then
          L1_4 = OpenFoodTray
          L2_4 = A0_2
          L1_4(L2_4)
        else
          L1_4 = TriggerEvent
          L2_4 = TriggerName
          L3_4 = "notify"
          L2_4 = L2_4(L3_4)
          L3_4 = false
          L4_4 = _U
          L5_4 = "trays_cannot_open"
          L4_4 = L4_4(L5_4)
          L5_4 = Config
          L5_4 = L5_4.NotifyType
          L5_4 = L5_4.error
          return L1_4(L2_4, L3_4, L4_4, L5_4)
        end
      end
      L3_3 = {}
      L4_3 = GetNetworkIdFromEntity
      L5_3 = A0_2.entity
      L4_3 = L4_3(L5_3)
      L3_3.entity = L4_3
      L0_3(L1_3, L2_3, L3_3)
    end
    L4_2.onSelect = L5_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = OpenMenu
  L3_2 = menu
  L2_2(L3_2)
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = A0_2.entity
  L3_2 = NetworkRequestControlOfEntity
  L4_2 = L2_2
  L3_2(L4_2)
  while true do
    L3_2 = NetworkHasControlOfEntity
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 0
    L3_2(L4_2)
  end
  L3_2 = Request
  L4_2 = "anim"
  L5_2 = "random@domestic"
  L3_2(L4_2, L5_2)
  L3_2 = TaskPlayAnim
  L4_2 = L1_2
  L5_2 = "random@domestic"
  L6_2 = "pickup_low"
  L7_2 = 2.0
  L8_2 = 2.0
  L9_2 = 2000
  L10_2 = 52
  L11_2 = 0
  L12_2 = true
  L13_2 = true
  L14_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = TriggerServerEvent
  L4_2 = TriggerName
  L5_2 = "foodTray"
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L5_2.status = "take"
  L6_2 = A0_2.item
  L5_2.item = L6_2
  L6_2 = GetNetworkIdFromEntity
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L5_2.entity = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = NetworkFadeOutEntity
  L4_2 = L2_2
  L5_2 = false
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Wait
  L4_2 = 250
  L3_2(L4_2)
  L3_2 = DeleteObject
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = TriggerEvent
  L4_2 = TriggerName
  L5_2 = "placeTray"
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2.item
  L3_2(L4_2, L5_2)
end
TakeFoodTray = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = A0_2.entity
  L4_2 = TriggerServerEvent
  L5_2 = TriggerName
  L6_2 = "foodTray"
  L5_2 = L5_2(L6_2)
  L6_2 = {}
  L6_2.status = "open"
  L7_2 = A0_2.item
  L6_2.item = L7_2
  L7_2 = GetEntityCoords
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L6_2.entityCoords = L7_2
  L7_2 = GetNetworkIdFromEntity
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L6_2.entity = L7_2
  L4_2(L5_2, L6_2)
  if not A1_2 then
    L4_2 = Request
    L5_2 = "anim"
    L6_2 = "mini@repair"
    L4_2(L5_2, L6_2)
    L4_2 = TaskPlayAnim
    L5_2 = L2_2
    L6_2 = "mini@repair"
    L7_2 = "fixing_a_ped"
    L8_2 = 8.0
    L9_2 = -8.0
    L10_2 = 1250
    L11_2 = 1.0
    L12_2 = 0.0
    L13_2 = false
    L14_2 = false
    L15_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L4_2 = ProgressBars
    L5_2 = _U
    L6_2 = "trays_progressbar_taking_food"
    L5_2 = L5_2(L6_2)
    L6_2 = 1250
    L4_2(L5_2, L6_2)
    L4_2 = ClearPedTasks
    L5_2 = L2_2
    L4_2(L5_2)
  end
  L4_2 = Config
  L4_2 = L4_2.RemoveTrayUponUse
  if L4_2 then
    L4_2 = DeleteObject
    L5_2 = L3_2
    L4_2(L5_2)
  end
end
OpenFoodTray = L2_1
L2_1 = RegisterNetEvent
L3_1 = TriggerName
L4_1 = "foodTraySync"
L3_1, L4_1 = L3_1(L4_1)
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = TriggerName
L4_1 = "foodTraySync"
L3_1 = L3_1(L4_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CreateModelSwap
  L2_2 = A0_2
  L3_2 = 0.0
  L4_2 = GetHashKey
  L5_2 = "prop_food_bs_tray_02"
  L4_2 = L4_2(L5_2)
  L5_2 = GetHashKey
  L6_2 = "prop_food_bs_tray_01"
  L5_2 = L5_2(L6_2)
  L6_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = TriggerName
L4_1 = "foodTrayMenu1"
L3_1, L4_1 = L3_1(L4_1)
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = TriggerName
L4_1 = "foodTrayMenu1"
L3_1 = L3_1(L4_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.args
  L2_2 = CallCallback
  L3_2 = TriggerName
  L4_2 = "checkFoodTray"
  L3_2 = L3_2(L4_2)
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if A0_3 then
      L1_3 = TakeFoodTray
      L2_3 = L1_2
      L1_3(L2_3)
    else
      L1_3 = TriggerEvent
      L2_3 = TriggerName
      L3_3 = "notify"
      L2_3 = L2_3(L3_3)
      L3_3 = false
      L4_3 = _U
      L5_3 = "trays_cannot_take"
      L4_3 = L4_3(L5_3)
      L5_3 = Config
      L5_3 = L5_3.NotifyType
      L5_3 = L5_3.error
      return L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  L5_2 = {}
  L6_2 = GetNetworkIdFromEntity
  L7_2 = L1_2.entity
  L6_2 = L6_2(L7_2)
  L5_2.entity = L6_2
  L2_2(L3_2, L4_2, L5_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = TriggerName
L4_1 = "foodTrayMenu2"
L3_1, L4_1 = L3_1(L4_1)
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = TriggerName
L4_1 = "foodTrayMenu2"
L3_1 = L3_1(L4_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.args
  L2_2 = CallCallback
  L3_2 = TriggerName
  L4_2 = "checkFoodTray"
  L3_2 = L3_2(L4_2)
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if A0_3 then
      L1_3 = OpenFoodTray
      L2_3 = L1_2
      L1_3(L2_3)
    else
      L1_3 = TriggerEvent
      L2_3 = TriggerName
      L3_3 = "notify"
      L2_3 = L2_3(L3_3)
      L3_3 = false
      L4_3 = _U
      L5_3 = "trays_cannot_open"
      L4_3 = L4_3(L5_3)
      L5_3 = Config
      L5_3 = L5_3.NotifyType
      L5_3 = L5_3.error
      return L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  L5_2 = {}
  L6_2 = GetNetworkIdFromEntity
  L7_2 = L1_2.entity
  L6_2 = L6_2(L7_2)
  L5_2.entity = L6_2
  L2_2(L3_2, L4_2, L5_2)
end
L2_1(L3_1, L4_1)
