if status is-interactive
    # Commands to run in interactive sessions can go

    # Atuin history search - only on ctrl + r
    set -gx ATUIN_NOBIND "true"
    atuin init fish | source
    bind \cr _atuin_search

    abbr ec 'emacsclient -nw'

    # Zellij completions
    source ~/.config/fish/completions/zellij.fish
end
