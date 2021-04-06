function checkout
    set -l selected_branch (
        git branch --sort=-committerdate | sed "s/.* //" | fzf --preview="git log --color {}"
    )
    command git checkout $selected_branch
end
