local Table =  {}

function Table.intersect(Table1 , Table2)

    local TableIntersect = {}

    local FlipedTable = Table.tableFlip(Table2)

    for Key,Value in pairs(Table1) do

        if FlipedTable[Value] ~= nil then
            table.insert(TableIntersect, Value)
        end

    end

    return TableIntersect

end

function Table.in(Variable , TableToCheck)

    for Key,Value in pairs(TableToCheck) do
        
        if Value == Variable then
            return true
        end

    end

    return false

end

function Table.flip(Table)

    -- be careful when using this method
    -- in lua table functions like "table.getn" for example do not work with associative tables

    local FlipedTable = {}

    for Key,Value in pairs(Table) do
        FlipedTable[Value] = Key
    end

    return FlipedTable

end

function Table.merge(Table1, Table2)

    local MergedTable = {}

    MergedTable = Table1

    for Key, Value in ipairs(Table2) do
       table.insert(MergedTable, Value)
    end 
  
    return MergedTable
end

function Table.filter(Table)

    local FilteredTable = {}
    local Hash = {}

    for Key,Value in ipairs(Table) do
        if (not Hash[Value]) then
            FilteredTable[#FilteredTable+1] = Value
            Hash[Value] = true
        end
     
     end
  
    return FilteredTable
end

return Table