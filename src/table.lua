local Table =  {}

function Table.intersect(Table1 , Table2)

    local TableIntersect = {}

    local FlipedTable = Utils.tableFlip(Table2)

    for Key,Value in pairs(Table1) do

        if FlipedTable[Value] ~= nil then
            table.insert(TableIntersect, Value)
        end

    end

    return TableIntersect

end

function Table.inTable(Variable , TableToCheck)

    for Key,Value in pairs(TableToCheck) do
        
        if Value == Variable then
            return true
        end

    end

    return false

end

function Table.tableFlip(Table)

    -- be careful when using this method
    -- in lua table functions like "table.getn" for example do not work with associative tables

    local FlipedTable = {}

    for Key,Value in pairs(Table) do
        FlipedTable[Value] = Key
    end

    return FlipedTable

end

return Table