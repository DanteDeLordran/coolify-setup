# Image not autobuildable friendly, it appears that Writerside image is 4.5Gb and is too big for it
# This version, although manual, is only 63.8 mb sized

FROM archlinux:base AS build

RUN pacman -Syu --noconfirm && pacman -S unzip --noconfirm

COPY webHelpCS2-all.zip .

RUN unzip -O UTF-8 webHelpCS2-all.zip -d unzipped-artifact

FROM httpd:alpine3.21 AS server

COPY --from=build unzipped-artifact/ /usr/local/apache2/htdocs/