
all: html

html:
	SRCDIR="." python jinja2-build.py

upload: all
	rsync -Hvax --exclude doc \
		html/./ anarchy.freedesktop.org:/srv/p11-glue.freedesktop.org/www/./

.PHONY: html
