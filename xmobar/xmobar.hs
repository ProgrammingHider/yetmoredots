-- This is the New "xmobarrc" Configuation File for the XMonad Window Manager. :
-- This file is a rewrite of the Original ".Xmobarrc". :
-- This and the Original ".Xmobarrc" are forks of the file: "xmobar-single.hs" from the repository vicfryzel/xmonad-config.
-- Credit Goes to vicfryzel for the "xmobar-single.hs" configuation file. :
-- You May Fork This Repository (https://gitlab.com/ProgrammingHider/monadweed) and edited to your Likeing.
-- This File and The Repository are licensed under The Unlicense. :
-- All Forks must mention Me (ProgrammingHider) for the forked version of These Files! :
-- All Forks must also mention vicfryzel (github.com/vicfryzel) as the Original Creator of These Files! :
-- Enjoy :)

-- This xmobar config is for a single 4k display (3840x2160) and meant to be
-- used with the stalonetrayrc-single config.
--
-- If you're using a single display with a different resolution, adjust the
-- position argument below using the given calculation.
Config {
    -- Position xmobar along the top, with a stalonetray in the top right.
    -- Add right padding to xmobar to ensure stalonetray and xmobar don't
    -- overlap. stalonetrayrc-single is configured for 12 icons, each 23px
    -- wide. 
    -- right_padding = num_icons * icon_size
    -- right_padding = 12 * 23 = 276
    -- Example: position = TopP 0 276
    position = TopP 0 144,
    font = "xft:roboto-9.5",
    bgColor = "#282a36",
    fgColor = "#ffffff",
    lowerOnStart = False,
    overrideRedirect = False,
    allDesktops = True,
    persistent = True,
    commands = [
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{"
}
