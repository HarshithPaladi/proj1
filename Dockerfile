FROM python:3
RUN python3 -m pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN python3 -m pip install -r requirements.txt
COPY . .
CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]