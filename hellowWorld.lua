local dlg = Dialog { title = "Hello World!" }

dlg:file { id = "file_selector",
    label = "Select File",
    title = "Select File",
    open = false,
    save = false,
    onchange = function()
        local data = dlg.data
        local filename = data.file_selector
        local otherSprite = Sprite({ fromFile = filename })
    end }

dlg:button {
    id = "cancel",
    text = "CANCEL",
    onclick = function()
        dlg:close()
        
    end
}

dlg:show { wait = false }
