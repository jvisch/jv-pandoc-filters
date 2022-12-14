-- Adds current date if date isn't set. With metavalue 'dateformat-jv'
-- the format can be set. 
--
-- usage: 
--    pandoc --lua-filter=jv-add-date.lua <inputfiles> -o <outputfile>
--
-- example (in metadata)
--   dateformat-jv: "%d %B %G"
function Meta(m)
    if m.date == nil then
        local format = "%c"
        local temp = m["jv-dateformat"]
        if temp then
            format = pandoc.utils.stringify(temp)
        end
        m.date = os.date(format)
    end
    return m
end
