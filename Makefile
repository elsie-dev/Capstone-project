

setup:
	# Create python virtualenv & source it
	# 
	python3 -m venv ~/.capstone
	source ~/.capstone/bin/activate

install:
	# This should be run from inside a virtualenv
	
	pip install --upgrade pip &&\
		pip install -r requirements.txt


lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=C0114,C0116,C0103,W1514,R1732,C0103,W1514,R1732  app/app.py

all: install lint test
