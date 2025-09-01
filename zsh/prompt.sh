# PS1="$"
[ -f "${HOME}/.config/zsh/promptScripts/git.sh" ] && source "${HOME}/.config/zsh/promptScripts/git.sh";
# Prompt is not updating, the function returns the value when the zshrc is loaded and it gets fixed with the prompt
# Find a way to update the prompt after every command is executed
# PS1="$PS1 `git_current_branch`"
