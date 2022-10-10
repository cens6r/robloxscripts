local Hook = {}; Hook.__index = Hook

Hook.Type = {
    Index = "__index",
    Namecall = "__namecall",
    NewIndex = "__newindex"
}

function Hook.__new(self, params)
    local hook = setmetatable({}, Hook)

    hook.active = true

    params = params or {
        Type = "The hook type to use, refer to Hook.Type",
        Target = "The target instance / name of the target instance",
        Method = "The namecall method if namecall is the type",
        Index = "The index if index is the type",
        Func = "The function modifies the arguments"
    }

    if params["Type"] == nil then return error("[HOOK] :: Invalid params.") end

    local old; old = hookmetamethod(game, tostring(params.Type), function(this, ...)
        local args = {...}

        --#region CHECKS

        if checkcaller() then return old(this, ...) end
        if not (this == params.Target or tostring(this) == params.Target) then return old(this, ...) end
        if params.Type == Hook.Type.Namecall and getnamecallmethod() ~= params.Method then return old(this, ...) end
        if params.Type == Hook.Type.Index and tostring(args[1]) ~= params.Index then return old(this, ...) end

        --#endregion CHECKS

        --#region HOOK

        if hook.active then
            if params.Type == Hook.Type.Index then
                return params.Func()
            end

            return old(this, params.Func(args))
        end

        --#endregion HOOK

        return old(this, unpack(args))
    end)

    hook.old = old
    return hook
end

function Hook:Disconnect()
    self.active = false
end

return setmetatable(Hook, {__call = Hook.__new})
