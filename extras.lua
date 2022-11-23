local cmds = {}

cmds.tableHasIndex = function(t, val)
    for i,v in pairs(t) do
        if i == val then
            return true
        end
    end

    return false
end

cmds.tableHasValue = function(t, val)
    for i,v in pairs(t) do
        if v == val then
            return true
        end
    end

    return false
end

return cmds
