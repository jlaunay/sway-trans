# sway-trans

[![ShellCheck](https://github.com/jlaunay/sway-trans/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/jlaunay/sway-trans/actions/workflows/shellcheck.yml)

sway-trans is a tiny bash utility that sets alpha attribute of an Hyprland window.

## Installation

1. Using AUR package [sway-trans-git](https://aur.archlinux.org/packages/sway-trans-git)
2. Manually by using `make PREFIX=/usr`

## Dependencies

   - swaymsg

## Usage
### Command line
```sh
Usage: sway-trans [plus|minus]

  plus    Increase current Window opacity
  minus   Decrease current Window opacity
 ```

 ### Sway keybind
 You can configure a key binding to exec `sway-trans`, see [Sway wiki](https://github.com/swaywm/sway/wiki/Shortcut-handling) for more information.

 Below is an excerpt from the Sway config file using `SUPER + SHIFT` key and mouse wheel `up/down` as binding.
```jsonc
# Bind mouse wheel scrool to adjust window opacity
set $Super Mod4
bindsym --whole-window $Super+Shift+button4 exec sway-trans plus
bindsym --whole-window $Super+Shift+button5 exec sway-trans minus
```

