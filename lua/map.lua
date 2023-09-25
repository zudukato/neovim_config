--require('core.closeWindows')
vim.g.mapleader = ' '

vim.keymap.set('i', 'qq', '<Esc>', { noremap = true })
vim.keymap.set('v', 'qq', '<Esc>', { noremap = true })
vim.keymap.set('n', 'qq', '<Esc>', { noremap = true })
vim.keymap.set('c', 'qq', '<Esc>', { noremap = true })
vim.keymap.set('o', 'qq', '<Esc>', { noremap = true })


vim.keymap.set('i', '<A-l>', '<right>', { noremap = true })
vim.keymap.set('i', '<A-h>', '<left>', { noremap = true })
vim.keymap.set('i', '<A-k>', '<up>', { noremap = true })
vim.keymap.set('i', '<A-j>', '<down>', { noremap = true })
vim.keymap.set('n', '<A-q>', ':q!<CR>', { noremap = true })


vim.keymap.set('n', '<Leader>t', ':NvimTreeFindFileToggle<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>q', ':lua closeWindows()<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>o', 'o<Esc>', { noremap = true })
vim.keymap.set('n', '<Leader><S-o>', '<S-o><Esc>', { noremap = true })

vim.keymap.set('n', '<S-h>', ':bp<CR>', { noremap = true })
vim.keymap.set('n', '<S-l>', ':bnext<CR>', { noremap = true })
vim.keymap.set('n', '<S-j>', '<Esc>', { noremap = true })
vim.keymap.set('n', '<S-k>', '<Esc>', { noremap = true })
vim.keymap.set('n', 'K', '<Esc>', { noremap = true })
vim.keymap.set('n', '<C-b>', ':!python %<CR>', { noremap = true })

--Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', 'zz', ':LspZeroFormat<CR>')

function closeWindows()
    vim.api.nvim_exec([[
                if (winheight(0) + &cmdheight + 2 != &lines) || (winwidth(0) != &columns) || len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) <= 1
                        call feedkeys(":q\n")
                else
                        call feedkeys(":bd\n")
                endif

]], false)
end
