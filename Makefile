build_serve:
	make html	
	make serve

env:
	make clean ; mkdir ./env ; python3 -m venv ./env && source ./env/bin/activate &&\
	( pip install sphinx ; pip install myst-parser ; pip install sphinx-book-theme )

quickstart:
	source ./env/bin/activate && sphinx-quickstart

html:
	source ./env/bin/activate && sphinx-build -b html ./source ./build

pdf:
	rm -rf ./pdf_build ; source ./env/bin/activate && sphinx-build -b pdf ./source ./pdf_build

serve: 
	source ./env/bin/activate && python3 -m http.server --directory ./build

clean_env:
	rm -r ./env 

clean:
	rm -r ./build

p:
	git add . && git commit && git push