---
marp: true
theme: default
#style: |
#  section {
#    color: white;
#    background-color: #223344;
#  }
header: 'La domotique sans les pièges du cloud'
footer: 'T@Znosaure - 20 Octobre 2021'

---

# La domotique sans les pièges du cloud

---

## Problématique

De nos jours, les vendeurs de solutions IoT proposent des produits qui utilisent systématiquement le cloud pour le traitement des données.
Cela représente évidement un risque pour vos données personelles.

---
Scénario classique

![height:400px](images/iot-cloud.drawio.svg)

---

## Solutions

Il existe des solutions open source pour atteindre le même résultat

---
Scénario en autohébergement

![height:400px](images/iot-selfhosted.drawio.svg)

---

## Solution détaillée

![height:200px center](images/solution-auto-hebergee.drawio.svg)

* Homeassistant : le serveur domotique
* MQTT : un bus d'échange de message simple conçu pour l'IoT
* Zigbee2MQTT : un bridge entre le réseau ZigBee et le serveur MQTT
* USB stick with zStack firmware

---

# Homeassistant

![height:450px](images/screenshots/homeassistant-demo.png)

---

# Zigbee2mqtt

_Page d'accueil_
![height:450px](images/screenshots/zigbee2mqtt-home.png)

---

# Zigbee2mqtt

_Tableau de bord_
![height:450px](images/screenshots/zigbee2mqtt-dashboard.png)

---

# Zigbee2mqtt

_Carte du réseau_
![height:450px](images/screenshots/zigbee2mqtt-networkmap.png)

---

# MQTT
## Définition

_from wikipedia.org_
>MQTT (Message Queuing Telemetry Transport) est un protocole de messagerie publish-subscribe basé sur le protocole TCP/IP.

_from mosquitto.org_
>The MQTT protocol provides a lightweight method of carrying out messaging using a publish/subscribe model. This makes it suitable for Internet of Things messaging such as with low power sensors or mobile devices such as phones, embedded computers or microcontrollers.

---

# MQTT
## Implémentation opensource
### Mosquitto

_from mosquitto.org_
>mosquitto — an MQTT broker

---

# ZigBee

_from wikipedia.org_
>ZigBee est un protocole de haut niveau permettant la communication d'équipements personnels ou domestiques équipés de petits émetteurs radios à faible consommation ; il est basé sur la norme IEEE 802.15.4 pour les réseaux à dimension personnelle (Wireless Personal Area Networks : WPAN).

---

# Liens

* Homeassistant : https://homeassistant.io
* Mosquitto : https://mosquitto.org
* Zigbee2mqtt : https://zigbee2mqtt