local m = {}

function m.getLink(languages)
    local linkLanguages = ""
    for i, v in pairs(languages) do
        linkLanguages = linkLanguages .. (i ~= 1 and "," or "") .. v
    end

    return "https://skillicons.dev/icons?i=" .. linkLanguages
end

function m.createOutput(l)
    local file = io.open("output.md", 'w')
    if file then
        file:write("[![skill-icons](" .. m.getLink(l) .. ")](https://skillicons.dev)")
        file:close()
    end
    return
end

return m
