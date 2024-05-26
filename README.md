# Weather app API

## Getting Started

###### 1. Installation
Set up the project by cloning, then running `make install`. You may need to activate your virtual environment with `source .venv/bin/activate` for the dependencies to be installed. 

> This project uses [uv](https://github.com/astral-sh/uv) (as a drop-in replacement to `pip`, `pip-tools`) to install version-pinned python dependencies. 

###### 2. Run
- `make run`: [uvicorn](https://www.uvicorn.org) ASGI development webserver with hot-reloading
- `make serve`: A more production-geared webserver 

###### 3. Test
- Work in progress

##### Misc utilities

- `make format`: Format project with [ruff](https://docs.astral.sh/ruff/)
- `make audit`: Scan project's python dependencies against the [PyPA Database](https://github.com/pypa/advisory-database)
