-- Filter om DIV-elementen te verwijderen. Geef in 
-- de meta-data aan welke class(es) verwijderd moeten
-- worden. 
local divs = {}

function GetDivsToRemove(m)
    local divs_ = m["jv-remove-divs"]
    if (divs_) then
        if (pandoc.utils.type(divs_) == 'string') then
            local temp = pandoc.utils.stringify(divs_)
            temp = string.gsub(temp,' ', '')
            table.insert(divs, temp)
        else
            for i, v in ipairs(divs_) do
                table.insert(divs, pandoc.utils.stringify(v))
            end
        end
        print("Divs to be removed: " .. table.concat(divs, ", "))
    end
end

function RemoveDiv(elm)
    if #divs > 0 then
        for i, v in ipairs(divs) do
            if elm.classes:includes(v) then
                return {} -- div is removed
            end
        end
    end
    return elm
end

-- Expliciete volgorde nodig, eerst Meta dan Div
return {{
    Meta = GetDivsToRemove
}, {
    Div = RemoveDiv
}}
