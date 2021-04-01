function checkout() {
	local selected_branch
	selected_branch=$(git branch --sort=-committerdate | sed "s/.* //" | fzf --preview="git log --color {}")
	git checkout $selected_branch
}

alias che="checkout"
