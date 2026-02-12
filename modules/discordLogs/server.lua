local L0_1, L1_1
L0_1 = Config
L0_1 = L0_1.DiscordLogs
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L3_2 = nil
  L4_2 = {}
  L5_2 = GetPlayerName
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = GetPlayerName
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_15
    end
  end
  L5_2 = "Player Name not found"
  ::lbl_15::
  L4_2.name = L5_2
  L5_2 = GetPlayerDiscord
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = "<@"
    L6_2 = GetPlayerDiscord
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L7_2 = ">"
    L5_2 = L5_2 .. L6_2 .. L7_2
    if L5_2 then
      goto lbl_30
    end
  end
  L5_2 = "Discord not found"
  ::lbl_30::
  L4_2.discord = L5_2
  L5_2 = GetIdentifier
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = GetIdentifier
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_42
    end
  end
  L5_2 = "Identifier not found"
  ::lbl_42::
  L4_2.identifier = L5_2
  if "shopPay" == A2_2 then
    L5_2 = {}
    L5_2.color = "2924649"
    L6_2 = _U
    L7_2 = "discord_logs_supply_shop"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L6_2 = _U
    L7_2 = "discord_logs_supply_shop_desc"
    L8_2 = A1_2.item
    L9_2 = A1_2.amount
    L10_2 = A1_2.amount
    L11_2 = A1_2.type
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L7_2 = [[


]]
    L8_2 = _U
    L9_2 = "discord_logs_player_name"
    L8_2 = L8_2(L9_2)
    L9_2 = " **"
    L10_2 = L4_2.name
    L11_2 = "**"
    L12_2 = "\n"
    L13_2 = _U
    L14_2 = "discord_logs_player_discord"
    L13_2 = L13_2(L14_2)
    L14_2 = " **"
    L15_2 = L4_2.discord
    L16_2 = "**"
    L17_2 = "\n"
    L18_2 = _U
    L19_2 = "discord_logs_player_char"
    L18_2 = L18_2(L19_2)
    L19_2 = " **"
    L20_2 = L4_2.identifier
    L21_2 = "**"
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
    L5_2.description = L6_2
    L6_2 = ShopBuyWebhookLink
    L5_2.webhookLink = L6_2
    L3_2 = L5_2
  elseif "deliveryReward" == A2_2 then
    L5_2 = {}
    L5_2.color = "7166313"
    L6_2 = _U
    L7_2 = "discord_logs_delivery"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L6_2 = _U
    L7_2 = "discord_logs_delivery_desc"
    L8_2 = A1_2.reward
    L9_2 = A1_2.reward
    L10_2 = A1_2.tip
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = [[


]]
    L8_2 = _U
    L9_2 = "discord_logs_player_name"
    L8_2 = L8_2(L9_2)
    L9_2 = " **"
    L10_2 = L4_2.name
    L11_2 = "**"
    L12_2 = "\n"
    L13_2 = _U
    L14_2 = "discord_logs_player_discord"
    L13_2 = L13_2(L14_2)
    L14_2 = " **"
    L15_2 = L4_2.discord
    L16_2 = "**"
    L17_2 = "\n"
    L18_2 = _U
    L19_2 = "discord_logs_player_char"
    L18_2 = L18_2(L19_2)
    L19_2 = " **"
    L20_2 = L4_2.identifier
    L21_2 = "**"
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
    L5_2.description = L6_2
    L6_2 = DeliveryRewardWebhookLink
    L5_2.webhookLink = L6_2
    L3_2 = L5_2
  elseif "cashRegister" == A2_2 then
    L5_2 = {}
    L5_2.color = "2924649"
    L6_2 = _U
    L7_2 = "discord_logs_cashregister"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L6_2 = _U
    L7_2 = "discord_logs_cashregister_desc"
    L8_2 = A1_2.amount
    L9_2 = A1_2.societyName
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = [[


]]
    L8_2 = _U
    L9_2 = "discord_logs_player_name"
    L8_2 = L8_2(L9_2)
    L9_2 = " **"
    L10_2 = L4_2.name
    L11_2 = "**"
    L12_2 = "\n"
    L13_2 = _U
    L14_2 = "discord_logs_player_discord"
    L13_2 = L13_2(L14_2)
    L14_2 = " **"
    L15_2 = L4_2.discord
    L16_2 = "**"
    L17_2 = "\n"
    L18_2 = _U
    L19_2 = "discord_logs_player_char"
    L18_2 = L18_2(L19_2)
    L19_2 = " **"
    L20_2 = L4_2.identifier
    L21_2 = "**"
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
    L5_2.description = L6_2
    L6_2 = CashRegisterWebhookLink
    L5_2.webhookLink = L6_2
    L3_2 = L5_2
  elseif "crafting" == A2_2 then
    L5_2 = {}
    L5_2.color = "7143529"
    L6_2 = _U
    L7_2 = "discord_logs_crafting"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L6_2 = _U
    L7_2 = "discord_logs_crafting_desc"
    L8_2 = A1_2.itemName
    L9_2 = A1_2.amount
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = [[


]]
    L8_2 = _U
    L9_2 = "discord_logs_player_name"
    L8_2 = L8_2(L9_2)
    L9_2 = " **"
    L10_2 = L4_2.name
    L11_2 = "**"
    L12_2 = "\n"
    L13_2 = _U
    L14_2 = "discord_logs_player_discord"
    L13_2 = L13_2(L14_2)
    L14_2 = " **"
    L15_2 = L4_2.discord
    L16_2 = "**"
    L17_2 = "\n"
    L18_2 = _U
    L19_2 = "discord_logs_player_char"
    L18_2 = L18_2(L19_2)
    L19_2 = " **"
    L20_2 = L4_2.identifier
    L21_2 = "**"
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
    L5_2.description = L6_2
    L6_2 = CraftingWebhookLink
    L5_2.webhookLink = L6_2
    L3_2 = L5_2
  elseif "mission" == A2_2 then
    L5_2 = {}
    L5_2.color = "2924649"
    L6_2 = _U
    L7_2 = "discord_logs_missions"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L6_2 = _U
    L7_2 = "discord_logs_missions_desc"
    L8_2 = A1_2.reward
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = [[


]]
    L8_2 = _U
    L9_2 = "discord_logs_player_name"
    L8_2 = L8_2(L9_2)
    L9_2 = " **"
    L10_2 = L4_2.name
    L11_2 = "**"
    L12_2 = "\n"
    L13_2 = _U
    L14_2 = "discord_logs_player_discord"
    L13_2 = L13_2(L14_2)
    L14_2 = " **"
    L15_2 = L4_2.discord
    L16_2 = "**"
    L17_2 = "\n"
    L18_2 = _U
    L19_2 = "discord_logs_player_char"
    L18_2 = L18_2(L19_2)
    L19_2 = " **"
    L20_2 = L4_2.identifier
    L21_2 = "**"
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
    L5_2.description = L6_2
    L6_2 = MissionWebhookLink
    L5_2.webhookLink = L6_2
    L3_2 = L5_2
  elseif "policeAlert" == A2_2 then
    L5_2 = {}
    L5_2.color = "13311232"
    L6_2 = _U
    L7_2 = "discord_logs_policealert"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L6_2 = _U
    L7_2 = "discord_logs_policealert_desc"
    L6_2 = L6_2(L7_2)
    L7_2 = [[


]]
    L8_2 = _U
    L9_2 = "discord_logs_player_name"
    L8_2 = L8_2(L9_2)
    L9_2 = " **"
    L10_2 = L4_2.name
    L11_2 = "**"
    L12_2 = "\n"
    L13_2 = _U
    L14_2 = "discord_logs_player_discord"
    L13_2 = L13_2(L14_2)
    L14_2 = " **"
    L15_2 = L4_2.discord
    L16_2 = "**"
    L17_2 = "\n"
    L18_2 = _U
    L19_2 = "discord_logs_player_char"
    L18_2 = L18_2(L19_2)
    L19_2 = " **"
    L20_2 = L4_2.identifier
    L21_2 = "**"
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
    L5_2.description = L6_2
    L6_2 = PoliceAlertWebhookLink
    L5_2.webhookLink = L6_2
    L3_2 = L5_2
  end
  L5_2 = {}
  L6_2 = {}
  L7_2 = L3_2.color
  L6_2.color = L7_2
  L7_2 = L3_2.title
  L6_2.title = L7_2
  L7_2 = L3_2.description
  L6_2.description = L7_2
  L7_2 = {}
  L8_2 = os
  L8_2 = L8_2.date
  L9_2 = Config
  L9_2 = L9_2.TimeFormat
  L10_2 = " - %d. %m. %Y"
  L9_2 = L9_2 .. L10_2
  L10_2 = os
  L10_2 = L10_2.time
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2()
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L7_2.text = L8_2
  L8_2 = L0_1.Icon
  L7_2.icon_url = L8_2
  L6_2.footer = L7_2
  L5_2[1] = L6_2
  L6_2 = PerformHttpRequest
  L7_2 = L3_2.webhookLink
  function L8_2(A0_3, A1_3, A2_3)
  end
  L9_2 = "POST"
  L10_2 = json
  L10_2 = L10_2.encode
  L11_2 = {}
  L12_2 = L0_1.Icon
  L11_2.avatar_url = L12_2
  L12_2 = L0_1.ServerName
  L11_2.username = L12_2
  L12_2 = L0_1.Icon
  L11_2.logo = L12_2
  L11_2.embeds = L5_2
  L10_2 = L10_2(L11_2)
  L11_2 = {}
  L11_2["Content-Type"] = "application/json"
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
DiscordLogs = L1_1
