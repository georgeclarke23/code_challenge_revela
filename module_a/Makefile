SRC_DIR := ./src
TEST_DIR := ./tests

-include .env
export

help:
	@echo  'Options:'
	@echo  '  clean            - Clean auxiliary files.'
	@echo  '  code-checks      - Performs a precommit code checks'
	@echo  '  docker/up        - Packages application and runs the application on docker locally'
	@echo  '  docker/down      - Stop and delete local docker container'
	@echo  '  fmt              - Format code'
	@echo  '  lint             - lints code'
	@echo  '  run              - run application'
	@echo  '  setup            - setup user environment and install dependencies'
	@echo  '  test/unit        - Run unit test'
	@echo  '  test/integration - Run integration test'
	@echo  '  test             - Run unit and integration test'

clean:
	rm -rf $(DEPS_DIR) dist/ libs/ .pytest_cache .mypy_cache *.egg-info .coverage* derby.log ./temp/spark*
	find . -type f -name '*.py[co]' -delete -o -type d -name __pycache__ -delete

code-checks:
	poetry run pre-commit run --all-files

docker/down: clean
	docker-compose down

docker/up: clean
	docker compose up

fmt:
	poetry run black --config=pyproject.toml $(TEST_DIR) $(SRC_DIR)
	poetry run isort --settings-file=pyproject.toml $(TEST_DIR) $(SRC_DIR)

lint:
	poetry run flake8 --config=.flake8 $(SRC_DIR)
	poetry run black --config=pyproject.toml --check --diff $(SRC_DIR)
	poetry run isort --settings-file=pyproject.toml --check $(SRC_DIR)
	poetry run mypy --config=pyproject.toml $(SRC_DIR)

run:
	poetry run python3 main.py

setup:
	pip install --upgrade pip setuptools wheel poetry
	poetry config virtualenvs.in-project true --local
	poetry install

test/unit:
	poetry run pytest -vv --cov=. --cov-report=xml -W ignore::DeprecationWarning $(TEST_DIR)/unit/*

test/integration:
	poetry run pytest -vv --cov=. --cov-report=xml -W ignore::DeprecationWarning $(TEST_DIR)/integration/*

test: test/unit
