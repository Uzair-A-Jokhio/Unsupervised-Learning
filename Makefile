install:
		pip install --upgrade pip &&\
			pip install -r requirements.txt
test:
		python -m pytest -vv --cov=wikiphrases --cov=nlplogic test_corenlp.py
format:
		black *.py 
lint:
		pylint --disable=R,C *.py
venv:
		python -m venv .venv
all: install lint test format