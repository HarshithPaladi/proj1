FROM python:3
WORKDIR /usr/src/
RUN python3 -m pip install --upgrade pip
COPY requirements.txt ./requirements.txt
RUN python3 -m pip install -r requirements.txt
COPY . ./
CMD [ "python3", "manage.py","migrate","&&","python3", "manage.py", "runserver", "0.0.0.0:8000"]
# CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]