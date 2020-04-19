autoload -U add-zsh-hook

print_command_time() {
}

add-zsh-hook preexec print_command_time
