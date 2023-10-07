-- Alias for function, that set new keybindings
local map = vim.api.nvim_set_keymap

-- Normal mode keybinding setter
function Nnm(key, command)
	map('n', key, command, {noremap = true})
end

-- Normal mode keybinding setter
function Nm(key, command)
	map('n', key, command, {noremap = false})
end

-- Input mode keybinding setter
function Nim(key, command)
	map('i', key, command, {noremap = true})
end

-- Input mode keybinding setter
function Im(key, command)
	map('i', key, command, {noremap = false})
end

-- Visual mode keybinding setter
function Nvm(key, command)
	map('v', key, command, {noremap = true})
end

-- Visual mode keybinding setter
function Vm(key, command)
        map('v', key, command, {noremap = false})
end

-- Terminal mode keybinding setter
function Ntm(key, command)
	map('t', key, command, {noremap = true})
end

-- Terminal mode keybinding setter
function Tm(key, command)
	map('t', key, command, {noremap = false})
end
