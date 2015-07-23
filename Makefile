
.PHONY: test
test: pep8
	python runtests.py

.PHONY: pep8
pep8:
	@flake8 * --ignore=F403,F401 --exclude=requirements.txt,*.pyc,*.md,Makefile,LICENSE,*.in,*.rst,*.ini,docs,requirements_test.txt

.PHONY: clean-pyc clean-build clean
clean: clean-build clean-pyc clean-test

clean-build:
	rm -fr build/
	rm -fr dist/
	rm -fr *.egg-info
	rm -fr *.egg

clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

clean-test:
	rm -f .coverage
	rm -fr htmlcov/
