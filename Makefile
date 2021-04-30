SHELL=/bin/bash

help:
	echo "You can start by 'make install' and then 'make run'."
	echo "Directory structure is standard."

install:
	python -m pip install -r requirements.txt

list_outdated:
	python -m pip list --outdated

run:
	python main.py

test:
	python ./tests/test_basic.py

documentation:
	python -m pip install -r ./docs/requirements.txt
	make -C ./docs html

doc:
	firefox ./docs/_build/html/index.html

