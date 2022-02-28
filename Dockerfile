FROM python:3.9.10-alpine
RUN mkdir /app
WORKDIR /app
COPY ./app /app
RUN pip install -r requirements.txt
EXPOSE 4000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "4000", "--reload"]