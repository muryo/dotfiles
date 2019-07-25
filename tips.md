# For zsh

lla: used to show all files details including dotfiles
ll -S: used to get detailed file list sorted by size (in human readable numbers)

use double quoted version after capturing multiple lines of content to a bash
variable via $() or `` to get the original strings where all newlines, tabs,
spaces are preserved, otherwise, it'll all become a single line.

# For vim

How to wrap existing text at 80 characters in vim:
> :set textwidth=80
Then select the lines of text you want to re-format by *v*, then just type *gq*

# For git

git rm --cache: it could remove specified file from commit and without deleting it on disk

# For tmux

Ctrl-a + space would change the pane layout, keep typing it would change
the layout back and forth.

# For spacemacs

enable magit commit arguments (like --signoff) by default by c-x c-s

Refer to: https://emacs.stackexchange.com/questions/3893/how-can-i-make-verbose-flag-be-enabled-by-default-in-magit-commit-screen
