env:
	mkdir ./envs ; python3 -m venv ./envs && source ./envs/bin/activate && pip install -U sphinx

quickstart:
	source ./envs/bin/activate && sphinx-quickstart

html:
	rm -rf ./html_build ; source ./envs/bin/activate && sphinx-build -b html ./source ./html_build

pdf:
	rm -rf ./pdf_build ; source ./envs/bin/activate && sphinx-build -b pdf ./source ./pdf_build

serve: 
	source ./envs/bin/activate && python3 -m http.server --directory ./build