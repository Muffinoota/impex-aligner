Aligner = require './aligner'

module.exports =
    config:
        alignmentSpaceChars:
            type: 'array'
            default: [';']
            items:
                type: "string"
            description: "insert space in front of the character (a=1 > a =1)"
            order: 2
        alignBy:
            type: 'array'
            default: [';']
            items:
                type: "string"
            description: "consider the order, the left most matching value is taken to compute the alignment"
            order: 1
        addSpacePostfix:
            type: 'boolean'
            default: true
            description: "insert space after the matching character (a=1 > a= 1) if character is part of the 'alignment space chars'"
            order: 3

    activate: (state) ->
        atom.commands.add 'atom-workspace',

            'impex-aligner:alignMultiple': ->
                editor = atom.workspace.getActivePaneItem()
                alignLinesMultiple editor

alignLines = (editor) ->
    spaceChars       = atom.config.get 'impex-aligner.alignmentSpaceChars'
    matcher          = atom.config.get 'impex-aligner.alignBy'
    addSpacePostfix  = atom.config.get 'impex-aligner.addSpacePostfix'
    a = new Aligner(editor, spaceChars, matcher, addSpacePostfix)
    a.align(false)
    return

alignLinesMultiple = (editor) ->
    spaceChars       = atom.config.get 'impex-aligner.alignmentSpaceChars'
    matcher          = atom.config.get 'impex-aligner.alignBy'
    addSpacePostfix  = atom.config.get 'impex-aligner.addSpacePostfix'
    a = new Aligner(editor, spaceChars, matcher, addSpacePostfix)
    a.align(true)
    return
