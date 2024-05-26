SHELL := /bin/bash

# installation

uv:
	@python -m pip install -U uv

.PHONY: venv
venv: uv
	@./scripts/activate_venv.sh

lock: venv
	uv pip compile --generate-hashes requirements.in -o requirements.txt

install: lock
	uv pip sync --require-hashes --strict requirements.txt


# misc

format:
	ruff format --target-version=py312

audit:
	@pip-audit || true