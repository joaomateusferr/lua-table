local Network =  {}

function Network.ipToLong(String) -- ignore ipv6

    Trokens = Utils.stringExplode('.', String)

    if table.getn(Trokens) ~= 4 then
        return false
    end 

    for Key,Value in pairs(Trokens) do

        if string.len(Value) < 1 or string.len(Value) > 3 then
            return false
        end

    end
 
    local G1,G2,G3,G4 = String:match("(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)")

    return 2^24*G1 + 2^16*G2 + 2^8*G3 + G4

end

return Network