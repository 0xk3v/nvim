local Terminal = require('nvim-terminal.terminal')
local Window = require('nvim-terminal.window')

local window = Window:new({
	position = 'botright',
	split = 'sp',
	width = 50,
	height = 10
})

terminal = Terminal:new(window)

