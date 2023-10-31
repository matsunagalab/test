tell app "Terminal"
	activate
	set shell to do script " cd $(pwd)"
	do script "setopt HIST_IGNORE_SPACE" in shell
	do script " sed -i '' '$d' ~/.zsh_history" in shell
	do script " fc -R ~/.zsh_history" in shell
	set the bounds of the front window to {1, 1, 400, 400}
	do script " export ON_NEW_TERMINAL=1" in shell
	do script " ssh crab" in shell
	do script " ssh m1" in shell
	do script " watch nvidia-smi" in shell
	do script " unsetopt HIST_IGNORE_SPACE" in shell
end tell
