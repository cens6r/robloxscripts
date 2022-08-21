-- Backup for https://raw.githubusercontent.com/BlastingStone/MyLuaStuff/master/ttd3bypass.lua

-- thanks bluwu

for i,v in next, getreg() do
    if typeof(v) == "function" and islclosure(v) and not is_synapse_function(v) then
        if string.find(getinfo(v).source, "\n") then
            getreg()[i] = function() return end
        end
    end
end
