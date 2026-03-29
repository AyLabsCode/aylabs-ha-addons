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
