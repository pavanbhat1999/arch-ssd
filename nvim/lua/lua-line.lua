require'lualine'.setup {
    options = {icons_enabled = true, theme = 'solarized_dark'},
    sections = {
        lualine_c = {
            {
                'filename',
                file_status = true, -- displays file status (readonly status, modified status)
                path = 2, -- 0 = just filename, 1 = relative path, 2 = absolute path
                shorting_target = 40 -- Shortens path to leave 40 space in the window
                -- for other components. Terrible name any suggestions?
            }
        }
    }
}
-- require this lua file somewhere in your `init.vim`, or use `:lua`

-- local generator = function()
-- local el_segments = {}

---- Option 2, just a function that returns a string.
-- local extensions = require('el.extensions')
-- table.insert(el_segments, extensions.mode) -- mode returns the current mode.

---- Option 3, returns a function that takes in a Window and a Buffer. See |:help el.Window| and |:help el.Buffer|
----
---- With this option, you don't have to worry about escaping / calling the function in the correct way to get the current buffer and window.
-- local file_namer = function(_window, buffer)
-- return buffer.name
-- end
-- table.insert(el_segments, file_namer)

---- Option 4, you can return a coroutine.
----  In lua, you can cooperatively multi-thread.
----  You can use `coroutine.yield()` to yield execution to another coroutine.
----
---- For example, in luvjob.nvim, there is `co_wait` which is a coroutine version of waiting for a job to complete. So you can start multiple jobs at once and wait for them to all be done.
-- table.insert(el_segments, extensions.git_changes)

---- Option 5, there are several helper functions provided to asynchronously
----  run timers which update buffer or window variables at a certain frequency.
----
----  These can be used to set infrequrently updated values without waiting.
-- local helper = require("el.helper")
-- table.insert(el_segments, helper.async_buf_setter(
-- win_id,
-- 'el_git_stat',
-- extensions.git_changes,
-- 5000
-- ))

-- return el_segments
-- end

---- And then when you're all done, just call
-- require('el').setup { generator = generator }

