install:
	poetry install

test:
	poetry run pytest

test-coverage:
	poetry run pytest --cov=wcdma_soft --cov-report xml

lint:
	poetry run flake8 wcdma_soft

selfcheck:
	poetry check

check: selfcheck test lint

build: check
	poetry build

isort:
	poetry run isort wcdma_soft

.PHONY: install test lint selfcheck check build isort