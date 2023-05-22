# CLI Tools

This role installs all the CLI tools on the system. The goal of this role is to
get everything set up for working in the terminal.

## Installs

- [lf](https://github.com/gokcehan/lf)
- [helix](https://github.com/helix-editor/helix)
- [bartib](https://github.com/nikolassv/bartib)
- [fish](https://fishshell.com/)
- [exa](https://github.com/ogham/exa)
- [just](https://github.com/casey/just)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [starship](https://starship.rs/)
- [wl-clipboard](https://github.com/bugaevc/wl-clipboard)

The ansible scripts also check whether some required tools are installed
already. If that is not the case, Ansible will install them as well during
these steps. An example is [cargo](https://doc.rust-lang.org/cargo/), which is
required for installing bartib.

## Usage

These tools are all configured to my personal preferences and you might not
like them like that. Luckily, you can fork this repository and change the
things which you don't like, and/or are missing. Nevertheless, I'll document
the usage of these tools here for your enjoyment, and as a reference for
myself.

### Helix

The [helix editor](https://github.com/helix-editor/helix) is amazing and it has
brought me back to the terminal (I hopped between Emacs and the Jetbrains suite
for a while). I especially like the fact that it has built-in support for
[LSP](https://en.wikipedia.org/wiki/Language_Server_Protocol) and
[Tree Sitter](https://tree-sitter.github.io/tree-sitter/). You don't even need
to configure them yourself! Installing the LSP that you need is enough.

I use helix by invoking the `hx` command in the terminal and start with editing
my files. Some keybindings which I find myself using very often:

- `<space>f` -> Open the fuzzy file picker
- `<space>b` -> Open the fuzzy picker for open buffers
- `<ctrl>z` -> Suspend helix to continue working in the terminal, go back with
  `fg`
- `<space>?` -> Discover new commands by fuzzy finding them

I also configured some non-default bindings for my own workflow.

First, I made it such that you can exit Insert-mode via `<Ctrl>c`. That meant
that I needed to remap the comment command, which is now `<Alt>/`.

I also like to create [Justfiles](https://github.com/casey/just) at the root of
my repositories with the formatting command for all my files. I can invoke the
`just format` command from inside helix with the `<space>ee` binding. This
saves all my buffers and formats them using the external command. Then I can
reload with `<space>ea` after the fact. The reason that I have 2 separate
bindings for that is that reloading the files is too fast if you do it
immediately.

I have also tried to create a kind of snippet for the
[Markdown code-block](https://www.markdownguide.org/basic-syntax/#code-blocks-1)
at `<space>ib`. In the future I want to create more snippets there.

### Fish

I use the [fish shell](https://fishshell.com/) in my daily work. It provides me
with useful completions on the fly, and I have gone too far down the rabbit
hole to switch to something like [zsh](https://www.zsh.org/).

Working with the fish shell is relatively straightforward and I haven't changed
much from the default. I aliased some commands to make them generate their
output with more colors.

### Gitui

In general, I try to run git commands from the command-line. However, sometimes
I get in the flow during development and I end up creating more than I planned.
In these situations, I like to create separate commits for each functionality.

[Gitui](https://github.com/extrawurst/gitui) provides the comfort of a git GUI
inside the terminal! It doesn't fully replace all functionality from the git
commandline, but they work well together.

My configuration for gitui consists of some colors (to fit my theme) and
remapping some keys to be vim-movements instead of arrow-keys.

### Lf

[lf](https://github.com/gokcehan/lf) is my terminal file manager. It's fast and
the UI looks great. You can also easily make it work together with other tools
through writing some scripts.

The additions that I made can be found in the [lfrc](roles/cli-tools/lf/lfrc)
file:

- `ad` -> Add a new Directory
- `af` -> Add a new File

### Zoxide

[Zoxide](https://github.com/ajeetdsouza/zoxide) is a fast way to navigate the
terminal. Instead of manually using the `cd` command for each directory,
`zoxide` remembers your previous locations. Once you've visited a location, you
can revisit it by typing a partial path. For instance, if I've previously been
to the "workstation-as-code" directory, I can quickly navigate there again by
typing `z work`, and `zoxide` will locate it for me.

The ansible scripts will setup the `fish` terminal to enable the `z` command.
