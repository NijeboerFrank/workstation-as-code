# Gnome Role

This Ansible role installs all the Gnome specific settings for my workstation.

## Workspaces

I like to use workspaces as if Gnome was a
[tiling window manager](https://en.wikipedia.org/wiki/Tiling_window_manager).
Therefore, this role sets up Gnome such that it uses workspaces (9 by default).
Navigating to them is done through `<super>{num}` where `{num}` is the number
of the workspace you want to navigate to. `<super><shift>{num}` moves the
currently selected window to the workspace defined by `{num}`.

## Keybindings

In addition to the keybindings mentioned above, I also have done some other
mappings.

The biggest impact is changing the caps-lock key to be an additional `ctrl`. In
my opinion, this is more ergonomic and I don't often find myself in need of the
CAPS functionality.

**Others**

- `<super><shift>{h,j,k,l}` for moving a window to the `left,below,above,right`
  monitor.
- `<super><ctrl>l` is for locking the screen

## Fonts

By default, this ansible role installs:

- [Iosevka](https://github.com/be5invis/Iosevka)
- [Ubuntu Mono](https://fonts.google.com/specimen/Ubuntu+Mono)
- [Droid Sans Mono](https://fonts.adobe.com/fonts/droid-sans-mono)
- [Fura Mono](https://eng.fontke.com/family/1009067/)
- [Fira Code](https://github.com/tonsky/FiraCode)

All the fonts are patched as Nerd Fonts through
[ryanoasis/nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

## Todo

- [ ] Document how to do font settings
- [ ] Refactor installing applications
