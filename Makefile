all: clean build test

clean:
	- rm -rf build/ dist/ *.egg-info/

init:
	- python3 -m pip install -r requirements.txt

build:
	- python3 setup.py sdist bdist_wheel

test:
	@ echo 'No tests configured'

upload-test:
	- twine upload -r testpypi dist/*

upload:
	- twine upload -r pypi dist/*
