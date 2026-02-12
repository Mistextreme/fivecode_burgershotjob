local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1
L0_1 = {}
Locations = L0_1
L0_1 = {}
L1_1 = "gabz"
L2_1 = "smallo"
L3_1 = "gn"
L4_1 = "king"
L5_1 = "uniqx"
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
MapFiles = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = "burgershotcola"
L3_1 = "burgershotcolalight"
L4_1 = "burgershotsprunk"
L5_1 = "burgershotorang_o_tang"
L6_1 = "burgershotcolaslushie"
L7_1 = "burgershotcolalightslushie"
L8_1 = "burgershotsprunkslushie"
L9_1 = "burgershotorang_o_tangslushie"
L10_1 = "friedfries"
L11_1 = "friedonionring"
L12_1 = "friedmozzarellastick"
L13_1 = "classicburger"
L14_1 = "classicburgerspicy"
L15_1 = "chickenburger"
L16_1 = "chickenburgerspicy"
L17_1 = "chickenburgerspicy"
L18_1 = "fishburger"
L19_1 = "obeseburger"
L20_1 = "steakburger"
L21_1 = "reverseburger"
L22_1 = "burgershotsandwich"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L1_1[6] = L7_1
L1_1[7] = L8_1
L1_1[8] = L9_1
L1_1[9] = L10_1
L1_1[10] = L11_1
L1_1[11] = L12_1
L1_1[12] = L13_1
L1_1[13] = L14_1
L1_1[14] = L15_1
L1_1[15] = L16_1
L1_1[16] = L17_1
L1_1[17] = L18_1
L1_1[18] = L19_1
L1_1[19] = L20_1
L1_1[20] = L21_1
L1_1[21] = L22_1
L0_1.food = L1_1
L1_1 = {}
L2_1 = "burgershotfoodtray"
L3_1 = "burgershotfoodtrayempty"
L1_1[1] = L2_1
L1_1[2] = L3_1
L0_1.tray = L1_1
UsableItems = L0_1
L0_1 = {}
L0_1.clean = "cleansponge"
L0_1.dirty = "dirtysponge"
SpongeItems = L0_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
  function L0_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = ipairs
    L1_3 = MapFiles
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = string
      L6_3 = L6_3.format
      L7_3 = "%s/%s.lua"
      L8_3 = "locations"
      L9_3 = L5_3
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      L7_3 = LoadResourceFile
      L8_3 = GetCurrentResourceName
      L8_3 = L8_3()
      L9_3 = L6_3
      L7_3 = L7_3(L8_3, L9_3)
      if L7_3 then
        L8_3 = load
        L9_3 = "return "
        L11_3 = L7_3
        L10_3 = L7_3.match
        L12_3 = "return (.+)"
        L10_3 = L10_3(L11_3, L12_3)
        L9_3 = L9_3 .. L10_3
        L8_3 = L8_3(L9_3)
        if L8_3 then
          L9_3 = Locations
          L10_3 = L8_3
          L10_3 = L10_3()
          L9_3[L5_3] = L10_3
        end
      end
    end
  end
  LoadLocations = L0_2
  L0_2 = LoadLocations
  L0_2()
  L0_2 = Locations
  L1_2 = MloList
  L0_2 = L0_2[L1_2]
  RestaurantLocation = L0_2
  L0_2 = {}
  L0_2.label = "Burger Shot"
  L1_2 = Config
  L1_2 = L1_2.JobName
  L0_2.name = L1_2
  L1_2 = {}
  L1_2.label = "Burgershot"
  L1_2.name = "society_burgershot"
  L2_2 = Config
  L2_2 = L2_2.Functions
  L2_2 = L2_2.BossMenu
  L2_2 = L2_2.washMoney
  L1_2.washMoney = L2_2
  L0_2.society = L1_2
  JobInfo = L0_2
end
L0_1(L1_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = string
  L1_2 = L1_2.format
  L2_2 = "fivecode_burgershotjob:%s"
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
TriggerName = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.Debug
  if L1_2 then
    L1_2 = print
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
Debug = L0_1
