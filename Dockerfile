# Wybierz bazowy obraz z Node.js
FROM node:14

# Ustaw katalog roboczy
WORKDIR /app

# Skopiuj plik package.json i package-lock.json
COPY package*.json ./

# Zainstaluj zależności
RUN npm install

# Skopiuj resztę kodu aplikacji
COPY . .

# Ustaw port na 3000 (lub inny port na którym działa twoja aplikacja)
EXPOSE 3000

# Uruchom aplikację
CMD ["node", "app.js"]
