-- print("---- jv-answer-checkbox ------------------------------")
-- if not FORMAT:match 'html' then
--     print("!! jv-answer-checkbox can only be used on HTML output")
-- end

local counter = 0

function addCheckBox(elm)
    if FORMAT:match('html') then
        if elm.classes:includes('answer') then
            counter = counter + 1
            local id = "answercheckbox" .. counter
            return {
                pandoc.RawInline("html", '<input type="checkbox" id="'..id..'" class="answer">'), 
                pandoc.RawInline("html", '<label class="answer" for="'..id..'">antwoord</label>'), 
                elm
            }
        end
    end
    return nil -- no changes
end

-- Expliciete volgorde 
return {{
    Div = addCheckBox
}}
