local awful = require("awful")
local gears = require("gears")
local naughty = require("naughty")
local my_net_speed = awful.widget.watch("bash -c 'netspeed'", 1)
my_net_speed:buttons(gears.table.join(
	awful.button({}, 1, function()
		naughty.notify({
			text = "This is Netspeed widget",
			timeout = 2,
			screen = mouse.screen,
		})
	end),
	awful.button({}, 3, function()
		awful.spawn.with_shell("kitty -e nmtui")
	end)
))

return my_net_speed
