## 1.2.2

### Nouveautés

- add kiosk mode for tablet display (#88)
- improve kiosk mode UX and settings
- mode kiosk pour tablette (#88)
- simple meal creation, emoji illustrations, tag filter (#89)
- add emoji picker in recipe detail edit page
- emoji recette — stockage localStorage + lazy fetch sur erreur image
- affiche emoji (+ fallback 🍽️) dans planning et kiosk si pas d'image
- repas simples, emojis, filtre tag simple (#89)

### Corrections

- today button places current day in first column
- use named wildcard parameter for ollama-proxy route
- bff
- today button places current day in first column
- remove category tags, align "Pas d'image" style with "Rien de prévu"
- fix TS type error on getNextMealKey parameter
- prevent dialog close when clicking autocomplete suggestion
- show emoji when recipe.image is absent, not only on load error
- revert recipe.image check, use onError only
- remove default plate emoji, show designated emoji only
- fix autocomplete in dialog, simple recipe UX, delete image
- remove unused CookingPot import, add portalContainer to useEffect deps
- add missing cn import in RecipeFormDialog
- fix selectors and fixture keys in simple-recipe and kiosk tests
- fix button selector and image mock in e2e tests
- handle GET mealplans in last simple-recipe test mock
- mock PUT (not PATCH) for recipe update in simple-recipe test
- use npm install instead of npm ci in ha-addon Dockerfile


## 1.2.0

### Nouveautés

- add global ErrorBoundary to prevent white-screen crashes
- timeout + retry avec backoff exponentiel sur MealieApiClient

### Corrections

- disable react-hooks/set-state-in-effect (v7 new rule, patterns are intentional)
- disable react-hooks/refs (v7 new rule, ref sync during render is intentional)
- remplace Github (supprimé dans lucide-react v1) par SVG inline


## 1.1.11

### Nouveautés

- export PDF / impression de la liste de courses

### Corrections

- retour visuel immédiat, delete mobile et fruits/légumes
- masquer le bouton IA et afficher en 3 colonnes
- 3 colonnes par catégorie, retour à la ligne entre catégories
- iframe temporaire pour éviter les conflits e2e
- réduire les marges du PDF (2cm → 0.5cm/0.8cm)
- retour visuel, delete mobile et fruits/légumes


## 1.1.10

### Corrections

- nutrition estimate 405, servings sync and ollama-proxy wildcard
- nutrition estimate 405, servings sync and ollama-proxy wildcard


## 1.1.9

### Corrections

- affiche les images sans dépendre du champ recipe.image
- affiche les images sans dépendre du champ recipe.image


## 1.1.8

### Nouveautés

- sync des parametres multi-origines + fix proxy Ollama
- sync des parametres multi-origines + fix proxy Ollama
- afficher le jour de la semaine associé à chaque recette dans la liste de courses
- remplace le sélecteur de jours par un mode sélection inline sur les cartes repas
- ajoute le support PWA (manifest + meta tags)
- catalogue d'habituels par défaut avec catégories collapsibles
- catalogue par défaut habituels via modale

### Corrections

- corrections portions, images, durees et boucle infinie calorie-tag
- compression automatique des images avant upload vers Mealie
- bff
- ajoute le rendu des images dans MarkdownContent
- supporte le HTML brut dans les instructions (rehype-raw)
- supprime DialogDescription inutilisé + corrige test Playwright
- bouton Aujourd'hui centre sur la date du jour en vue 3j/5j
- icône ShoppingCart pour la section liste de courses
- corrige le rewrite du proxy /api/bonap vers le BFF
- bugs & améliorations (PWA, sélection panier, images, upload)


## 1.1.6

### Nouveautés

- reorder sections and collapse all by default
- add leftover copy button on mobile view
- move AI categorize button to progress bar
- mobile leftover copy & AI label button in progress bar

### Corrections

- include note-type meals in leftover copy
- fix mobile leftover copy button always unresponsive
- fix leftover select silently ignored on mobile


## 1.1.5

### Nouveautés

- CIQUAL nutrition mapping and nutrition save fixes
- servings from household size + cooking mode scaling
- add feature flags for nutrition, servings and auto-planning

### Corrections

- restore missing files and recipeYield typing for docker build
- expose explore page in desktop and mobile navigation
- restore ollama model fetch and household size controls
- enable marmiton proxy in standard docker and dev runtime
- harden marmiton image import and prevent duplicate imports
- enable marmiton proxy and align search import fallback
- resolve lint whitespace and stabilize planning e2e fixture dates
- exclude breakfast from auto-plan slots to match AutoPlanSlot type
- improve auto-plan diversity with extended recipe pool and fix nutrition normalization per serving
- allow underscore-prefixed unused args in ESLint config
- rétablir Marmiton (standard + addon HA), fiabiliser import image et éviter les doublons
- hide missing servings warning when servings feature is disabled
- remove unused Users import


## 1.1.1

### Nouveautés

- add day picker for shopping cart generation
- show next 14 days in shopping cart day picker
- add breakfast support with toggle in settings
- render markdown in instructions, description and cooking mode

### Corrections

- display day picker in 2-column grid to reduce height
- uncheck days without meals by default in day picker
- wrap ReactMarkdown in div instead of using className prop
- show recipe name overlay on mobile meal cards
- remove unused MealTypeKey, add missing useEffect dep
- use dynamic dates in planning fixtures
- bulk issues #36 #37 #40 #41


## 1.0.68

### Nouveautés

- add plan button on never-planned recipes
- add per-meal note via Mealie text field
- add per-meal note

### Corrections

- carry note over when drag & dropping a meal


## 1.0.66

### Nouveautés

- ajouter l'aide à la configuration LLM dans les paramètres
- ajouter les liens dans la section À propos
- sections collapsibles + À propos déplacé en dernier
- aide à la configuration LLM directement dans les paramètres

### Corrections

- désactiver le fetch dynamique pour Google Gemini


## 1.0.65

### Nouveautés

- ajouter la section Fonctionnalités dans la sidebar et les routes
- ajouter les 7 pages de documentation des fonctionnalités
- ajouter la section Fonctionnalités dans la documentation
- fetch dynamique des modèles après validation de la clé API
- avertissement si LLM non configuré dans l'assistant et les suggestions
- documenter l'obtention des clés API pour chaque provider LLM
- documentation clés API pour chaque provider LLM

### Corrections

- mettre à jour les modèles Gemini vers la gamme 2.5
- filtrer les modèles Gemini dépréciés/versionnés
- préciser le sélecteur du lien Paramètres en mode strict
- modèles Gemini 2.5 + fetch dynamique des modèles via API


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
