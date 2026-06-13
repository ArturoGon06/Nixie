

local wezterm = require "wezterm" local config =
    wezterm
        .config_builder()

            config.automatically_reload_config = true

                                                 config.font =
        wezterm.font("Iosevka Nerd Font") config.font_size =
            12

            config.enable_tab_bar = false

                                    config.window_background_opacity = 0.25

    return config
