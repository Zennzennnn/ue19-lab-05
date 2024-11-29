#  Spécifier l'image de base
FROM python:3.12.3


# pour ne pas avoir à spécifier le répertoire personnel de travail à chaque commande (par défaut /):
WORKDIR /home/user

# On copie ce qu'il y a dans app.py et requirements.txt dans le Dockerfile :
COPY app.py requirements.txt ./

# On fait appel à pip pour faire les installations
# L'option `--no-cache-dir` est utilisée pour éviter de stocker des fichiers temporaires inutiles, ce qui réduit la taille de l'image.

RUN pip install --no-cache-dir -r requirements.txt

# Pour démarrer l'application
CMD ["python", "app.py"]
