



local main_mod = "SUPER"


hl.bind(main_mod .. " + Q", hl.dsp.window.close())
hl.bind(" SUPER + SHIFT + Q", hl.dsp.exec_cmd("hyprctl dispatch exit"))
hl.bind(main_mod .. " + RETURN", hl.dsp.exec_cmd("wezterm"))
hl.bind(main_mod .. " + SPACE", hl.dsp.exec_cmd("rofi -show drun -show-icons"))
hl.bind(main_mod .. " + D", hl.dsp.exec_cmd("wezterm start -e yazi"))


hl.bind(main_mod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(main_mod .. " + J", hl.dsp.focus({ direction = "down" }))
hl.bind(main_mod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(main_mod .. " + L", hl.dsp.focus({ direction = "right" }))

-- WorkSpaces
for i = 1, 10 do
	local key = i % 10
	hl.bind(main_mod .. " + " .. key, hl.dsp.focus({ workspace = i  }))
	hl.bind(main_mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(main_mod .. " + TAB", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(main_mod .. " + SHIFT + TAB", hl.dsp.focus({ workspace = "e-1" }))
-- End of WorkSpaces




