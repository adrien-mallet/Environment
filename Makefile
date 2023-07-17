
update_vim_bundle:
	@git subtree pull --prefix configurations/.vim/pack/plugins/start/vim-go https://github.com/fatih/vim-go.git master --squash
	@git subtree pull --prefix configurations/.vim/pack/plugins/start/fugitive https://tpope.io/vim/fugitive.git master --squash

helptags:
	@vim -u NONE -c "helptags ALL" -c q
