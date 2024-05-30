FROM python:3.11

WORKDIR /code
COPY . .

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -qq vim

RUN python -m pip install --upgrade pip && \
    python -m pip install --no-cache-dir --require-hashes -r ./requirements.txt

RUN chmod 777 /code/scripts/entrypoint.sh
ENTRYPOINT ["/code/scripts/entrypoint.sh"]