SHELL := /bin/bash

# installation

uv:
	python -m pip install -U pip uv

venv: uv
	./scripts/activate_venv.sh

lock: venv
	uv pip compile --generate-hashes -o requirements-dev.txt --extra=dev pyproject.toml
	uv pip compile --generate-hashes -o requirements.txt pyproject.toml

install: lock
	uv pip sync --require-hashes --strict requirements-dev.txt

# running

run: venv
	uvicorn api.main:app --reload --reload-include './*.json' --log-level debug --port=8006;

serve: venv
	uvicorn api.main:app \
	--host=127.0.0.1 \
	--port=8006 \
	--workers 1 \
	--log-level debug;

# misc

lint:
	ruff check --fix

format: lint
	ruff format

audit:
	pip-audit || true

.PHONY: uv venv lock install run
.SILENT: uv venv audit