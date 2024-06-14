include $(PWD)/.env
default: pylint pytest

pylint:
	find . -iname "*.py" -not -path "./tests/*" | xargs -n1 -I {}  pylint --output-format=colorized {}; true

pytest:
	PYTHONDONTWRITEBYTECODE=1 pytest -v --color=yes

install:
	pip install -e .
	curl $(DATA_SOURCE) > ./olist/data/csv/olist.zip
	unzip -d ./olist/data/csv/ ./olist/data/csv/olist.zip
	rm ./olist/data/csv/olist.zip
