.PHONY: test deps

deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt

# pip install flake8
lint:
	flake8 hello_world test

test:
	PYTHONPATH=. py.test --verbose -s
