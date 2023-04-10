local input
local key = loadstring(game:HttpGet("https://pastebin.com/raw/B39DHEL7"))()

function begin()
   rconsoleprint("@@WHITE@@")
   rconsolename("gamesensicals")
   rconsoleprint("Get Key : https://pastebin.com/raw/B39DHEL7 \n")
   rconsoleprint("Enter key :")
   input = rconsoleinput()
   
   
   if input == key then
       rconsoleclear()
       rconsoleprint("@@LIGHT_GREEN@@")
       rconsolename("gamesensicals")
       rconsoleprint("Welcome!\n")
   elseif input ~= key then
       rconsoleprint("@@RED@@")
       rconsoleprint("Incorrect Key!")
       rconsolename("Wrong Key!")
       rconsoleclear()
       begin()
   end
end

begin()

local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/NotificationLibrary.lua"))()
local Notify = NotifyLibrary.Notify
local HWID = "amesensicals"
local macha = "You're whitelisted"
Notify({
   Title = "g"..HWID,
   Description = "[HWID] "..macha,
   Duration = 5
})
local HWIDTable = loadstring(game:HttpGet("https://raw.githubusercontent.com/T1m12/key-system-roblox/main/hwid.lua"))()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
print(HWIDTable)
print("[gamesensicals] You're whitelisted")
for i,v in pairs(HWIDTable) do
   if v == HWID then
       rconsoleprint("[gamesensicals] You're whitelisted")
       loadstring(game:HttpGet("https://raw.githubusercontent.com/T1m12/scriptlog/main/732931.lua", true))()
   else 
       rconsoleprint("[gamesensicals] You're not whitelisted contact iLight#9470 to be whitelisted. ")
   end
end

rconsoleprint("[gamesensicals] Discord Server : https://discord.gg/JWsceXxy")