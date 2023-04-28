local Webhook = "https://discord.com/api/webhooks/1097504209961754624/mJCNJIgwewdTKAnDjQ8a2DdgbbjrzgQVb35-8biXqS78sfUIQtTrgJV7TfmPre3xEJqc"
local Headers = {["content-type"] = "application/json"} 
local player = game.Players.LocalPlayer
local profile = player:GetUnder13() and "Child" or "Adult"
local id = player.UserId
local place_id = game.PlaceId
local place_name = game:GetService("MarketplaceService"):GetProductInfo(place_id).Name
 
local PlayerData =
{
       ["content"] = "",
       ["embeds"] = {
           {
           ["title"] = "**Script Activity**",
           ["description"] = game.Players.localPlayer.DisplayName.." Has executed the script.",
           ["icon_url"] = "https://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username="..player.Name,
           ["color"] = tonumber(0x2B6BE4),
           ["fields"] = {
               {
                   ["name"] = "Client HWID:",
                   ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                   ["inline"] = true
                },
 
                {
                    ["name"] = "Client Profile:",
                    ["value"] = "https://www.roblox.com/users/" .. id,
                    ["inline"] = false
                },
 
                {
                    ["name"] = "Place ID:",
                    ["value"] = "https://www.roblox.com/games/" .. place_id,
                    ["inline"] = false
                },
 
                {
                    ["name"] = "Account Age:",
                    ["value"] = player.AccountAge,
                    ["inline"] = false
                },
           },
        }
    }
}
 
local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
 
Request = http_request or request or HttpPost or syn.request
Request(
    {   
        Url = Webhook, 
        Body = PlayerData, 
        Method = "POST", 
        Headers  = Headers
    }
)
