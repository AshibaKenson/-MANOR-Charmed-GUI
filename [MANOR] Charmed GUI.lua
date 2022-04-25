if game.PlaceId == 5594653581 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("[MANOR] Charmed GUI (BETA)", "DarkTheme")

    local MainMenu = Window:NewTab("Main Menu")
    local Section = MainMenu:NewSection("Unlock Characters")
    Section:NewButton("Neena", "Play as Neena!", function()
        local A_1 = "Neena"
        local Event = game:GetService("ReplicatedStorage").PickCharacter
        Event:FireServer(A_1)
    end)

    Section:NewButton("Wyatt", "Play as Wyatt!", function()
        local A_1 = "Wyatt"
        local Event = game:GetService("ReplicatedStorage").PickCharacter
        Event:FireServer(A_1)
    end)

    Section:NewButton("Enchantress", "Play as Enchantress!", function()
        local A_1 = "Enchantress"
        local Event = game:GetService("ReplicatedStorage").PickCharacter
        Event:FireServer(A_1)
    end)

    Section:NewButton("Queenie", "Play as Queenie!", function()
        local A_1 = "Queenie"
        local Event = game:GetService("ReplicatedStorage").PickCharacter
        Event:FireServer(A_1)
    end)

    local Section = MainMenu:NewSection("Spells")
    Section:NewButton("Activate Future Powers", "Users | Paige, Piper, Phoebe, Prue", function()
        local A_1 = "Hear these words, hear the rhyme. We send to you this burning sign. Then our future selves we'll find, in another place and time"
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
    end)

    Section:NewButton("Bind Neena", "Users | Paige, Piper, Phoebe, Prue", function()
        local A_1 = "Earthly Goddess twisted by loss, we bind your magic, we bind your strength, we bind your power. Now and forever"
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
    end)

    Section:NewButton("Vanquish Shax", "Users | Paige, Piper, Phoebe, Prue", function()
        local A_1 = "Evil winds that blow, that which form below. No longer may you dwell, death takes you with this spell"
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
    end)

    Section:NewButton("Unlock Empathy (Gamepass)", "Users | Prue (Gamepass)", function()
        local A_1 = "Free the empath, release their gift. Let their pain be cast adrift"
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
    end)

    Section:NewButton("Hair Growth", "Users | Patience", function()
        local A_1 = "From short to long, my hair will become what it once was not"
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
    end)

    Section:NewButton("Sister Summoning Spell", "Users | Paige, Piper, Phoebe, Prue, Christy, Billie", function()
        local A_1 = "Powers of the sisters rise, course unseen across the skies"
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
    end)

    Section:NewButton("Purple Mist Protection Spell", "Users | Queenie", function()
        local A_1 = "Repellendum malum minatur"
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
    end)

    Section:NewButton("Restoration Spell", "Users | Queenie", function()
        local A_1 = "Restitue eum ad naturam"
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
    end)

    Section:NewButton("Descensum", "Users | Queenie", function()
        local A_1 = "Descensum"
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
    end)

    Section:NewButton("Flame Incovation Spell", "Users | Neena", function()
        local A_1 = "Cessere Flammas"
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
    end)

    local Section = MainMenu:NewSection("Character Mods (W.I.P.)")
    Section:NewButton("Increase Health (5)", "Increases the character's health!", function()
        print("Clicked")
    end)

    Section:NewButton("Increase Energy (5)", "Increases the character's energy!", function()
        print("Clicked")
    end)
    
    local Player = Window:NewTab("Player")
    local Section = Player:NewSection("Player Mods (Unfinished)")
    Section:NewSlider("WalkSpeed", "Controls the character's walk speed!", 50, 16, function(s) -- 50 (MaxValue) | 16 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    Section:NewSlider("JumpPower", "Controls the character's jump power!", 150, 50, function(s) -- 150 (MaxValue) | 50 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)


    local Section = Player:NewSection("Admin(s)")
    Section:NewButton("Infinite Yield", "ButtonInfo", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)

    local Teleports = Window:NewTab("Teleports")
    local Section = Teleports:NewSection("Locations (Unfinished)")
    Section:NewButton("Earth", "Teleports you to Earth!", function()
        function teleportTo(locationCFrame)
            local plyr = game.Players.LocalPlayer
            if plyr.Character then
                plyr.Character.HumanoidRootPart.CFrame = locationCFrame
            end
        end
        teleportTo(game:GetService("Workspace").UnderworldTP.EarthTP.CFrame)
    end)

    Section:NewButton("Underworld", "Teleports you to Underworld!", function()
        function teleportTo(locationCFrame)
            local plyr = game.Players.LocalPlayer
            if plyr.Character then
                plyr.Character.HumanoidRootPart.CFrame = locationCFrame
            end
        end
        teleportTo(game:GetService("Workspace").UnderworldTP.UnderworldLobbySpawn.CFrame)
    end)

    local Settings = Window:NewTab("Settings")
    local Section = Settings:NewSection("Display")
    Section:NewKeybind("Toggle GUI", "Toggles the window on and off!", Enum.KeyCode.RightControl, function()
        Library:ToggleUI()
    end)

    Section:NewDropdown("Themes (W.I.P.)", "Choose your own themes!", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
        print(currentOption)
    end)
    

    local Credits = Window:NewTab("Credits")
    local Section = Credits:NewSection("GUI by shellie#1470")
    local Section = Credits:NewSection("Kavo UI Library by xHeptc")
    local Section = Credits:NewSection("Infinite Yield by EdgelY")

    local Changelogs = Window:NewTab("Changelogs")
    local Section = Changelogs:NewSection("Current version: v1.0.3")
    local Section = Changelogs:NewSection("Last updated: 4/26/2022")

end