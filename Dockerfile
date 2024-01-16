#préparer l'environnement virtuel
FROM python:3.9
ENV APP_HOME /app
WORKDIR $APP_HOME 
#RUN apt-get update
#récupére les fichiers que j'ai sur mon pc réel et tu les mets sur le répertoire
COPY requirements .
#exécuter les commandes linux
RUN pip install -r requirements
COPY . .
CMD ["python3", "app.py"]