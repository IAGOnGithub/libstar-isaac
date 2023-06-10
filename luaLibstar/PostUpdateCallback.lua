local callback = {}

local libstarCore = require("luaLibstar.LibstarCore")

function callback:Init(modRef)
    modRef:AddCallback(ModCallbacks.MC_POST_UPDATE, function()
        if      Input.IsActionPressed(ButtonAction.ACTION_SHOOTLEFT,  0) or
                Input.IsActionPressed(ButtonAction.ACTION_SHOOTRIGHT, 0) or
                Input.IsActionPressed(ButtonAction.ACTION_SHOOTUP,    0) or
                Input.IsActionPressed(ButtonAction.ACTION_SHOOTDOWN,  0) then
            
            libstarCore:TrySpawn(Isaac.GetPlayer())
        end
        libstarCore:OnPostUpdate()
    end)
end

return callback

