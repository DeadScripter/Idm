local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Crab hub",
    SubTitle = "A Script Hub",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local main = Window:AddTab({ Title = "Main", Icon = "book" })
main:AddParagraph({ Title = "welcome to CrabHub", Content = "more updates soon!" })
main:AddButton({
    Title = "Copy Discord server invite",
    Callback = function()
        if setclipboard then
            setclipboard("https://discord.gg/Dan73jwkyX")
            Fluent:Notify({
                Title = "Copied!",
                Content = "Discord invite link copied to clipboard.",
                Duration = 3
            })
        else
            Fluent:Notify({
                Title = "Error",
                Content = "Clipboard not supported in your executor.",
                Duration = 3
            })
        end
    end
})

--  Grow a Garden
local grow = Window:AddTab({ Title = "Grow a Garden", Icon = "leaf" })
grow:AddButton({ Title = "Speed Hub", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
grow:AddButton({ Title = "No Lag Hub", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NoLag-id/No-Lag-HUB/refs/heads/main/Loader/LoaderV1.lua", true))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
grow:AddButton({ Title = "Astra V3", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://getastra.lol/loader.lua"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
grow:AddButton({ Title = "ESP + Calculator", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/m00ndiety/Grow-a-garden/refs/heads/main/Mutation-and-inventory-value-ESP"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
grow:AddButton({ Title = "Neox Script", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader", true))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

-- Prison Life
local prison = Window:AddTab({ Title = "Prison Life", Icon = "shield" })
prison:AddButton({ Title = "Rayan Script", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Rayanitoo/prison-life-v-1.0/refs/heads/main/made%20by%20rayan"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
prison:AddButton({ Title = "Admin", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/PXXuZ34e"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
prison:AddButton({ Title = "CorgiSide", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IsiahEngineer/PrizzExploitAdmin/refs/heads/main/PrisonLife"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
prison:AddButton({ Title = "Inf Stamina", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheLastqer/512/refs/heads/main/5343"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
prison:AddButton({ Title = "YardHaxx", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CorgiSideExploits/YardHaxx/refs/heads/main/GUI2OBF", true))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

-- universal
local universal = Window:AddTab({ Title = "Universal", Icon = "globe" })

universal:AddButton({ Title = "Edited Dex", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/memeenjoyer43/darkdex/refs/heads/main/script"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

universal:AddButton({ Title = "Sigma Spy", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/depthso/Sigma-Spy/refs/heads/main/Main.lua"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

universal:AddButton({ Title = "Infinite Yield", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end})
-- Kat
        local kat = Window:AddTab({ Title = "KAT", Icon = "crosshair" })

kat:AddButton({ Title = "OP Script", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NaikoScript/Kat-Plus/main/Script"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

kat:AddButton({ Title = "Infinite Ability", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zReal-King/Knife-Ability-Test/main/Gui"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

kat:AddButton({ Title = "Dark Script", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("http://darkhub.xyz/remote-script.lua", true))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

        
-- dahood

local dahood = Window:AddTab({ Title = "DaHood", Icon = "target" })
        
dahood:AddButton({ Title = "Silent Aim", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ezsee/silent-aim/refs/heads/main/lol"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

dahood:AddButton({ Title = "Aim Viewer", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ctrlleo/DaHood-AimView/refs/heads/main/--%20Service88888888888888888888s.txt"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

dahood:AddButton({ Title = "Skido", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yuvic123/SKIDO-V3/refs/heads/main/%40Siom4i_"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

dahood:AddButton({ Title = "Crystal Aimlock", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CrystalRebirth/Crystal-Lock/main/Crystal-Lock.lua"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

dahood:AddButton({ Title = "Atlas", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DetainedMonkey2891/Atlas/refs/heads/main/AtlasMain", true))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

-- Dead Rails
local deadRails = Window:AddTab({ Title = "Dead Rails", Icon = "train" })
deadRails:AddButton({ Title = "Auto Bonds", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
deadRails:AddButton({ Title = "Item Bringer", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/m00ndiety/Dead-rails/refs/heads/main/Full-GUI"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
deadRails:AddButton({ Title = "Auto Wins", Callback = function()
    local success, err = pcall(function()
        getgenv().auto_bond = true; getgenv().auto_win = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/m00ndiety/Dead-rails/refs/heads/main/Auto-Win-With-Bonds"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
deadRails:AddButton({ Title = "TP to Structures", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/m00ndiety/Stillwater/refs/heads/main/obf_Prisonteleport.lua.txt"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

-- Bee Swarm Simulator
local bee = Window:AddTab({ Title = "Bee Swarm Simulator", Icon = "bug" })
bee:AddButton({ Title = "Kron Script", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DevKron/Kron_Hub/refs/heads/main/version_1.0"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
bee:AddButton({ Title = "Auto Stuff OP", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DEBUG-COM/AnxietyHUB/refs/heads/main/anxietyhub"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
bee:AddButton({ Title = "Macrov Premium", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://scripts.macrov4.com/macrov4.lua"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

-- PS99
local ps99 = Window:AddTab({ Title = "PS99", Icon = "gem" })
ps99:AddButton({ Title = "6footScripts", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SlamminPig/6FootScripts/main/Scripts/PetSimulator99.lua"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
ps99:AddButton({ Title = "Speed Hub", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

-- Pets Go
local petsGo = Window:AddTab({ Title = "Pets Go", Icon = "paw-print" })
petsGo:AddButton({ Title = "6footScripts", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SlamminPig/6FootScripts/refs/heads/main/Scripts/PetsGo.lua"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
petsGo:AddButton({ Title = "Ather Scripts", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
petsGo:AddButton({ Title = "Speed Hub", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
petsGo:AddButton({ Title = "Zap", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://zaphub.xyz/Exec"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
petsGo:AddButton({ Title = "Antares", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BorisLua/AntaresHubSuaMaeNaMinhaCama/refs/heads/main/AntaresHubWorking.lua"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

-- Brookhaven
local brookhaven = Window:AddTab({ Title = "Brookhaven", Icon = "home" })
brookhaven:AddButton({ Title = "Nameless Script", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

-- Unnamed Shooter
local shooter = Window:AddTab({ Title = "Unnamed Shooter", Icon = "gun" })
shooter:AddButton({ Title = "Zlayx", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/hU5aMq1N"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
shooter:AddButton({ Title = "Nameless", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://pastefy.app/cdMmmTnv/raw"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
shooter:AddButton({ Title = "Dendrite", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dendrite-cc/Dendrite.cc/refs/heads/main/Loader"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
shooter:AddButton({ Title = "ESP + Aimbot", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://pastefy.app/q596kWCP/raw", true))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

-- Legends of Speed
local legends = Window:AddTab({ Title = "Legends of Speed", Icon = "activity" })
legends:AddButton({ Title = "Auto Farm & Dupe", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://orbitsc.net/los"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
legends:AddButton({ Title = "Speedos", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/StupidProAArsenal/main/main/Legenos%20of%20speedos"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
legends:AddButton({ Title = "Kevin Scripts", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kingggbinb/Script/refs/heads/main/legendofspeed.luau"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

-- Natural Disaster Survival
local nds = Window:AddTab({ Title = "Natural Disaster Survival", Icon = "cloud-lightning" })
nds:AddButton({ Title = "Telekinesis", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Telekinesis-12332"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
nds:AddButton({ Title = "NDSA Script", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nh1ck/Scripts/main/NDS_A%5EX"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

-- MM2
local mm2 = Window:AddTab({ Title = "Murder Mystery 2", Icon = "knife" })
mm2:AddButton({ Title = "Yarhm", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

-- Ninja Legends
local ninja = Window:AddTab({ Title = "Ninja Legends", Icon = "scroll" })
ninja:AddButton({ Title = "BT Project", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://lua-library.btteam.net/script-auth.txt"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
ninja:AddButton({ Title = "Helix Scripts", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AmeloxRUS/ninjalegendscripts/refs/heads/main/HelixScripts"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

-- Blade Ball
local bladeball = Window:AddTab({ Title = "Blade Ball", Icon = "circle" })
bladeball:AddButton({ Title = "Auto Parry", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Code4Zaaa/X7Project/main/Game/AutoParryOnly"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })
bladeball:AddButton({ Title = "DraWatX", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DraWatX/Project_01/main/DraWatX.lua"))()
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })

-- Murder vs Sheriffs
local mvs = Window:AddTab({ Title = "Murder vs Sheriffs", Icon = "balance" })
mvs:AddButton({ Title = "Nameless Script", Callback = function()
    local success, err = pcall(function()
        local way = "Throw" local target while true do task.wait() pcall(function() repeat target = game:GetService("Players"):GetPlayers()[math.random(#game:GetService("Players"):GetPlayers())] until target.Team == game:GetService("Teams").Sheriffs if target.Character:FindFirstChild("Head") then if target.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then game:GetService("Players").LocalPlayer.Character.Knife.Damage:FireServer(target.Character.UpperTorso,way) else game:GetService("Players").LocalPlayer.Character.Knife.Damage:FireServer(target.Character.HumanoidRootPart,way) end end end) end
    end)
    if not success then Fluent:Notify({ Title = "Script Execution Error", Content = tostring(err), Duration = 5 }) end
end })



local settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
InterfaceManager:SetLibrary(Fluent)
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetFolder("ScriptHub")
SaveManager:SetFolder("ScriptHub/Configs")
InterfaceManager:BuildInterfaceSection(settings)
SaveManager:BuildConfigSection(settings)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
SaveManager:LoadAutoloadConfig()

Window:SelectTab(1)
Fluent:Notify({ Title = "Script hub", Content = "Loaded successfully!", Duration = 8 })
