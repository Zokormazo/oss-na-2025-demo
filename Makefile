common:
	rm Containerfile || true
	cp Containerfile.tmpl Containerfile

devel: common
	echo "RUN echo \"Development build statements\"" >> Containerfile

production: common
	echo "RUN echo \"Production build statements\"" >> Containerfile
