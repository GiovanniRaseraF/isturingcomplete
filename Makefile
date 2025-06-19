env:
	python3 -m venv ./envs && source ./envs/bin/activate && pip install -U sphinx

quickstart:
	source ./envs/bin/activate && sphinx-quickstart