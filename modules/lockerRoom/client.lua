local L0_1, L1_1, L2_1
CanWearCivil = false
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "lockerMenu"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "lockerMenu"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
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
      L2_3.name = "lockerMenu"
      L3_3 = _U
      L4_3 = "lockerroom_menu_title"
      L5_3 = A0_2.args
      L5_3 = L5_3.labelName
      L3_3 = L3_3(L4_3, L5_3)
      L2_3.title = L3_3
      L1_3.header = L2_3
      L2_3 = {}
      L3_3 = {}
      L4_3 = _U
      L5_3 = "lockerroom_menu_civil"
      L4_3 = L4_3(L5_3)
      L3_3.title = L4_3
      L4_3 = _U
      L5_3 = "lockerroom_menu_civil_desc"
      L4_3 = L4_3(L5_3)
      L3_3.description = L4_3
      L4_3 = CanWearCivil
      L3_3.arrow = L4_3
      L4_3 = CanWearCivil
      L4_3 = not L4_3
      L3_3.disabled = L4_3
      L4_3 = {}
      L3_3.args = L4_3
      L3_3.event = "lockerMenu1"
      function L4_3()
        local L0_4, L1_4, L2_4
        L0_4 = ChangeOutfit
        L1_4 = "reset"
        L2_4 = false
        L0_4(L1_4, L2_4)
      end
      L3_3.onSelect = L4_3
      L2_3[1] = L3_3
      L1_3.options = L2_3
      menu = L1_3
      L1_3 = pairs
      L2_3 = A0_2.args
      L2_3 = L2_3.outfits
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.grade
        L8_3 = GetPlayerJobInfo
        L8_3 = L8_3()
        L8_3 = L8_3.gradeLevel
        if L7_3 > L8_3 then
          L7_3 = true
          if L7_3 then
            goto lbl_81
          end
        end
        L7_3 = false
        ::lbl_81::
        L8_3 = table
        L8_3 = L8_3.insert
        L9_3 = menu
        L9_3 = L9_3.options
        L10_3 = {}
        L10_3.title = L5_3
        L11_3 = _U
        L12_3 = "lockerroom_menu_work_desc"
        L13_3 = L5_3
        L14_3 = L6_3.grade
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L10_3.description = L11_3
        L11_3 = CanWearCivil
        L11_3 = not L11_3 and L11_3
        L10_3.arrow = L11_3
        L11_3 = CanWearCivil
        L11_3 = L11_3 and not L7_3 or L11_3
        L10_3.disabled = L11_3
        L11_3 = {}
        L11_3.k = L5_3
        L11_3.v = L6_3
        L10_3.args = L11_3
        L10_3.event = "lockerMenu2"
        function L11_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4
          L0_4 = L7_3
          if L0_4 then
            L0_4 = TriggerEvent
            L1_4 = TriggerName
            L2_4 = "notify"
            L1_4 = L1_4(L2_4)
            L2_4 = false
            L3_4 = _U
            L4_4 = "lockerroom_grade_low"
            L3_4 = L3_4(L4_4)
            L4_4 = Config
            L4_4 = L4_4.NotifyType
            L4_4 = L4_4.error
            return L0_4(L1_4, L2_4, L3_4, L4_4)
          end
          L0_4 = GetPlayerGender
          L0_4 = L0_4()
          if "male" == L0_4 then
            L0_4 = L6_3.male
            if L0_4 then
              goto lbl_25
            end
          end
          L0_4 = L6_3.female
          ::lbl_25::
          L1_4 = ChangeOutfit
          L2_4 = "change"
          L3_4 = L0_4
          L1_4(L2_4, L3_4)
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
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = nil
  L2_2 = SkinSelector
  if "illenium" == L2_2 then
    L2_2 = {}
    L3_2 = {}
    L4_2 = {}
    L4_2.component_id = 1
    L5_2 = A0_2.mask_1
    if not L5_2 then
      L5_2 = 0
    end
    L4_2.drawable = L5_2
    L5_2 = A0_2.mask_2
    if not L5_2 then
      L5_2 = 0
    end
    L4_2.texture = L5_2
    L5_2 = {}
    L5_2.component_id = 3
    L6_2 = A0_2.arms
    if not L6_2 then
      L6_2 = 0
    end
    L5_2.drawable = L6_2
    L6_2 = A0_2.arms_2
    if not L6_2 then
      L6_2 = 0
    end
    L5_2.texture = L6_2
    L6_2 = {}
    L6_2.component_id = 4
    L7_2 = A0_2.pants_1
    if not L7_2 then
      L7_2 = 0
    end
    L6_2.drawable = L7_2
    L7_2 = A0_2.pants_2
    if not L7_2 then
      L7_2 = 0
    end
    L6_2.texture = L7_2
    L7_2 = {}
    L7_2.component_id = 5
    L8_2 = A0_2.bag_1
    if not L8_2 then
      L8_2 = 0
    end
    L7_2.drawable = L8_2
    L8_2 = A0_2.bag_2
    if not L8_2 then
      L8_2 = 0
    end
    L7_2.texture = L8_2
    L8_2 = {}
    L8_2.component_id = 6
    L9_2 = A0_2.shoes_1
    if not L9_2 then
      L9_2 = 0
    end
    L8_2.drawable = L9_2
    L9_2 = A0_2.shoes_2
    if not L9_2 then
      L9_2 = 0
    end
    L8_2.texture = L9_2
    L9_2 = {}
    L9_2.component_id = 7
    L10_2 = A0_2.chain_1
    if not L10_2 then
      L10_2 = 0
    end
    L9_2.drawable = L10_2
    L10_2 = A0_2.chain_2
    if not L10_2 then
      L10_2 = 0
    end
    L9_2.texture = L10_2
    L10_2 = {}
    L10_2.component_id = 8
    L11_2 = A0_2.tshirt_1
    if not L11_2 then
      L11_2 = 0
    end
    L10_2.drawable = L11_2
    L11_2 = A0_2.tshirt_2
    if not L11_2 then
      L11_2 = 0
    end
    L10_2.texture = L11_2
    L11_2 = {}
    L11_2.component_id = 9
    L12_2 = A0_2.bproof_1
    if not L12_2 then
      L12_2 = 0
    end
    L11_2.drawable = L12_2
    L12_2 = A0_2.bproof_2
    if not L12_2 then
      L12_2 = 0
    end
    L11_2.texture = L12_2
    L12_2 = {}
    L12_2.component_id = 10
    L13_2 = A0_2.decals_1
    if not L13_2 then
      L13_2 = 0
    end
    L12_2.drawable = L13_2
    L13_2 = A0_2.decals_2
    if not L13_2 then
      L13_2 = 0
    end
    L12_2.texture = L13_2
    L13_2 = {}
    L13_2.component_id = 11
    L14_2 = A0_2.torso_1
    if not L14_2 then
      L14_2 = 0
    end
    L13_2.drawable = L14_2
    L14_2 = A0_2.torso_2
    if not L14_2 then
      L14_2 = 0
    end
    L13_2.texture = L14_2
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L3_2[4] = L7_2
    L3_2[5] = L8_2
    L3_2[6] = L9_2
    L3_2[7] = L10_2
    L3_2[8] = L11_2
    L3_2[9] = L12_2
    L3_2[10] = L13_2
    L2_2.components = L3_2
    L3_2 = {}
    L4_2 = {}
    L4_2.prop_id = 0
    L5_2 = A0_2.helmet_1
    if not L5_2 then
      L5_2 = -1
    end
    L4_2.drawable = L5_2
    L5_2 = A0_2.helmet_2
    if not L5_2 then
      L5_2 = 0
    end
    L4_2.texture = L5_2
    L5_2 = {}
    L5_2.prop_id = 1
    L6_2 = A0_2.glasses_1
    if not L6_2 then
      L6_2 = -1
    end
    L5_2.drawable = L6_2
    L6_2 = A0_2.glasses_2
    if not L6_2 then
      L6_2 = 0
    end
    L5_2.texture = L6_2
    L6_2 = {}
    L6_2.prop_id = 2
    L7_2 = A0_2.ears_1
    if not L7_2 then
      L7_2 = -1
    end
    L6_2.drawable = L7_2
    L7_2 = A0_2.ears_2
    if not L7_2 then
      L7_2 = 0
    end
    L6_2.texture = L7_2
    L7_2 = {}
    L7_2.prop_id = 6
    L8_2 = A0_2.watches_1
    if not L8_2 then
      L8_2 = -1
    end
    L7_2.drawable = L8_2
    L8_2 = A0_2.watches_2
    if not L8_2 then
      L8_2 = 0
    end
    L7_2.texture = L8_2
    L8_2 = {}
    L8_2.prop_id = 7
    L9_2 = A0_2.bracelets_1
    if not L9_2 then
      L9_2 = -1
    end
    L8_2.drawable = L9_2
    L9_2 = A0_2.bracelets_2
    if not L9_2 then
      L9_2 = 0
    end
    L8_2.texture = L9_2
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L3_2[4] = L7_2
    L3_2[5] = L8_2
    L2_2.props = L3_2
    L1_2 = L2_2
  else
    L2_2 = {}
    L3_2 = {}
    L4_2 = {}
    L5_2 = A0_2.tshirt_1
    L4_2.item = L5_2
    L5_2 = A0_2.tshirt_2
    L4_2.texture = L5_2
    L3_2["t-shirt"] = L4_2
    L4_2 = {}
    L5_2 = A0_2.torso_1
    L4_2.item = L5_2
    L5_2 = A0_2.torso_2
    L4_2.texture = L5_2
    L3_2.torso2 = L4_2
    L4_2 = {}
    L5_2 = A0_2.decals_1
    L4_2.item = L5_2
    L5_2 = A0_2.decals_2
    L4_2.texture = L5_2
    L3_2.decals = L4_2
    L4_2 = {}
    L5_2 = A0_2.arms
    L4_2.item = L5_2
    L4_2.texture = 0
    L3_2.arms = L4_2
    L4_2 = {}
    L5_2 = A0_2.pants_1
    L4_2.item = L5_2
    L5_2 = A0_2.pants_2
    L4_2.texture = L5_2
    L3_2.pants = L4_2
    L4_2 = {}
    L5_2 = A0_2.shoes_1
    L4_2.item = L5_2
    L5_2 = A0_2.shoes_2
    L4_2.texture = L5_2
    L3_2.shoes = L4_2
    L4_2 = {}
    L5_2 = A0_2.helmet_1
    L4_2.item = L5_2
    L5_2 = A0_2.helmet_2
    L4_2.texture = L5_2
    L3_2.hat = L4_2
    L4_2 = {}
    L5_2 = A0_2.mask_1
    L4_2.item = L5_2
    L5_2 = A0_2.mask_2
    L4_2.texture = L5_2
    L3_2.mask = L4_2
    L4_2 = {}
    L5_2 = A0_2.chain_1
    L4_2.item = L5_2
    L5_2 = A0_2.chain_2
    L4_2.texture = L5_2
    L3_2.accessory = L4_2
    L4_2 = {}
    L5_2 = A0_2.ears_1
    L4_2.item = L5_2
    L5_2 = A0_2.ears_2
    L4_2.texture = L5_2
    L3_2.ear = L4_2
    L2_2.outfitData = L3_2
    L1_2 = L2_2
  end
  return L1_2
end
ConvertOutfit = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  Busy = true
  L2_2 = ChangingOutfitAnim
  L2_2()
  L2_2 = ChangeClothing
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  Busy = false
end
ChangeOutfit = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = SetTimeout
  L2_2 = 0
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = Request
    L1_3 = "anim"
    L2_3 = "nmt_3_rcm-10"
    L0_3(L1_3, L2_3)
    L0_3 = TaskPlayAnim
    L1_3 = L0_2
    L2_3 = "nmt_3_rcm-10"
    L3_3 = "cs_nigel_dual-10"
    L4_3 = 1.5
    L5_3 = -1.0
    L6_3 = 1000
    L7_3 = 51
    L8_3 = 1
    L9_3 = false
    L10_3 = false
    L11_3 = false
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L0_3 = Wait
    L1_3 = 1000
    L0_3(L1_3)
    L0_3 = Request
    L1_3 = "anim"
    L2_3 = "clothingtie"
    L0_3(L1_3, L2_3)
    L0_3 = TaskPlayAnim
    L1_3 = L0_2
    L2_3 = "clothingtie"
    L3_3 = "try_tie_negative_a"
    L4_3 = 1.5
    L5_3 = -1.0
    L6_3 = 1000
    L7_3 = 51
    L8_3 = 1
    L9_3 = false
    L10_3 = false
    L11_3 = false
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L0_3 = Wait
    L1_3 = 1000
    L0_3(L1_3)
    L0_3 = Request
    L1_3 = "anim"
    L2_3 = "re@construction"
    L0_3(L1_3, L2_3)
    L0_3 = TaskPlayAnim
    L1_3 = L0_2
    L2_3 = "re@construction"
    L3_3 = "out_of_breath"
    L4_3 = 1.5
    L5_3 = -1.0
    L6_3 = 1000
    L7_3 = 51
    L8_3 = 1
    L9_3 = false
    L10_3 = false
    L11_3 = false
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L0_3 = Wait
    L1_3 = 1000
    L0_3(L1_3)
    L0_3 = Request
    L1_3 = "anim"
    L2_3 = "random@domestic"
    L0_3(L1_3, L2_3)
    L0_3 = TaskPlayAnim
    L1_3 = L0_2
    L2_3 = "random@domestic"
    L3_3 = "pickup_low"
    L4_3 = 1.5
    L5_3 = -1.0
    L6_3 = 1000
    L7_3 = 51
    L8_3 = 1
    L9_3 = false
    L10_3 = false
    L11_3 = false
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L0_3 = Wait
    L1_3 = 1000
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = ProgressBars
  L2_2 = _U
  L3_2 = "lockerroom_progressbar_changing"
  L2_2 = L2_2(L3_2)
  L3_2 = 4000
  L1_2(L2_2, L3_2)
end
ChangingOutfitAnim = L0_1
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "lockerMenu1"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "lockerMenu1"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ChangeOutfit
  L2_2 = "reset"
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = TriggerName
L2_1 = "lockerMenu2"
L1_1, L2_1 = L1_1(L2_1)
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = TriggerName
L2_1 = "lockerMenu2"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.k
  L2_2 = A0_2.v
  L3_2 = canWear
  if L3_2 then
    L3_2 = TriggerEvent
    L4_2 = TriggerName
    L5_2 = "notify"
    L4_2 = L4_2(L5_2)
    L5_2 = false
    L6_2 = _U
    L7_2 = "lockerroom_grade_low"
    L6_2 = L6_2(L7_2)
    L7_2 = Config
    L7_2 = L7_2.NotifyType
    L7_2 = L7_2.error
    return L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = GetPlayerGender
  L3_2 = L3_2()
  if "male" == L3_2 then
    L3_2 = L2_2.male
    if L3_2 then
      goto lbl_27
    end
  end
  L3_2 = L2_2.female
  ::lbl_27::
  L4_2 = ChangeOutfit
  L5_2 = "change"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1(L1_1, L2_1)
