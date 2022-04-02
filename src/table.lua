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

return Table