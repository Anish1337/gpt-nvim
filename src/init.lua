local config = require('gpt_nvim.config')  
local api = require('gpt_nvim.api')        
local ui = require('gpt_nvim.ui')

vim.api.nvim_create_user_command('GPTAsk', function(opts)
    local response = api.call_gpt_api(opts.args)
    ui.display_response(response)
end, {nargs = 1})

