local DMW = DMW
DMW.Rotations.WARLOCK = {}
local Warlock = DMW.Rotations.WARLOCK
local UI = DMW.UI

function Warlock.Settings()
    UI.HUD.Options = {
        [1] = {
            Curse = {
                [1] = {Text = "Curse |cFF00FF00Enabled", Tooltip = ""},
                [2] = {Text = "Curse |cffff0000Disabled", Tooltip = ""}
            }
        }
    }
    UI.AddDropdown("Pet", nil, {"Disabled", "Imp", "Voidwalker", "Succubus", "Felhunter"}, 1, true)
    UI.AddToggle("Auto Buff", "Auto buff with Demon Skin/Armor", true)
    UI.AddToggle("Create Healthstone", nil, true)
    UI.AddToggle("Create Soulstone", nil, true)
    UI.AddToggle("Soulstone Player", "Auto Soulstone on player outside instances", true)
    UI.AddToggle("Life Tap", nil, true)
    UI.AddToggle("Life Tap OOC", "Activate Life Tap usage outside combat", false)
    UI.AddRange("Life Tap Mana", "Mana pct to use Life Tap", 0, 100, 1, 60)
    UI.AddRange("Life Tap HP", "Minimum player hp to use Life Tap", 0, 100, 1, 80)
    UI.AddToggle("Safe Life Tap", "Do not Life Tap if you have aggro", false, true)
    UI.AddToggle("Dark Pact", nil, false)
    UI.AddToggle("Dark Pact OOC", "Activate Life Tap usage outside combat", false)
    UI.AddRange("Dark Pact Mana", "Mana pct to use Dark Pact", 0, 100, 1, 60)
    UI.AddRange("Dark Pact Pet Mana", "Pet mana pct to use Dark Pact", 0, 100, 1, 35)
    UI.AddToggle("Auto Target", "Auto target units when in combat and target dead/missing", false)
    UI.AddToggle("Auto Target Quest Units", nil, false)

    UI.AddTab("DPS")
    UI.AddToggle("Auto Pet Attack", "Auto cast pet attack on target", true)
    UI.AddToggle("Auto Attack In Melee", "Will use normal attack over wand if target is in melee range", false)
    UI.AddDropdown("Shadow Bolt Mode", "Select Shadow Bolt mode", {"Disabled", "Always", "Only Nightfall"}, 2)
    UI.AddRange("Shadow Bolt Mana", "Minimum mana pct to cast Shadow Bolt", 0, 100, 1, 35)
    UI.AddToggle("Searing Pain", "Use Searing Pain when Shadow Bolt is disabled or not castable", false)
    UI.AddRange("Multidot Limit", "Max number of units to dot", 1, 10, 1, 3, true)
    UI.AddToggle("Amplify Curse", "Use Amplify Curse when using CDs", true, true)
    UI.AddDropdown("Curse", nil, {"Disabled", "Curse of Agony", "Curse of Shadow", "Curse of the Elements", "Curse of Recklessness", "Curse of Weakness", "Curse of Tongues", "Curse of Idiocy", "Curse of Doom"}, 2)
    UI.AddToggle("Cycle Curse", "Spread Curse to all enemies", true)  
    UI.AddToggle("Corruption", nil, true)
    UI.AddToggle("Cycle Corruption", "Spread Corruption to all enemies", false)
    UI.AddToggle("Multi Dot Corruption Rank 1", "Use rank 1 corruption for multi dotting", false, true)
    UI.AddToggle("Immolate", nil, true)
    UI.AddToggle("Cycle Immolate", "Spread Immolate to all enemies", false)
    UI.AddToggle("Siphon Life", nil, true)
    UI.AddToggle("Cycle Siphon Life", "Spread Siphon Life to all enemies", false)
    UI.AddToggle("Shadowburn", "Shadowburn execute on max shards", false, true)
    UI.AddRange("Shadowburn TTD", "TTD to use Shadowburn", 0, 15, 1, 3)
    UI.AddRange("Shadowburn HP", "Health percent to use Shadowburn", 0, 15, 1, 3)
    UI.AddToggle("Drain Life Filler", "Use Drain Life as filler over wanding, use this for drain tanking", false)
    UI.AddRange("Drain Life Filler HP", "Player HP to start using drain life over wanding", 0, 100, 1, 80)
    UI.AddToggle("Use Fear", "Use Fear when Play HP is low", false)
    UI.AddRange("Fear HP", "Player HP to start fear", 0, 100, 1, 80)

    UI.AddTab("Defensive")
    UI.AddToggle("Healthstone", nil, true)
    UI.AddToggle("Pet Tanking", nil, true)
    UI.AddRange("Healthstone HP", nil, 0, 100, 1, 35)
    UI.AddToggle("Drain Life", nil, true)
    UI.AddRange("Drain Life HP", nil, 0, 100, 1, 25)
    UI.AddToggle("Health Funnel", "Activate Health Funnel, will only use if player HP above 60", false)
    UI.AddRange("Health Funnel HP", "Pet HP to cast Health Funnel", 0, 100, 1, 20)
    UI.AddToggle("Sacrifice", "Activate Sacrifice", true)
    UI.AddRange("Sacrifice HP", "Player HP to cast Sacrifice", 0, 100, 1, 20)
    UI.AddToggle("Luffa", "Auto use luffa trinket", true)
    UI.AddToggle("Shadow Ward", "Auto cast shadow ward when targeting priest or warlock players", true)

    UI.AddTab("Utility")
    UI.AddToggle("Fear Bonus Mobs", "Auto fear non target enemies when solo", false)
    UI.AddToggle("Fear Solo Farming", "Auto fear target, useful for higher level chars using voidwalker", false)
    UI.AddToggle("Drain Soul Snipe", "Try to auto snipe enemies with drain soul, useful for shard farming or Improved Drain Soul talent", false)
    UI.AddToggle("Stop DS At Max Shards", "Stop using Drain Soul when max shards reached", false)
    UI.AddToggle("Auto Delete Shards", "Activate automatic deletion of shards from bags, set max below", false)
    UI.AddRange("Max Shards", "Control max number of shards in bag", 0, 30, 1, 4)

    --
    DMW.Helpers.Rotation.CastingCheck = false
end
