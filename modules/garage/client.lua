local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = RegisterNetEvent
L2_1 = TriggerName
L3_1 = "garageMenu"
L2_1, L3_1 = L2_1(L3_1)
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = TriggerName
L3_1 = "garageMenu"
L2_1 = L2_1(L3_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CallCallback
  L2_2 = TriggerName
  L3_2 = "checkDuty"
  L2_2 = L2_2(L3_2)
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
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
      L2_3.name = "garageMenu"
      L3_3 = _U
      L4_3 = "garage_menu_title_take_out"
      L5_3 = A0_2.args
      L5_3 = L5_3.labelName
      L3_3 = L3_3(L4_3, L5_3)
      L2_3.title = L3_3
      L1_3.header = L2_3
      L2_3 = {}
      L1_3.options = L2_3
      menu = L1_3
      L1_3 = L0_1.vehicle
      if nil ~= L1_3 then
        L1_3 = menu
        L1_3 = L1_3.header
        L2_3 = _U
        L3_3 = "garage_menu_title_store"
        L4_3 = A0_2.args
        L4_3 = L4_3.labelName
        L2_3 = L2_3(L3_3, L4_3)
        L3_3 = table
        L3_3 = L3_3.insert
        L4_3 = menu
        L4_3 = L4_3.options
        L5_3 = {}
        L6_3 = L0_1.vehName
        L5_3.title = L6_3
        L6_3 = _U
        L7_3 = "garage_menu_disc_store"
        L8_3 = L0_1.vehType
        L6_3 = L6_3(L7_3, L8_3)
        L5_3.description = L6_3
        L6_3 = "nui://"
        L7_3 = Images
        L8_3 = L0_1.image
        L6_3 = L6_3 .. L7_3 .. L8_3
        L5_3.image = L6_3
        L5_3.arrow = true
        L6_3 = {}
        L7_3 = A0_2
        L6_3.args = L7_3
        L5_3.args = L6_3
        L5_3.event = "garageMenu1"
        function L6_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4
          L0_4 = false
          L1_4 = type
          L2_4 = A0_2.args
          L2_4 = L2_4.saveDistance
          L1_4 = L1_4(L2_4)
          if "number" ~= L1_4 then
            L1_4 = A0_2.args
            L1_4 = L1_4.saveDistance
            if L1_4 then
              L0_4 = true
            end
          end
          if not L0_4 then
            L1_4 = pairs
            L2_4 = A0_2.args
            L2_4 = L2_4.spawnLocations
            L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
            for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
              L7_4 = vec3
              L8_4 = L6_4.x
              L9_4 = L6_4.y
              L10_4 = L6_4.z
              L7_4 = L7_4(L8_4, L9_4, L10_4)
              L8_4 = GetEntityCoords
              L9_4 = L0_1.vehicle
              L8_4 = L8_4(L9_4)
              L7_4 = L7_4 - L8_4
              L7_4 = #L7_4
              L8_4 = A0_2.args
              L8_4 = L8_4.saveDistance
              if L7_4 < L8_4 then
                L0_4 = true
                break
              end
            end
          end
          if not L0_4 then
            L1_4 = TriggerEvent
            L2_4 = TriggerName
            L3_4 = "notify"
            L2_4 = L2_4(L3_4)
            L3_4 = _U
            L4_4 = "garage_notify_title"
            L3_4 = L3_4(L4_4)
            L4_4 = _U
            L5_4 = "garage_vehicle_too_far"
            L6_4 = L0_1.vehName
            L4_4 = L4_4(L5_4, L6_4)
            L5_4 = Config
            L5_4 = L5_4.NotifyType
            L5_4 = L5_4.error
            return L1_4(L2_4, L3_4, L4_4, L5_4)
          end
          L1_4 = garage
          L2_4 = "delete"
          L3_4 = false
          L1_4(L2_4, L3_4)
          L1_4 = TriggerEvent
          L2_4 = TriggerName
          L3_4 = "notify"
          L2_4 = L2_4(L3_4)
          L3_4 = _U
          L4_4 = "garage_notify_title"
          L3_4 = L3_4(L4_4)
          L4_4 = _U
          L5_4 = "garage_vehicle_stored"
          L6_4 = L0_1.vehName
          L4_4 = L4_4(L5_4, L6_4)
          L5_4 = Config
          L5_4 = L5_4.NotifyType
          L5_4 = L5_4.info
          L1_4(L2_4, L3_4, L4_4, L5_4)
        end
        L5_3.onSelect = L6_3
        L3_3(L4_3, L5_3)
        L1_3.title = L2_3
        L1_3 = OpenMenu
        L2_3 = menu
        return L1_3(L2_3)
      end
      L1_3 = pairs
      L2_3 = A0_2.args
      L2_3 = L2_3.vehicles
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.grade
        L8_3 = GetPlayerJobInfo
        L8_3 = L8_3()
        L8_3 = L8_3.gradeLevel
        if L7_3 > L8_3 then
          L7_3 = true
          if L7_3 then
            goto lbl_102
          end
        end
        L7_3 = false
        ::lbl_102::
        L8_3 = table
        L8_3 = L8_3.insert
        L9_3 = menu
        L9_3 = L9_3.options
        L10_3 = {}
        L10_3.title = L5_3
        L11_3 = _U
        L12_3 = "garage_menu_disc_take_out"
        L13_3 = L6_3.vehicleType
        L14_3 = L6_3.grade
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L10_3.description = L11_3
        L11_3 = "nui://"
        L12_3 = Images
        L13_3 = L6_3.image
        L11_3 = L11_3 .. L12_3 .. L13_3
        L10_3.image = L11_3
        L11_3 = not L7_3
        L10_3.arrow = L11_3
        L10_3.disabled = L7_3
        L11_3 = {}
        L12_3 = A0_2
        L11_3.args = L12_3
        L11_3.k = L5_3
        L11_3.v = L6_3
        L10_3.args = L11_3
        L10_3.event = "garageMenu2"
        function L11_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
          L0_4 = L7_3
          if L0_4 then
            L0_4 = TriggerEvent
            L1_4 = TriggerName
            L2_4 = "notify"
            L1_4 = L1_4(L2_4)
            L2_4 = _U
            L3_4 = "garage_notify_title"
            L2_4 = L2_4(L3_4)
            L3_4 = _U
            L4_4 = "garage_not_enough_experience"
            L5_4 = L5_3
            L3_4 = L3_4(L4_4, L5_4)
            L4_4 = Config
            L4_4 = L4_4.NotifyType
            L4_4 = L4_4.error
            return L0_4(L1_4, L2_4, L3_4, L4_4)
          end
          L0_4 = garage
          L1_4 = "spawn"
          L2_4 = {}
          L3_4 = A0_2.args
          L3_4 = L3_4.spawnLocations
          L2_4.spawnLocations = L3_4
          L3_4 = {}
          L4_4 = L5_3
          L3_4.vehName = L4_4
          L4_4 = L6_3.spawnName
          L3_4.spawnName = L4_4
          L4_4 = L6_3.vehicleType
          L3_4.type = L4_4
          L4_4 = A0_2.args
          L4_4 = L4_4.putPlayerIntoVehicle
          L3_4.putPlayerIntoVehicle = L4_4
          L4_4 = L6_3.image
          L3_4.image = L4_4
          L2_4.vehicleInfo = L3_4
          L0_4(L1_4, L2_4)
        end
        L10_3.onSelect = L11_3
        L8_3(L9_3, L10_3)
      end
      L1_3 = OpenMenu
      L2_3 = menu
      L1_3(L2_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if "spawn" == A0_2 then
    L2_2 = {}
    L3_2 = pairs
    L4_2 = A1_2.spawnLocations
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = IsSpawnPointClear
      L10_2 = vector3
      L11_2 = L8_2.x
      L12_2 = L8_2.y
      L13_2 = L8_2.z
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L11_2 = 3.0
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        Busy = true
        L9_2 = {}
        L9_2.emptySpace = true
        L10_2 = A1_2.vehicleInfo
        L10_2 = L10_2.vehName
        L9_2.vehName = L10_2
        L10_2 = A1_2.vehicleInfo
        L10_2 = L10_2.spawnName
        L9_2.spawnName = L10_2
        L10_2 = A1_2.vehicleInfo
        L10_2 = L10_2.type
        L9_2.type = L10_2
        L10_2 = A1_2.vehicleInfo
        L10_2 = L10_2.image
        L9_2.image = L10_2
        L10_2 = L8_2.x
        L9_2.x = L10_2
        L10_2 = L8_2.y
        L9_2.y = L10_2
        L10_2 = L8_2.z
        L9_2.z = L10_2
        L10_2 = L8_2.w
        L9_2.h = L10_2
        L2_2 = L9_2
        break
      end
    end
    L3_2 = L2_2.emptySpace
    if not L3_2 then
      L3_2 = TriggerEvent
      L4_2 = TriggerName
      L5_2 = "notify"
      L4_2 = L4_2(L5_2)
      L5_2 = _U
      L6_2 = "garage_notify_title"
      L5_2 = L5_2(L6_2)
      L6_2 = _U
      L7_2 = "garage_blocked"
      L6_2 = L6_2(L7_2)
      L7_2 = Config
      L7_2 = L7_2.NotifyType
      L7_2 = L7_2.error
      return L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    L3_2 = L0_1.vehicle
    if nil ~= L3_2 then
      L3_2 = TriggerEvent
      L4_2 = TriggerName
      L5_2 = "notify"
      L4_2 = L4_2(L5_2)
      L5_2 = _U
      L6_2 = "garage_notify_title"
      L5_2 = L5_2(L6_2)
      L6_2 = _U
      L7_2 = "garage_car_limit"
      L6_2 = L6_2(L7_2)
      L7_2 = Config
      L7_2 = L7_2.NotifyType
      L7_2 = L7_2.error
      return L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    L3_2 = Request
    L4_2 = "model"
    L5_2 = L2_2.spawnName
    L3_2(L4_2, L5_2)
    L3_2 = CreateVehicle
    L4_2 = L2_2.spawnName
    L5_2 = L2_2.x
    L6_2 = L2_2.y
    L7_2 = L2_2.z
    L8_2 = L2_2.h
    L9_2 = true
    L10_2 = false
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    vehicle = L3_2
    L3_2 = SetEntityAsMissionEntity
    L4_2 = vehicle
    L5_2 = true
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = {}
    L4_2 = vehicle
    L3_2.vehicle = L4_2
    L4_2 = L2_2.type
    L3_2.vehType = L4_2
    L4_2 = GetVehicleNumberPlateText
    L5_2 = vehicle
    L4_2 = L4_2(L5_2)
    L3_2.vehPlate = L4_2
    L4_2 = L2_2.vehName
    L3_2.vehName = L4_2
    L4_2 = L2_2.spawnName
    L3_2.spawnName = L4_2
    L4_2 = L2_2.image
    L3_2.image = L4_2
    L0_1 = L3_2
    L3_2 = A1_2.vehicleInfo
    L3_2 = L3_2.putPlayerIntoVehicle
    if L3_2 then
      L3_2 = DoScreenFadeOut
      L4_2 = 500
      L3_2(L4_2)
      L3_2 = ProgressBars
      L4_2 = _U
      L5_2 = "garage_progressbar_vehicle_loading"
      L4_2 = L4_2(L5_2)
      L5_2 = 1500
      L3_2(L4_2, L5_2)
      L3_2 = DoScreenFadeIn
      L4_2 = 500
      L3_2(L4_2)
      L3_2 = SetPedIntoVehicle
      L4_2 = PlayerPedId
      L4_2 = L4_2()
      L5_2 = L0_1.vehicle
      L6_2 = -1
      L3_2(L4_2, L5_2, L6_2)
    end
    L3_2 = ActionMenu
    if "oxHelpNotifi" == L3_2 then
      L3_2 = lib
      L3_2 = L3_2.hideTextUI
      L3_2()
    end
    L3_2 = VehicleSpawned
    L4_2 = L0_1
    L3_2(L4_2)
    Busy = false
    L3_2 = TriggerEvent
    L4_2 = TriggerName
    L5_2 = "notify"
    L4_2 = L4_2(L5_2)
    L5_2 = _U
    L6_2 = "garage_notify_title"
    L5_2 = L5_2(L6_2)
    L6_2 = _U
    L7_2 = "garage_vehicle_taken_out"
    L8_2 = L2_2.vehName
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = Config
    L7_2 = L7_2.NotifyType
    L7_2 = L7_2.info
    L3_2(L4_2, L5_2, L6_2, L7_2)
  elseif "delete" == A0_2 then
    L2_2 = L0_1.vehicle
    if nil ~= L2_2 then
      L2_2 = DoesEntityExist
      L3_2 = L0_1.vehicle
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = VehicleDespawned
        L3_2 = L0_1
        L2_2(L3_2)
        L2_2 = Wait
        L3_2 = 250
        L2_2(L3_2)
        L2_2 = DeleteVehicle
        L3_2 = L0_1.vehicle
        L2_2(L3_2)
      end
    end
  end
end
garage = L1_1
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2
  while true do
    _msec = 5000
    L0_2 = L0_1.vehicle
    if nil ~= L0_2 then
      _msec = 1000
      L0_2 = DoesEntityExist
      L1_2 = L0_1.vehicle
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = GetVehicleEngineHealth
        L1_2 = L0_1.vehicle
        L0_2 = L0_2(L1_2)
        if not (L0_2 < 0) then
          goto lbl_19
        end
      end
      L0_2 = {}
      L0_1 = L0_2
    end
    ::lbl_19::
    L0_2 = Wait
    L1_2 = _msec
    L0_2(L1_2)
  end
end
L1_1(L2_1)
L1_1 = RegisterNetEvent
L2_1 = TriggerName
L3_1 = "garageMenu1"
L2_1, L3_1 = L2_1(L3_1)
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = TriggerName
L3_1 = "garageMenu1"
L2_1 = L2_1(L3_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2.args
  L2_2 = false
  L3_2 = type
  L4_2 = L1_2.args
  L4_2 = L4_2.saveDistance
  L3_2 = L3_2(L4_2)
  if "number" ~= L3_2 then
    L3_2 = L1_2.args
    L3_2 = L3_2.saveDistance
    if L3_2 then
      L2_2 = true
    end
  end
  if not L2_2 then
    L3_2 = pairs
    L4_2 = L1_2.args
    L4_2 = L4_2.spawnLocations
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = vec3
      L10_2 = L8_2.x
      L11_2 = L8_2.y
      L12_2 = L8_2.z
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L10_2 = GetEntityCoords
      L11_2 = L0_1.vehicle
      L10_2 = L10_2(L11_2)
      L9_2 = L9_2 - L10_2
      L9_2 = #L9_2
      L10_2 = L1_2.args
      L10_2 = L10_2.saveDistance
      if L9_2 < L10_2 then
        L2_2 = true
        break
      end
    end
  end
  if not L2_2 then
    L3_2 = TriggerEvent
    L4_2 = TriggerName
    L5_2 = "notify"
    L4_2 = L4_2(L5_2)
    L5_2 = _U
    L6_2 = "garage_notify_title"
    L5_2 = L5_2(L6_2)
    L6_2 = _U
    L7_2 = "garage_vehicle_too_far"
    L8_2 = L0_1.vehName
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = Config
    L7_2 = L7_2.NotifyType
    L7_2 = L7_2.error
    return L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = garage
  L4_2 = "delete"
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = TriggerEvent
  L4_2 = TriggerName
  L5_2 = "notify"
  L4_2 = L4_2(L5_2)
  L5_2 = _U
  L6_2 = "garage_notify_title"
  L5_2 = L5_2(L6_2)
  L6_2 = _U
  L7_2 = "garage_vehicle_stored"
  L8_2 = L0_1.vehName
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = Config
  L7_2 = L7_2.NotifyType
  L7_2 = L7_2.info
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = TriggerName
L3_1 = "garageMenu2"
L2_1, L3_1 = L2_1(L3_1)
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = TriggerName
L3_1 = "garageMenu2"
L2_1 = L2_1(L3_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.k
  L2_2 = A0_2.v
  L3_2 = A0_2.args
  L4_2 = canTakeOut
  if L4_2 then
    L4_2 = TriggerEvent
    L5_2 = TriggerName
    L6_2 = "notify"
    L5_2 = L5_2(L6_2)
    L6_2 = _U
    L7_2 = "garage_notify_title"
    L6_2 = L6_2(L7_2)
    L7_2 = _U
    L8_2 = "garage_not_enough_experience"
    L9_2 = L1_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = Config
    L8_2 = L8_2.NotifyType
    L8_2 = L8_2.error
    return L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = garage
  L5_2 = "spawn"
  L6_2 = {}
  L7_2 = L3_2.args
  L7_2 = L7_2.spawnLocations
  L6_2.spawnLocations = L7_2
  L7_2 = {}
  L7_2.vehName = L1_2
  L8_2 = L2_2.spawnName
  L7_2.spawnName = L8_2
  L8_2 = L2_2.vehicleType
  L7_2.type = L8_2
  L8_2 = L3_2.args
  L8_2 = L8_2.putPlayerIntoVehicle
  L7_2.putPlayerIntoVehicle = L8_2
  L8_2 = L2_2.image
  L7_2.image = L8_2
  L6_2.vehicleInfo = L7_2
  L4_2(L5_2, L6_2)
end
L1_1(L2_1, L3_1)
