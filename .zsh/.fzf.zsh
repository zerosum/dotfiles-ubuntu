# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/share/doc/fzf/examples/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/share/doc/fzf/examples/key-bindings.zsh"

# common setting
export FZF_DEFAULT_OPTS='--height 20% --reverse --border --prompt="? "'
export FZF_ALT_C_OPTS="--select-1 --exit-0"
