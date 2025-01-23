# Utilisation de l'image Python comme base
FROM python:3.12.5-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers requirements.txt et installer les dépendances
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le reste du projet
COPY . /app/

# Exposer le port 8000 pour l'application Django
EXPOSE 8000

# Commande pour lancer le serveur de développement Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
