# Weather app API

## Getting Started

#### 1. Installation
After cloning the repository...
- ###### Create virtual environment: `make venv && source .venv/bin/activate`
- ###### Install python dependencies: `make install`
- ###### Install git pre-commit hooks: `pre-commit install`

> This project uses [uv](https://github.com/astral-sh/uv) (as a drop-in replacement to `pip`, `pip-tools`) to install version-pinned python dependencies. 

#### 2. Run
- `make run`: [uvicorn](https://www.uvicorn.org) ASGI development webserver with hot-reloading
- `make serve`: A more production-geared webserver 

#### 3. Test
- Work in progress

### Misc utilities

- `make format`: Lint, fix, and format project with [ruff](https://docs.astral.sh/ruff/)
- `make audit`: Scan project's python dependencies against the [PyPA Database](https://github.com/pypa/advisory-database)
