## 1.0.63

### Corrections

- corriger la génération du changelog


## 1.0.62

### Corrections

- corriger toutes les erreurs ESLint pour faire passer la CI
- corriger toutes les erreurs ESLint pour faire passer la CI
- renommer Catégories en Étiquettes et respecter l'ordre Mealie
- étiquettes — renommer Catégories et respecter l'ordre Mealie


## 1.0.57

### Nouveautés

- add Dockerfile for development environment
- add login page and protect dashboard routes
- add auth domain layer with login use case
- update login form with username/password and use login use case
- add logout functionality with button in settings
- update login page title and description
- make route protection optional via VITE_PROTECTED_ROUTE env

### Corrections

- fetch-depth 0 pour git-cliff dans le job release
- ajouter les imports manquants (useNavigate, LogOut, logoutUseCase)


## 1.0.54

### Nouveautés

- avertissement config IA stockée localement (fixes #7)

### Corrections

- corriger les erreurs TypeScript bloquant le build Docker


## 1.0.51

### Nouveautés

- add OpenRouter as LLM provider
- add OpenRouter as LLM provider

### Corrections

- remove trmnl from docker compose


## 1.0.50

### Nouveautés

- ajout assets démo, badges, GIFs features et tab switcher vidéo/features
- vidéo restaurée + lightbox GIF sur les cartes features
- ajout suggestions.gif + séparation suggestions IA / assistant IA
- add Mistral and Perplexity providers, fix Gemini
- add planning button in recipe detail modal (#2)
- add planning button in recipe drawer (#2)
- icon-only buttons in drawer header on desktop
- replace native title with Radix tooltip in drawer header (#2)
- add arm64/v8 support for Raspberry Pi (#1)

### Corrections

- correction NavLink actif + embeds vidéo YouTube
- déplacer la vidéo HA en haut de la page doc
- readme
- lightbox GIF élargi à 1200px
- ajout proxy_ssl_server_name on pour support HTTPS upstream
- suppression MEALIE_INTERNAL_URL + logo settings HA
- readme
- replace leftovers copy button with smart dropdown (#5)
- reference issue fix Gemini/OpenAI proxy (#3)
- fix nginx proxy and CRLF issues


## 1.0.41

### Corrections

- dropdown positionné au tap + drag sur image iOS


## 1.0.40

### Corrections

- démarrer au jour actuel sur mobile
- layout mobile côte à côte pour midi et soir
- long press requis pour déclencher le drag sur mobile
- dropdown d'actions au tap sur mobile
- image seule dans la carte mobile (inclus dans fix 4)


## 1.0.39

### Nouveautés

- exposer les variables LLM dans window.__ENV__
- bannière et verrouillage visuel pour les champs LLM gérés via env


## 1.0.38

### Nouveautés

- config LLM via variables d'env + fix crypto.randomUUID + version dans paramètres

### Corrections

- inverser couleurs icône TRMNL en light mode


## 1.0.37

### Nouveautés

- ajouter image_url dans la réponse /planning
- planning 3 colonnes avec images
- refonte next-meal avec image <img> et colonnes ingrédients/étapes
- souligner "Aujourd'hui" dans le planning
- lien vers le repo HA addons dans la carte installation HA
- next-meal colonnes 40/60, sans limites, instance Ce midi/Ce soir
- refonte layout next-meal — image miniature en haut, max espace pour les étapes
- next-meal colonnes 33/66 (flex:1/flex:2)
- page TRMNL complète — screenshots, endpoints, guide installation
- footer AyLabs, lightbox images TRMNL, carte TRMNL à jour

### Corrections

- corriger condition empty (mot réservé Liquid)
- planning - classes item/meta TRMNL, jour plus gros, sans labels repas
- supprimer le trait vertical de la première colonne
- supprimer la date sous le label du jour
- scroll en haut de page à chaque changement de route
- fetch le détail de la recette pour avoir ingrédients et instructions
- agrandir les textes du template next-meal
- agrandir ingrédients/étapes 13px → 16px
- supprimer limite 2 lignes étapes, titre 30px → 24px


## 1.0.24



## 1.0.23



## 1.0.19



## 1.0.18



## 1.0.15



## 1.0.12

### Corrections

- fix(ha-addon): priorité ^~ sur /api/ pour éviter le court-circuit par la regex .webp

## 1.0.11

### Corrections

- fix(ha-addon): préfixer bonap.png (sidebar collapsed) avec basename ingress

## 1.0.10

### Corrections

- fix(ha-addon): corriger double /api/ dans le proxy nginx

## 1.0.9

### Corrections

- fix(ha-addon): préfixer les appels API avec le basename HA ingress

## 1.0.8

### Corrections

- fix(ci): déclencher ha-addon après docker.yml pour avoir la bonne version

## 1.0.7

### Nouveautés

- feat(website): créer le site vitrine statique de Bonap

## 1.0.6

### Corrections

- fix(ha-addon): ajouter Dockerfile, nginx.conf et run.sh manquants

## 1.0.5

### Corrections

- fix(ci): lire version depuis package.json, corriger path Dockerfile ha-addon

## 1.0.4

### Nouveautés

- feat(app): bump version

## 1.0.1

### Corrections

- fix(ha-addon): corriger la compatibilité HA ingress sans casser l'accès direct
