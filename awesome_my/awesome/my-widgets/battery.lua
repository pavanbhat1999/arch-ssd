local awful = require("awful")
local gears = require("gears")
local naughty = require("naughty")
local battery = awful.widget.watch("bash -c 'sb-battery'", 1)
battery:buttons(gears.table.join(
	awful.button({}, 1, function()
		naughty.notify({
			text = "This is battery widget",
			timeout = 2,
			screen = mouse.screen,
		})
	end),
	awful.button({}, 4, function()
		awful.spawn.with_shell("xbacklight -inc 5")
	end),
	awful.button({}, 5, function()
		awful.spawn.with_shell("xbacklight -dec 5")
	end)
))

return battery
