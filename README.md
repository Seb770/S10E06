# challenge-s10-E06

## Github action - Environment et Docker

Builder une image et l’uploader sur Docker hub :

- L’image doit être originale : cowsay non classique, version python, js, go …
- pourquoi pas un tuxsay avec un tux par défaut au lieu d’une vache.
- il y a aura une note artistique
- L’image doit être la plus petite possible.
- L’image doit être documentée automatiquement et utiliser le readme.md de votre dépôt.
- Doit être disponible dans deux versions :
  *une complète (tag full)*
  *une minimaliste (tag small)*

## Création d'une image Ubuntu avec un lolcat | fortune et cowsay

- Création d'un dockerfile avec les paramètres:
*FROM ubuntu*
*RUN apt update && apt -y install cowsay && apt -y install fortune-mod && apt -y install lolcat && rm -rf /var/lib/apt/lists/*
*COPY commands.sh /scripts/commands.sh*
*COPY text.txt /tmp/text.txt*
*RUN ["chmod", "+x", "/scripts/commands.sh"]*
*ENTRYPOINT ["/scripts/commands.sh"]*

- le commands.sh est simplement l'appel du lolcat avec le fichier text
*#!/bin/bash*
*/usr/games/lolcat --animate --speed 60 /tmp/text.txt*
- animate pour animer le texte et speed pour la vitesse
- On ne se sert pas du cowsay, mais il est tout à fait possible d'utiliser la commande:
*/usr/games/fortune | /usr/games/cowsay | /usr/games/lolcat*
- Le lolcat provient du dépot de [busyloop](https://github.com/busyloop/lolcat)
- Lien vers le hub docker: [wxipn/lolcat](https://hub.docker.com/r/wxipn/lolcat)

![lolcat](https://raw.githubusercontent.com/busyloop/lolcat/master/ass/nom.jpg "lolcat")
