local awful = require("awful")
local battery = awful.widget.watch("bash -c 'disk.sh' ", 300)

return battery


