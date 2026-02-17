# ⚡ Electricity Business

Electricity Business est une plateforme web permettant aux particuliers de **réserver ou mettre en location des bornes de recharge pour véhicules électriques (EV)**.  
Le projet est développé avec **Spring Boot 3, Java 21, Spring Security (JWT), Spring Data JPA, et SpringDoc (OpenAPI)**.

![Java](https://img.shields.io/badge/Java-21-orange)
![Spring Boot](https://img.shields.io/badge/SpringBoot-3.5-brightgreen)
![License](https://img.shields.io/badge/license-MIT-blue)

## 📑 Table des matières
1. [Technologies](#technologies)
2. [Prérequis](#prérequis)
3. [Installation](#installation)
4. [Configuration](#configuration)
5. [Lancer l'application](#lancer-lapplication)
6. [Fonctionnalités](#fonctionnalités)
7. [API Documentation](#api-documentation)
8. [Tests](#tests)
9. [Contribuer](#contribuer)
10. [License](#license)

## 🚀 Technologies
- Java 21
- Spring Boot 3.5.x
- Spring Security (JWT)
- Spring Data JPA (Hibernate)
- MySQL & H2 (pour les tests)
- Spring Mail (JavaMailSender)
- MapStruct
- OpenAPI (SpringDoc)

## 📦 Prérequis
- JDK 21
- Maven 3.9+
- MySQL (ou Docker pour lancer la DB)
- Un compte email pour l’envoi des emails de vérification de compte

## ⚙️ Installation
1. Cloner le projet :
   ```bash
   git clone https://github.com/ddubost6998/electricity-business-api
   cd electricity-business
   ```
2. Compiler le projet :
    ```bash
    mvn clean install
   ```
3. Cloner le projet :
    ```bash
    mvn spring-boot:run
   ```

## 🔧 Configuration
Modifier `src/main/resources/application.yml` selon vos besoins :

- **Base de données**
```yaml
spring:
  datasource:
    url: jdbc:mysql://localhost:3306/electricity_business
    username: ${DB_USER}
    password: ${DB_PASSWORD}
  jpa:
    hibernate:
      ddl-auto: update
    show-sql: true
```

- **SMTP (vérification email)**
```yaml
spring:
  mail:
    host: smtp.gmail.com
    port: 587
    username: ton.email@gmail.com
    password: ton_mot_de_passe_app
    properties:
      mail:
        smtp:
          auth: true
          starttls.enable: true
```

## ▶️ Lancer l'application
L'application sera disponible à l'adresse :
http://localhost:8080

L’API REST est documentée avec **Swagger/OpenAPI** :
http://localhost:8080/swagger-ui.html

## ✨ Fonctionnalités
- Inscription avec email de confirmation
- Connexion sécurisée avec JWT
- Gestion des utilisateurs (activation, rôles)
- Réservation et location de bornes de recharge
- Documentation API avec Swagger

## 📖 API Documentation
Quelques endpoints principaux :
- `POST /auth/register` → Inscription d’un utilisateur
- `GET /auth/verify?code=xxxx` → Validation email
- `POST /auth/login` → Connexion et récupération d’un JWT
- `GET /api/stations` → Liste des bornes (JWT requis)

## 🧪 Tests
Exécuter les tests :
```bash
  mvn test
```

## 🤝 Contribuer
Les contributions sont les bienvenues !
1. Forker le projet
2. Créer une branche (`git checkout -b feature/nouvelle-feature`)
3. Commit (`git commit -m 'Ajout nouvelle feature'`)
4. Push (`git push origin feature/nouvelle-feature`)
5. Ouvrir un Pull Request 

## 🐳 Déploiement avec Docker

L’application peut être lancée avec Docker Compose :

docker-compose up --build

Services :
- Backend Spring Boot
- MySQL
- phpMyAdmin

## 🔄 Intégration Continue

Un pipeline GitHub Actions :
- Compile le projet
- Exécute les tests
- Vérifie l’intégrité du build

## 📜 License
Ce projet est distribué sous la licence MIT.  

