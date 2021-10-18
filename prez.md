---
marp: true
theme: default
#style: |
#  section {
#    color: white;
#    background-color: #223344;
#  }
#header: 'La domotique sans les pièges du cloud'
#footer: 'T@Znosaure - 20 Octobre 2021'

---

# <!-- fit --> La domotique sans les pièges du cloud

---

## Domotique

* Pour controller ![h:100px](images/devices/philips-hue-bulb.jpg) ![h:100px](images/devices/philips-hue-plug.jpg) ![h:75](images/devices/xiaomi-smart-plug.jpg) 

* Pour capter/mesurer ![h:75](images/devices/aqara-temperature-sensor.jpg) ![h:75](images/devices/aqara-motion-sensor.jpg) ![h:75](images/devices/sonoff-temperature-sensor.jpg) ![h:75](images/devices/sonoff-motion-sensor.jpg)

* Pour automatiser/sécuriser
  - fermer automatiquement les volets quand la nuit tombe
  - allumer/éteindre automatiquement les lampes d'un couloir quand un mouvement est détecté
  - avertir qu'une porte/fenêtre est ouverte quand je quitte la maison ...

---

## Probléme

![h:150](images/piege.jpg)

De nos jours, les vendeurs de solutions IoT proposent des produits qui utilisent systématiquement le cloud pour le traitement des données.
Cela représente évidement un risque pour nos données personelles.

---
Scénario classique

![height:400px](images/iot-cloud.drawio.svg)

---

## Solutions

Il existe des solutions open source pour atteindre le même résultat.
Cependant, cela necessite de recourir à l'auto hébergement.
_(mais c'est facile avec une raspberrypi ![h:32](images/logos/rpi.svg))_

---

Scénario en autohébergement

![height:400px](images/iot-selfhosted.drawio.svg)

---

## Cas concret

Piloter des objets zigbee à partir de logiciels opensource.

--- 

## Mise en oeuvre

![height:200px center](images/solution-auto-hebergee.drawio.svg)

* Radio : USB stick with zStack firmware (Texas Instruments CC2531)
* Bridge : Zigbee2MQTT, assure la liaison entre le réseau ZigBee et le serveur MQTT
* Bus MQTT : Mosquitto, une implémentation opensource d'un broker MQTT
* Serveur domotique : Homeassistant

---

![h:75](images/logos/zigbee.png)

_from wikipedia.org_
>ZigBee est un protocole de haut niveau permettant la communication d'équipements personnels ou domestiques équipés de petits émetteurs radios à faible consommation ; il est basé sur la norme IEEE 802.15.4 pour les réseaux à dimension personnelle (Wireless Personal Area Networks : WPAN).

---

![h:75](images/logos/zigbee.png)

### Périphériques

Ampoules ![h:125](images/devices/xiaomi-aqara-bulb.jpg)
Capteurs de température/humidité/pression ![h:100](images/devices/aqara-temperature-sensor.jpg)
Capteurs de mouvement/luminosité ![h:175](images/devices/xiaomi-aqara-motion-sensor.jpg)

---

![h:75](images/logos/zigbee.png)

### Passerelles

Zigate ![height:100px](images/gateways/zigate.jpg)

Clé USB générique CC2531 ![height:150px](images/gateways/cc2531.jpg) ou CC2652 ![height:150px](images/gateways/cc2652.jpg)

---

# ![h:48](images/logos/zigbee2mqtt.svg) Zigbee2mqtt

_Page d'accueil_
![height:450px](images/screenshots/zigbee2mqtt-home.png)

---

# ![h:48](images/logos/zigbee2mqtt.svg) Zigbee2mqtt

_Carte du réseau_
![height:450px](images/screenshots/zigbee2mqtt-networkmap.png)

---

# ![h:48](images/logos/zigbee2mqtt.svg) Zigbee2mqtt

_Tableau de bord_
![height:450px](images/screenshots/zigbee2mqtt-dashboard.png)

---

![h:64](images/logos/mqtt.svg)
## Définition

_from wikipedia.org_
>MQTT (Message Queuing Telemetry Transport) est un protocole de messagerie publish-subscribe basé sur le protocole TCP/IP.

_from mosquitto.org_
>The MQTT protocol provides a lightweight method of carrying out messaging using a publish/subscribe model. This makes it suitable for Internet of Things messaging such as with low power sensors or mobile devices such as phones, embedded computers or microcontrollers.

---

![h:64](images/logos/mqtt.svg)

## Implémentation opensource
![h:128](images/logos/mosquitto.png)

_from mosquitto.org_
>mosquitto — an MQTT broker

Il s'agit d'un simple démon tournant sous GNU/Linux.
Il est très facile à installer et configurer.
Il peut être intégré à homeassistant pour encore plus de facilité.

---

# ![h:48](images/logos/homeassistant.svg) Homeassistant

![height:450px](images/screenshots/homeassistant-demo.png) ![height:450px](images/screenshots/homeassistant-mobile.jpg)

---

# Liens

* Clé USB zigbee Slaesh : https://slae.sh/projects/cc2652
* Zigbee2mqtt : https://zigbee2mqtt
* MQTT : https://mqtt.org
* Mosquitto : https://mosquitto.org
* Homeassistant : https://homeassistant.io
* Clé USB zigbee Zigate : https://zigate.fr