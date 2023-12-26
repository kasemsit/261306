build:
	jupyter-book build --all ./

deploy:
	ghp-import -n -p -f _build/html
