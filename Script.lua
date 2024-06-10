   local Rayfield = loadstring(game:HttpGet('https://github.com/Beans2023091124/Ultimate-Football-Script/blob/main/Script.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "🏈 Ultimate Football script🏈",
   LoadingTitle = "Lokii HUB",
   LoadingSubtitle = "by Lokii",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "youtubebesthub<3"
   },
   Discord = {
      Enabled = true,
      Invite = "https://discord.gg/Pk5mhXqcXr", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Ultimate Football / key",
      Subtitle = "Link In Discord",
      Note = "Join server from misc tab",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Catching🏈", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Mag Script")

Rayfield:Notify({
   Title = "You Exeucuted My Script Now Dont Get Dogged",
   Content = "Best Free Gui",
   Duration = 5.0,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "InfiniteJump",
   Callback = function()
game.StarterGui:SetCore("SendNotification", {
    Title = "ReDevs";
    Text = "- Infinite Jump executed Spam the space button as you can.";
    Icon = "nil;
    Duration = 3;
})
 
_G.infinjump = true
 
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
if _G.infinjump then
if k:byte() == 32 then
Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
Humanoid:ChangeState("Jumping")
wait(0.1)
Humanoid:ChangeState("Seated")
end
end
end)
 
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
k = k:lower()
if k == "f" then
if _G.infinjump == true then
_G.infinjump = false
else
_G.infinjump = true
end
end
end)
 

   end,
})

local Slider = MainTab:CreateSlider({
   Name = "mag script slider",
   Range = {0, 80},
   Increment = 10,
   Suffix = "WS",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = Tab:CreateSlider({
   Name = "jump power slider ",
   Range = {0, 50},
   Increment = 10,
   Suffix = "JP",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
             game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})
