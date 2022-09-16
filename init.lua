-- ver. 1.8 - LUA MODULES LOADER

registerForEvent("onInit", function()

    -- List all modules to load

        -- Utilities
        require("modules/utilities.lua")

        -- Cyberware
        require("modules/berserk_fixes.lua")
        require("modules/berserk_c5mk6.lua")
        require("modules/cyberdecks_abilities.lua")
        require("modules/cyberdeck_c4mk3.lua")    -- MILITECH GUEST
        require("modules/cyberdeck_c4mk6.lua")    -- MILITECH GUEST
        require("modules/cyberdeck_c5mk6.lua")
        require("modules/hyperbandwidthlink_leg.lua")
        require("modules/sandevistan_c4mk6.lua")    -- MILITECH GUEST
        require("modules/sandevistan_c5mk3.lua")
        require("modules/sandevistan_c5mk6.lua")
        require("modules/sandevistan_c6mk3.lua")  -- FUYUTSUKI GUEST
        require("modules/trascendence_leg.lua")
        require("modules/recipes.lua")

end)
