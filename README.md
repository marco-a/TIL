# CLI Cheatsheet

## General commands

- Switch directory: `cd <path>`
- Go back to previous directory: `cd -`
- List contents of directory: `ls`
- List contents of path: `ls <path>`

## GIT

- Init repo: `git init`
- Add file: `git add <filename>`
- Remove file: `git rm <filename>`
- Remove file without deleting it from disk: `git rm --cached <filename>`
- Show repo status: `git status`
- Commit changes: `git commit`
- Discard changes: `git reset --hard HEAD`

- Create branch: `git branch <name>`
- Switch branch: `git checkout <name>`
- Merge into current branch: `git merge --no-ff <name>`

- Nuke repo: `rm -r ./.git/`

## VIM

- Open file: `vim <filename>`

- Go to insert mode: `i`
- Erase character: `x`
- Erase line: `d$`
- Erase word: `dw` or `de`

- Discard changes: `:q!`
- Save changes: `:wq`
