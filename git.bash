git () {
    sudo docker run                         \
        --interactive                       \
        --tty                               \
        --rm                                \
        --volume="$PWD":/workdir            \
        --net=host                          \
        --env=http_proxy="$http_proxy"      \
        --env=https_proxy="$https_proxy"    \
        pancho/git "$@"
}
