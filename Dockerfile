FROM python:3
RUN python3 -m pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN python -m pip install -r requirements.txt
COPY . .