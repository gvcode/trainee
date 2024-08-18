function RawBlock(el)
    local comment = el.text:match("^<!%-%- *(.-) *%-%->")
    if comment then
        return pandoc.Para({pandoc.Strong("Adicionar/Editar:"), pandoc.Space(), pandoc.Str(comment)})
    end
end

function RawInline(el)
    local comment = el.text:match("^<!%-%- *(.-) *%-%->")
    if comment then
        return pandoc.Span({pandoc.Strong("Adicionar/Editar:"), pandoc.Space(), pandoc.Str(comment)})
    end
end
