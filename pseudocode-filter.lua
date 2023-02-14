local function reconcile_pseudocode(blk)
    -- Check if the block is a code block with the "pseudocode" class
    if blk.t == "CodeBlock" and blk.classes[1] == "pseudocode" then
        -- Create a new block with the same content as the original block
        local new_blk = pandoc.CodeBlock(blk.text, blk.attr)

        -- Set the classes of the new block to "pseudocode" and "tex"
        new_blk.classes = {"pseudocode", "tex"}

        -- Return the new block
        return new_blk
    end
end

return {
    {
        CodeBlock = reconcile_pseudocode,
    }
}



local function reconcile_pseudocode(blk)
    -- Check if the block is a code block with the "pseudocode" class
    if blk.t == "CodeBlock" and blk.classes[1] == "pseudocode" then
        -- Create a new block with the same content as the original block
        local new_blk = pandoc.CodeBlock(blk.text, blk.attr)

        -- Set the classes of the new block to "pseudocode" and "tex"
        new_blk.classes = {"pseudocode", "tex"}

        -- Set the attributes of the new block to include the "data-line-numbers" attribute
        new_blk.attr = {
            classes = {"pseudocode", "tex"},
            ["data-line-numbers"] = "true"
        }

        -- Return the new block
        return new_blk
    end
end

return {
    {
        CodeBlock = reconcile_pseudocode,
    }
}
