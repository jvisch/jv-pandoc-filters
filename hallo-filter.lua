print("---- HALLOOOOTJES -------------------------------------------------")

-- function Strong(elem)
--     print(elem)
--     print("---- STRONG FOUND -------------------------------------------------")
--     return pandoc.Strong(pandoc.SmallCaps(elem.c))
-- end

-- function Meta(m)
--     print(">>----- Meta -----------------------------")
--     print(type(m))
--     print(pandoc.utils.type(m))
--     -- print(pandoc.utils.stringify(m.dateformat))
--     print(os.date("%d %B %G"))
--     print(">>----- Meta -----------------------------")
-- end

-- function Meta(m)
--     print(">>----- Meta -----------------------------")
--     for k, v in pairs(m) do
--         print(k)
--     end
--     print(">>----- Meta -----------------------------")
--     print(m['dateformat-jv'])
-- end

-- function Meta(m)
--     print("---- META FOUND -------------------------------------------------")
--     print(m.dateformat)
--     print(type(m.dateformat))
--     print(pandoc.utils.type(m.dateformat))
--     if(m.dateformat == "XX") then
--         print("----------- xxx ------------------------")
--     else
--         print("-------- NOOOOOO --------------------------")
--     end
--     if m.date == nil then
--         print("---- META NO DATE -------------------------------------------------")
--         -- m.date = os.date("%B %e, %Y")
--         m.date = os.date("%c")
--         print(m.date)
--     end

--     return m

-- end
