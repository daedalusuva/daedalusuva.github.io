.PHONY: github dev html
THEME=daedalus
MSG=Rebuilt site blog

dev:
	hugo server --theme=$(THEME) --watch

html:
	rm -rf public/
	hugo --theme=$(THEME)

github:
	git add -A
	git commit -m "${MSG}"
	git push
