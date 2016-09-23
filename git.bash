git () {
	docker run			\
		--interactive		\
		--tty			\
		--rm			\
		--volume=$PWD:/workdir	\
		pancho/git "$@"
}
