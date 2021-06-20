function checkout
    # if no argument, fuzzy find a branch
    if [ -z "$argv" ];
        set -l selected_branch (
            git branch --sort=-committerdate | sed "s/.* //" | fzf --preview="git log --color {}"
        )
        command git checkout $selected_branch
    else
        command git checkout $argv[1]
    end
end
