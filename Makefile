.PHONY: format lint typecheck test
format:
	poetry run ruff format . && poetry run ruff . --select I --fix-only
lint:
	poetry run ruff check src
lint-test:
	poetry run ruff check tests
typecheck:
	poetry run mypy src
typecheck-test:
	poetry run mypy tests
test:
	poetry run pytest tests