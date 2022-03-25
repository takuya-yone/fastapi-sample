FROM python:3.9.10-alpine
RUN mkdir /work
WORKDIR /work
COPY . /work
RUN pip install -r ./app/requirements.txt
EXPOSE 4000
ENTRYPOINT uvicorn app.main:app --host 0.0.0.0 --port 4000 --reload