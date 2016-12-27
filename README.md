# git
Run git

## Building
```console
$ docker build -t 4km3/git .
```
## Configuration
### Default values
```text
: "${GIT_WORK_TREE:=/workdir}"
: "${GIT_DIR:=/workdir/.git}"
```
## Sample usage
Go to the git repo working dir,
then run the container like this:
```console
$ docker run                    \
        -it                     \
        --rm                    \
        -v $PWD:/workdir        \
        4km3/git status
```

For your convenience, a bash function named 'git' is provided in `git.bash`:
```console
$ . git.bash
$ git status
...

```
