build_serve:
	make html	
	make serve

env:
	mkdir ./env ; python3 -m venv ./env && source ./env/bin/activate &&\
	( pip install -U sphinx ; pip install -U myst-parser )

quickstart:
	source ./env/bin/activate && sphinx-quickstart

html:
	rm -rf ./build ; source ./env/bin/activate && sphinx-build -b html ./source ./build

pdf:
	rm -rf ./pdf_build ; source ./env/bin/activate && sphinx-build -b pdf ./source ./pdf_build

serve: 
	source ./env/bin/activate && python3 -m http.server --directory ./build

clean_env:
	rm -r ./env 

clean:
	rm -r ./build