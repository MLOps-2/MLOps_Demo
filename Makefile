setup:
	#python3 -m venv ~/.MLOps
	#source ~/.MLOps/bin/activate

install:
	pip install --upgrade pip &&\
	  pip install -r requirements.txt
	  
helloexample:
	python3 hello.py
	
test:
	python3 -m pytest -vv -cov=hello hello_test.py

lint:
	pylint --disable R,C hello.py