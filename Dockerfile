FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN python manage.py migrate

CMD ["python", "manage.py" ,"runserver"]

EXPOSE 8000:8000
~                     
