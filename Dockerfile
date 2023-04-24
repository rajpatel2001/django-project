FROM python

# WORKDIR /app

COPY . .

RUN pip install django

RUN pip install -r requirements.txt

RUN python manage.py makemigrations

RUN python manage.py migrate

# CMD ["python", "manage.py", "runserver"]


CMD [ "bash", "-c", "python manage.py runserver 0.0.0.0:8000" ]