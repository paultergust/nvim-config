# Neovim Configs


Nothing super important here. I'm just tired of doing the entire config by hand every time I change OS.

Feel free to use and/or adapt this for your needs. :D


Plugins are managed by [lazy.nvim](https://lazy.folke.io/installation), which
bootstraps itself and installs missing plugins when Neovim starts. Plugin specs
live in `lua/paultergust/plugins.lua`; settings remain in `after/plugin/`.

Use `:Lazy` to manage plugins, `:Lazy restore` to restore the revisions in
`lazy-lock.json`, and `:Lazy update` to upgrade them. Commit the lockfile after
intentional updates. The initial lockfile preserves the pre-migration revisions.
