#!/bin/sh

uvicorn api.main:app --workers=1 --log-level debug --port=8006;