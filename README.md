# TIL

20.02.2017 - Get PID from a port: `lsof -n -i :PORT | grep LISTEN` for example to get the process that is using port 80: `lsof -n -i :80 | grep LISTEN`.

01.03.2017 - `tput` is a useful command to interact with a TTY:
  - `tput cols` get number of columns.
  - `tput lines` get number of lines.
  - `tput sc` save cursor position.
  - `tput rc` restore cursor position.
  - `tput colors` get number of supported colors.
 
01.03.2017 - When the dimensions of the terminal change a `SIGWINCH` signal is sent.

04.03.2017 - PHP's `microtime` and `time` do not return a monotonic timestamp. This is bad for timing because the returned timestamp is dependent on the user's time setting.

15.06.2017 - Use `CTRL+Z` to pause execution of a long command. To resume simply enter `%`.

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

- Show diff between two branches or commits: `git diff <1> <2>`.

- Nuke repo: `rm -r ./.git/`

## VIM

- Open file: `vim <filename>`

- Go to insert mode: `i`
- Erase character: `x`
- Erase until end of line: `d$`
- Erase word: `dw` or `de`

- Discard changes: `:q!`
- Save changes: `:wq`
