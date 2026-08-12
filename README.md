# Développement - Website Showcase Loutik

![Bannière Loutik](https://raw.githubusercontent.com/loutik/design-assets/main/banniere_loutik.png)

## Contexte

Ce dépôt contient la vitrine web statique de Loutik, une showcase professionnelle présentant les services, projets et partenaires. Le site est hébergé via Nginx dans un conteneur Docker, assurant une distribution rapide, sécurisée et reproductible de l'application web. L'objectif est de maintenir une présence numérique performante et facilement déployable en environnement de production.

---

## Structure du dépôt

L’organisation du dépôt suit la logique suivante :

```text
.
├── Dockerfile              # Image Docker basée sur nginx:1.30.4-alpine-slim
├── docker-compose.yaml     # Orchestration du service web (port 8080)
├── nginx.conf              # Configuration Nginx (routage, sécurité, cache)
├── public/                 # Racine du serveur web
│   ├── index.html          # Page d'accueil
│   ├── a-propos.html       # Page À propos
│   ├── prestations.html    # Page Services
│   ├── nos-partenaires.html # Page Partenaires
│   ├── 404.html            # Page erreur 404
│   ├── robots.txt          # Directives pour les crawlers
│   ├── sitemap.xml         # Sitemap XML pour SEO
│   ├── css/                # Feuilles de style
│   ├── js/                 # Scripts JavaScript
│   ├── images/             # Ressources images
│   ├── documents/          # Documents statiques
│   └── favicon/            # Favicons et manifeste
└── LICENSE.md              # Licence du projet
```

- **`Dockerfile`** : Définition de l'image Docker avec Nginx lightweight, permissions de sécurité renforcées (utilisateur 101:101)
- **`docker-compose.yaml`** : Configuration de déploiement du conteneur web sur le port 8080
- **`nginx.conf`** : Configuration Nginx incluant masquage de version, gestion des erreurs 404, redirection clean URLs, favicon routing
- **`public/`** : Contenu web statique servi par Nginx
- **`public/css/`** : Feuilles de style pour pages (index, a-propos, prestations, partenaires)
- **`public/js/`** : Scripts côté client
- **`public/images/`** : Ressources images et projets

---

## Utilisation de Website Showcase

### 1. Cloner le dépôt localement

```bash
git clone https://github.com/loutik/website-showcase.git
cd loutik_website-showcase
```

### 2. Construire et démarrer avec Docker Compose

```bash
docker-compose up -d
```

Le site sera accessible à `http://localhost:8080`.

### 3. Arrêter et nettoyer

```bash
docker-compose down
```

---

## Bonnes pratiques

1. **Sécurité Nginx** : Version masquée, utilisateur non-root (101:101), permissions restrictives sur fichiers et répertoires
2. **Optimisation web** : Clean URLs (masquage `.html`), trailing slash redirect, favicon routing optimisé
3. **SEO** : Sitemap XML généré, robots.txt configuré, gestion 404 personnalisée
4. **Reproductibilité** : Image Alpine slim pour taille réduite, version fixée de Nginx, configuration exacte en version control
5. **Accessibilité** : Favicon multi-résolution via manifeste, structure sémantique HTML

---

## 👨‍💻 Mainteneurs

- **Louis MEDO** | [LinkedIn](https://www.linkedin.com/in/louismedo/) | [Portfolio](https://louis.loutik.fr/) | [GitHub](https://github.com/FireToak) | [louis.medo@loutik.fr](mailto:louis.medo@loutik.fr)

---

<div align="center">
<br>
<small><i>Dernière mise à jour : 12 août 2026</i></small>
</div>