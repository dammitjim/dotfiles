function gcb -d 'Copy the current git branch to the clipboard'
  git branch --show-current | pbcopy
end

