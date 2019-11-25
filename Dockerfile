FROM python:3

COPY requirements.txt /src/requirements.txt

RUN pip install --no-cache-dir -r /src/requirements.txt

COPY app.py /src/app.py
COPY buzz /src/buzz
COPY Dockerfile ./Dockerfile

CMD [ "python", "./src/app.py" ]